/*********************                                                        */
/*! \file model_builder.h
 ** \verbatim
 ** Original author: ajreynol
 ** Major contributors: mdeters
 ** Minor contributors (to current version): none
 ** This file is part of the CVC4 prototype.
 ** Copyright (c) 2009-2012  New York University and The University of Iowa
 ** See the file COPYING in the top-level source directory for licensing
 ** information.\endverbatim
 **
 ** \brief Model Builder class
 **/

#include "cvc4_private.h"

#ifndef __CVC4__THEORY__QUANTIFIERS__MODEL_BUILDER_H
#define __CVC4__THEORY__QUANTIFIERS__MODEL_BUILDER_H

#include "theory/quantifiers_engine.h"
#include "theory/model.h"
#include "theory/uf/theory_uf_model.h"

namespace CVC4 {
namespace theory {

/** Attribute true for nodes that should not be used when considered for inst-gen basis */
struct BasisNoMatchAttributeId {};
/** use the special for boolean flag */
typedef expr::Attribute< BasisNoMatchAttributeId,
                         bool,
                         expr::attr::NullCleanupStrategy,
                         true // context dependent
                       > BasisNoMatchAttribute;

class TermArgBasisTrie {
private:
  bool addTerm2( QuantifiersEngine* qe, Node n, int argIndex );
public:
  /** the data */
  std::map< Node, TermArgBasisTrie > d_data;
public:
  bool addTerm( QuantifiersEngine* qe, Node n ) { return addTerm2( qe, n, 0 ); }
};/* class TermArgBasisTrie */


namespace quantifiers {

/** model builder class
  *  This class is capable of building candidate models based on the current quantified formulas
  *  that are asserted.  Use:
  *  (1) call ModelEngineBuilder::buildModel( m, false );, where m is a FirstOrderModel
  *  (2) if candidate model is determined to be a real model,
           then call ModelEngineBuilder::buildModel( m, true );
  */
class ModelEngineBuilder : public TheoryEngineModelBuilder
{
protected:
  //quantifiers engine
  QuantifiersEngine* d_qe;
  //the model we are working with
  context::CDO< FirstOrderModel* > d_curr_model;
  //map from operators to model preference data
  std::map< Node, uf::UfModelPreferenceData > d_uf_prefs;
  //built model uf
  std::map< Node, bool > d_uf_model_constructed;
  /** process build model */
  virtual void processBuildModel( TheoryModel* m, bool fullModel );
protected:
  //reset
  virtual void reset( FirstOrderModel* fm ) = 0;
  //initialize quantifiers, return number of lemmas produced, fp is the parent of quantifier f
  virtual int initializeQuantifier( Node f, Node fp );
  //analyze model
  virtual void analyzeModel( FirstOrderModel* fm );
  //analyze quantifiers
  virtual void analyzeQuantifier( FirstOrderModel* fm, Node f ) = 0;
  //do InstGen techniques for quantifier, return number of lemmas produced
  virtual int doInstGen( FirstOrderModel* fm, Node f ) = 0;
  //theory-specific build models
  virtual void constructModelUf( FirstOrderModel* fm, Node op ) = 0;
protected:
  //map from quantifiers to if are SAT
  std::map< Node, bool > d_quant_sat;
  //which quantifiers have been initialized
  std::map< Node, bool > d_quant_basis_match_added;
  //map from quantifiers to model basis match
  std::map< Node, InstMatch > d_quant_basis_match;
public:
  ModelEngineBuilder( context::Context* c, QuantifiersEngine* qe );
  virtual ~ModelEngineBuilder(){}
  /** number of lemmas generated while building model */
  int d_addedLemmas;
  //consider axioms
  bool d_considerAxioms;
  // set effort
  void setEffort( int effort );
protected:  //helper functions
  /** term has constant definition */
  bool hasConstantDefinition( Node n );
public:
  //options
  virtual bool optUseModel();
  virtual bool optInstGen();
  virtual bool optOneQuantPerRoundInstGen();
  /** statistics class */
  class Statistics {
  public:
    IntStat d_pre_sat_quant;
    IntStat d_pre_nsat_quant;
    IntStat d_num_quants_init;
    IntStat d_num_quants_init_success;
    Statistics();
    ~Statistics();
  };
  Statistics d_statistics;
  // is quantifier active?
  bool isQuantifierActive( Node f );
  // is term active
  bool isTermActive( Node n );
  // is term selected
  virtual bool isTermSelected( Node n ) { return false; }
};/* class ModelEngineBuilder */


class ModelEngineBuilderDefault : public ModelEngineBuilder
{
private:    ///information for (old) InstGen
  //map from quantifiers to their selection literals
  std::map< Node, Node > d_quant_selection_lit;
  std::map< Node, std::vector< Node > > d_quant_selection_lit_candidates;
  //map from quantifiers to their selection literal terms
  std::map< Node, std::vector< Node > > d_quant_selection_lit_terms;
  //map from terms to the selection literals they exist in
  std::map< Node, Node > d_term_selection_lit;
  //map from operators to terms that appear in selection literals
  std::map< Node, std::vector< Node > > d_op_selection_terms;
protected:
  //reset
  void reset( FirstOrderModel* fm );
  //analyze quantifier
  void analyzeQuantifier( FirstOrderModel* fm, Node f );
  //do InstGen techniques for quantifier, return number of lemmas produced
  int doInstGen( FirstOrderModel* fm, Node f );
  //theory-specific build models
  void constructModelUf( FirstOrderModel* fm, Node op );
public:
  ModelEngineBuilderDefault( context::Context* c, QuantifiersEngine* qe ) : ModelEngineBuilder( c, qe ){}
  ~ModelEngineBuilderDefault(){}
  //options
  bool optReconsiderFuncConstants() { return true; }
};

class ModelEngineBuilderInstGen : public ModelEngineBuilder
{
private:    ///information for (new) InstGen
  //map from quantifiers to their selection literals
  std::map< Node, Node > d_quant_selection_formula;
  //map of terms that are selected
  std::map< Node, bool > d_term_selected;
  //a collection of InstMatch structures produced for each quantifier
  std::map< Node, inst::InstMatchTrie > d_sub_quant_inst_trie;
  //children quantifiers for each quantifier, each is an instance
  std::map< Node, std::vector< Node > > d_sub_quants;
  //instances of each partial instantiation with respect to the root
  std::map< Node, InstMatch > d_sub_quant_inst;
  //*root* parent of each partial instantiation
  std::map< Node, Node > d_sub_quant_parent;
protected:
  //reset
  void reset( FirstOrderModel* fm );
  //initialize quantifiers, return number of lemmas produced, fp is the parent of quantifier f
  int initializeQuantifier( Node f, Node fp );
  //analyze quantifier
  void analyzeQuantifier( FirstOrderModel* fm, Node f );
  //do InstGen techniques for quantifier, return number of lemmas produced
  int doInstGen( FirstOrderModel* fm, Node f );
  //theory-specific build models
  void constructModelUf( FirstOrderModel* fm, Node op );
private:
  //get selection formula for quantifier body
  Node getSelectionFormula( Node fn, Node n, bool polarity, int useOption );
  //get a heuristic score for a selection formula
  int getSelectionFormulaScore( Node fn );
  //set selected terms in term
  void setSelectedTerms( Node s );
  //is usable selection literal
  bool isUsableSelectionLiteral( Node n, int useOption );
  //get parent quantifier match
  void getParentQuantifierMatch( InstMatch& mp, Node fp, InstMatch& m, Node f );
public:
  ModelEngineBuilderInstGen( context::Context* c, QuantifiersEngine* qe ) : ModelEngineBuilder( c, qe ){}
  ~ModelEngineBuilderInstGen(){}
  // is term selected
  bool isTermSelected( Node n ) { return d_term_selected.find( n )!=d_term_selected.end(); }
};

}/* CVC4::theory::quantifiers namespace */
}/* CVC4::theory namespace */
}/* CVC4 namespace */

#endif /* __CVC4__THEORY__QUANTIFIERS__MODEL_BUILDER_H */
