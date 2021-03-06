(benchmark fuzzsmt
:logic QF_LRA
:status sat
:extrafuns ((v0 Real))
:formula
(let (?e1 12)
(let (?e2 1)
(let (?e3 (~ v0))
(let (?e4 (+ v0 v0))
(let (?e5 (/ ?e1 ?e1))
(let (?e6 (+ ?e4 ?e3))
(let (?e7 (* ?e6 ?e1))
(let (?e8 (- ?e3 ?e6))
(let (?e9 (~ ?e8))
(let (?e10 (+ ?e8 ?e5))
(let (?e11 (/ ?e2 (~ ?e1)))
(flet ($e12 (> ?e7 ?e9))
(flet ($e13 (< ?e4 ?e6))
(flet ($e14 (distinct ?e9 ?e3))
(flet ($e15 (<= ?e5 ?e8))
(flet ($e16 (<= ?e8 ?e8))
(flet ($e17 (distinct ?e5 v0))
(flet ($e18 (>= ?e10 v0))
(flet ($e19 (> ?e10 ?e7))
(flet ($e20 (distinct ?e7 ?e9))
(flet ($e21 (<= ?e6 ?e3))
(flet ($e22 (<= ?e11 ?e4))
(let (?e23 (ite $e12 ?e3 ?e4))
(let (?e24 (ite $e19 ?e3 ?e11))
(let (?e25 (ite $e20 v0 ?e5))
(let (?e26 (ite $e18 ?e8 v0))
(let (?e27 (ite $e19 ?e7 ?e8))
(let (?e28 (ite $e20 ?e10 v0))
(let (?e29 (ite $e13 ?e9 ?e3))
(let (?e30 (ite $e20 ?e6 ?e6))
(let (?e31 (ite $e20 ?e8 ?e24))
(let (?e32 (ite $e21 ?e10 ?e4))
(let (?e33 (ite $e18 ?e5 ?e10))
(let (?e34 (ite $e16 ?e27 ?e5))
(let (?e35 (ite $e13 ?e5 ?e26))
(let (?e36 (ite $e19 ?e7 ?e6))
(let (?e37 (ite $e15 ?e30 ?e31))
(let (?e38 (ite $e17 ?e28 ?e37))
(let (?e39 (ite $e22 ?e28 ?e9))
(let (?e40 (ite $e14 ?e31 ?e28))
(flet ($e41 (<= ?e4 ?e34))
(flet ($e42 (<= ?e3 ?e3))
(flet ($e43 (<= ?e31 ?e37))
(flet ($e44 (distinct ?e28 ?e36))
(flet ($e45 (>= v0 ?e26))
(flet ($e46 (= ?e24 ?e30))
(flet ($e47 (< ?e38 ?e32))
(flet ($e48 (> ?e6 ?e29))
(flet ($e49 (<= ?e25 ?e25))
(flet ($e50 (> ?e30 ?e30))
(flet ($e51 (> ?e11 v0))
(flet ($e52 (<= ?e10 ?e31))
(flet ($e53 (>= ?e28 ?e36))
(flet ($e54 (>= v0 ?e33))
(flet ($e55 (<= ?e33 ?e26))
(flet ($e56 (distinct ?e37 ?e5))
(flet ($e57 (distinct ?e10 ?e39))
(flet ($e58 (> ?e8 ?e39))
(flet ($e59 (< ?e24 ?e34))
(flet ($e60 (<= v0 ?e25))
(flet ($e61 (< ?e33 ?e31))
(flet ($e62 (distinct ?e7 ?e25))
(flet ($e63 (< ?e34 ?e4))
(flet ($e64 (= ?e27 ?e37))
(flet ($e65 (> ?e5 ?e30))
(flet ($e66 (>= ?e11 ?e8))
(flet ($e67 (> ?e6 ?e31))
(flet ($e68 (<= ?e4 ?e3))
(flet ($e69 (> ?e9 ?e37))
(flet ($e70 (< ?e25 ?e6))
(flet ($e71 (< ?e40 ?e34))
(flet ($e72 (< ?e9 ?e29))
(flet ($e73 (< ?e8 ?e35))
(flet ($e74 (distinct ?e25 ?e5))
(flet ($e75 (>= ?e8 ?e7))
(flet ($e76 (<= ?e38 ?e37))
(flet ($e77 (> ?e5 ?e39))
(flet ($e78 (>= ?e34 v0))
(flet ($e79 (>= ?e11 ?e5))
(flet ($e80 (>= ?e40 ?e3))
(flet ($e81 (= ?e23 ?e29))
(flet ($e82 (implies $e52 $e15))
(flet ($e83 (implies $e16 $e75))
(flet ($e84 (or $e22 $e59))
(flet ($e85 (or $e66 $e63))
(flet ($e86 (xor $e78 $e43))
(flet ($e87 (or $e73 $e71))
(flet ($e88 (if_then_else $e18 $e80 $e55))
(flet ($e89 (xor $e83 $e54))
(flet ($e90 (if_then_else $e42 $e88 $e42))
(flet ($e91 (not $e72))
(flet ($e92 (or $e49 $e68))
(flet ($e93 (and $e84 $e51))
(flet ($e94 (iff $e70 $e19))
(flet ($e95 (not $e93))
(flet ($e96 (implies $e82 $e13))
(flet ($e97 (iff $e69 $e64))
(flet ($e98 (or $e87 $e76))
(flet ($e99 (if_then_else $e94 $e20 $e96))
(flet ($e100 (implies $e46 $e98))
(flet ($e101 (or $e61 $e90))
(flet ($e102 (or $e92 $e74))
(flet ($e103 (implies $e97 $e62))
(flet ($e104 (and $e89 $e77))
(flet ($e105 (iff $e48 $e67))
(flet ($e106 (if_then_else $e14 $e14 $e103))
(flet ($e107 (xor $e58 $e102))
(flet ($e108 (implies $e99 $e86))
(flet ($e109 (or $e57 $e21))
(flet ($e110 (implies $e12 $e108))
(flet ($e111 (and $e17 $e101))
(flet ($e112 (or $e107 $e81))
(flet ($e113 (and $e44 $e44))
(flet ($e114 (iff $e41 $e111))
(flet ($e115 (implies $e60 $e56))
(flet ($e116 (and $e79 $e115))
(flet ($e117 (or $e114 $e53))
(flet ($e118 (xor $e110 $e95))
(flet ($e119 (xor $e104 $e105))
(flet ($e120 (and $e117 $e85))
(flet ($e121 (not $e50))
(flet ($e122 (if_then_else $e120 $e47 $e119))
(flet ($e123 (if_then_else $e112 $e100 $e91))
(flet ($e124 (and $e45 $e121))
(flet ($e125 (implies $e118 $e123))
(flet ($e126 (xor $e106 $e113))
(flet ($e127 (xor $e122 $e65))
(flet ($e128 (implies $e127 $e116))
(flet ($e129 (not $e125))
(flet ($e130 (iff $e128 $e124))
(flet ($e131 (and $e109 $e109))
(flet ($e132 (and $e129 $e129))
(flet ($e133 (xor $e131 $e130))
(flet ($e134 (iff $e126 $e133))
(flet ($e135 (implies $e132 $e132))
(flet ($e136 (or $e134 $e134))
(flet ($e137 (implies $e136 $e136))
(flet ($e138 (or $e135 $e135))
(flet ($e139 (implies $e138 $e137))
$e139
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

