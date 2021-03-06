(benchmark fuzzsmt
:logic QF_LIA
:status sat
:extrafuns ((v0 Int))
:formula
(let (?e1 5)
(let (?e2 5)
(let (?e3 (- v0 v0))
(let (?e4 (~ ?e3))
(let (?e5 (~ ?e4))
(let (?e6 (+ ?e3 v0))
(let (?e7 (+ ?e4 v0))
(let (?e8 (~ ?e5))
(let (?e9 (- ?e4 ?e8))
(let (?e10 (~ ?e8))
(let (?e11 (+ ?e7 ?e4))
(let (?e12 (~ ?e10))
(let (?e13 (+ ?e4 ?e9))
(let (?e14 (- ?e7 ?e10))
(let (?e15 (~ ?e8))
(let (?e16 (* ?e10 (~ ?e2)))
(let (?e17 (+ ?e15 ?e14))
(let (?e18 (~ ?e16))
(let (?e19 (+ ?e14 ?e6))
(let (?e20 (~ ?e4))
(let (?e21 (* ?e20 (~ ?e2)))
(let (?e22 (* ?e6 (~ ?e1)))
(flet ($e23 (>= ?e17 ?e6))
(flet ($e24 (distinct ?e12 ?e8))
(flet ($e25 (< ?e21 ?e19))
(flet ($e26 (< ?e6 ?e17))
(flet ($e27 (<= ?e7 ?e11))
(flet ($e28 (distinct ?e10 ?e15))
(flet ($e29 (< v0 ?e11))
(flet ($e30 (< ?e7 ?e8))
(flet ($e31 (< ?e13 ?e12))
(flet ($e32 (< ?e15 ?e6))
(flet ($e33 (>= ?e6 ?e17))
(flet ($e34 (<= ?e4 ?e9))
(flet ($e35 (distinct ?e7 ?e12))
(flet ($e36 (> ?e7 ?e11))
(flet ($e37 (distinct ?e11 ?e19))
(flet ($e38 (< ?e14 ?e19))
(flet ($e39 (< ?e9 ?e12))
(flet ($e40 (<= ?e17 ?e5))
(flet ($e41 (= ?e14 ?e15))
(flet ($e42 (> ?e13 ?e18))
(flet ($e43 (<= ?e5 ?e19))
(flet ($e44 (distinct ?e20 ?e7))
(flet ($e45 (< ?e11 ?e18))
(flet ($e46 (> ?e16 ?e13))
(flet ($e47 (= ?e19 ?e5))
(flet ($e48 (> ?e14 ?e22))
(flet ($e49 (distinct ?e3 v0))
(let (?e50 (ite $e30 ?e8 ?e12))
(let (?e51 (ite $e49 ?e20 ?e21))
(let (?e52 (ite $e31 ?e22 ?e16))
(let (?e53 (ite $e27 ?e10 ?e22))
(let (?e54 (ite $e42 ?e17 ?e50))
(let (?e55 (ite $e48 v0 ?e50))
(let (?e56 (ite $e31 ?e18 ?e51))
(let (?e57 (ite $e25 ?e14 ?e55))
(let (?e58 (ite $e44 ?e11 ?e51))
(let (?e59 (ite $e40 ?e6 ?e6))
(let (?e60 (ite $e25 ?e16 ?e7))
(let (?e61 (ite $e39 ?e4 ?e5))
(let (?e62 (ite $e37 ?e22 ?e13))
(let (?e63 (ite $e41 ?e9 ?e4))
(let (?e64 (ite $e36 ?e63 ?e4))
(let (?e65 (ite $e45 ?e64 ?e57))
(let (?e66 (ite $e30 ?e3 ?e54))
(let (?e67 (ite $e23 ?e19 ?e16))
(let (?e68 (ite $e24 ?e19 ?e65))
(let (?e69 (ite $e36 ?e4 ?e5))
(let (?e70 (ite $e48 ?e17 ?e55))
(let (?e71 (ite $e36 ?e15 ?e3))
(let (?e72 (ite $e27 ?e8 ?e19))
(let (?e73 (ite $e32 ?e52 ?e71))
(let (?e74 (ite $e38 ?e65 ?e62))
(let (?e75 (ite $e47 ?e9 ?e17))
(let (?e76 (ite $e26 ?e73 ?e67))
(let (?e77 (ite $e37 ?e3 ?e21))
(let (?e78 (ite $e29 ?e57 ?e75))
(let (?e79 (ite $e28 ?e15 ?e57))
(let (?e80 (ite $e46 ?e61 ?e16))
(let (?e81 (ite $e34 ?e53 ?e51))
(let (?e82 (ite $e48 ?e66 ?e60))
(let (?e83 (ite $e33 ?e52 ?e58))
(let (?e84 (ite $e29 ?e78 ?e68))
(let (?e85 (ite $e35 ?e61 ?e71))
(let (?e86 (ite $e23 ?e82 ?e58))
(let (?e87 (ite $e43 ?e70 ?e8))
(flet ($e88 (distinct ?e64 ?e53))
(flet ($e89 (< ?e57 ?e76))
(flet ($e90 (> ?e74 ?e69))
(flet ($e91 (> ?e82 ?e12))
(flet ($e92 (< ?e21 ?e7))
(flet ($e93 (< ?e54 ?e83))
(flet ($e94 (> ?e61 ?e6))
(flet ($e95 (< ?e22 ?e69))
(flet ($e96 (>= ?e74 ?e57))
(flet ($e97 (>= ?e84 ?e80))
(flet ($e98 (distinct ?e82 ?e14))
(flet ($e99 (> ?e77 ?e19))
(flet ($e100 (> ?e8 ?e8))
(flet ($e101 (distinct ?e22 ?e52))
(flet ($e102 (<= ?e56 ?e51))
(flet ($e103 (distinct ?e19 ?e4))
(flet ($e104 (>= ?e3 ?e53))
(flet ($e105 (< ?e60 ?e78))
(flet ($e106 (> ?e8 ?e57))
(flet ($e107 (<= ?e14 ?e83))
(flet ($e108 (> ?e71 v0))
(flet ($e109 (< v0 ?e86))
(flet ($e110 (= ?e17 ?e58))
(flet ($e111 (= ?e69 ?e85))
(flet ($e112 (distinct ?e64 ?e21))
(flet ($e113 (>= ?e61 ?e54))
(flet ($e114 (>= ?e67 ?e64))
(flet ($e115 (< ?e78 ?e86))
(flet ($e116 (>= ?e71 ?e51))
(flet ($e117 (= ?e12 ?e61))
(flet ($e118 (>= ?e4 v0))
(flet ($e119 (>= ?e18 v0))
(flet ($e120 (>= ?e4 ?e75))
(flet ($e121 (<= ?e7 ?e53))
(flet ($e122 (<= ?e56 ?e18))
(flet ($e123 (= ?e86 ?e13))
(flet ($e124 (> ?e3 ?e85))
(flet ($e125 (<= ?e75 ?e80))
(flet ($e126 (< ?e69 ?e12))
(flet ($e127 (= ?e87 ?e16))
(flet ($e128 (= ?e17 ?e16))
(flet ($e129 (> ?e20 ?e5))
(flet ($e130 (distinct ?e13 ?e4))
(flet ($e131 (< ?e8 ?e16))
(flet ($e132 (distinct ?e78 ?e86))
(flet ($e133 (<= ?e65 ?e74))
(flet ($e134 (< ?e17 ?e12))
(flet ($e135 (>= ?e19 ?e67))
(flet ($e136 (> ?e58 ?e64))
(flet ($e137 (>= ?e57 ?e21))
(flet ($e138 (< ?e7 ?e54))
(flet ($e139 (>= ?e79 ?e85))
(flet ($e140 (< ?e78 ?e61))
(flet ($e141 (>= v0 ?e69))
(flet ($e142 (< ?e51 ?e9))
(flet ($e143 (<= ?e56 ?e70))
(flet ($e144 (> ?e63 ?e7))
(flet ($e145 (>= ?e21 ?e9))
(flet ($e146 (<= ?e78 ?e5))
(flet ($e147 (<= ?e59 ?e75))
(flet ($e148 (< ?e61 ?e79))
(flet ($e149 (distinct ?e54 ?e61))
(flet ($e150 (distinct ?e64 ?e52))
(flet ($e151 (<= ?e60 ?e84))
(flet ($e152 (< ?e71 ?e3))
(flet ($e153 (>= ?e63 ?e50))
(flet ($e154 (> ?e16 ?e20))
(flet ($e155 (>= ?e65 ?e64))
(flet ($e156 (= ?e21 ?e50))
(flet ($e157 (< ?e70 ?e6))
(flet ($e158 (> ?e22 ?e78))
(flet ($e159 (= ?e52 ?e52))
(flet ($e160 (= ?e71 ?e81))
(flet ($e161 (distinct ?e13 ?e59))
(flet ($e162 (> ?e18 ?e21))
(flet ($e163 (< ?e12 ?e73))
(flet ($e164 (>= ?e87 ?e65))
(flet ($e165 (< ?e54 ?e5))
(flet ($e166 (> ?e11 ?e81))
(flet ($e167 (distinct ?e20 ?e76))
(flet ($e168 (>= ?e67 ?e5))
(flet ($e169 (distinct ?e50 ?e4))
(flet ($e170 (<= ?e21 v0))
(flet ($e171 (= ?e21 ?e72))
(flet ($e172 (distinct ?e60 ?e84))
(flet ($e173 (>= ?e57 ?e16))
(flet ($e174 (> ?e10 ?e65))
(flet ($e175 (distinct ?e17 ?e22))
(flet ($e176 (= ?e65 ?e56))
(flet ($e177 (< ?e55 ?e81))
(flet ($e178 (distinct ?e22 ?e80))
(flet ($e179 (> ?e64 ?e82))
(flet ($e180 (< ?e16 ?e81))
(flet ($e181 (= ?e54 ?e3))
(flet ($e182 (< ?e69 ?e69))
(flet ($e183 (<= ?e73 ?e13))
(flet ($e184 (< ?e73 ?e21))
(flet ($e185 (>= ?e21 ?e50))
(flet ($e186 (distinct ?e11 ?e82))
(flet ($e187 (>= ?e77 ?e77))
(flet ($e188 (<= ?e11 ?e50))
(flet ($e189 (< ?e21 ?e3))
(flet ($e190 (> ?e81 ?e69))
(flet ($e191 (>= ?e75 ?e20))
(flet ($e192 (< ?e15 ?e50))
(flet ($e193 (>= ?e61 ?e66))
(flet ($e194 (<= ?e59 ?e55))
(flet ($e195 (>= ?e82 ?e64))
(flet ($e196 (<= ?e10 ?e22))
(flet ($e197 (distinct ?e16 ?e55))
(flet ($e198 (> ?e16 ?e53))
(flet ($e199 (>= ?e9 ?e70))
(flet ($e200 (distinct ?e83 ?e22))
(flet ($e201 (>= ?e80 ?e83))
(flet ($e202 (>= ?e75 ?e5))
(flet ($e203 (>= ?e76 ?e53))
(flet ($e204 (>= ?e84 ?e53))
(flet ($e205 (<= ?e52 ?e86))
(flet ($e206 (> ?e18 ?e59))
(flet ($e207 (<= ?e72 ?e70))
(flet ($e208 (< ?e18 ?e21))
(flet ($e209 (>= ?e12 ?e22))
(flet ($e210 (<= v0 ?e6))
(flet ($e211 (= ?e5 ?e9))
(flet ($e212 (>= ?e17 ?e18))
(flet ($e213 (>= ?e19 ?e79))
(flet ($e214 (<= ?e50 ?e14))
(flet ($e215 (<= ?e76 ?e7))
(flet ($e216 (< ?e50 ?e51))
(flet ($e217 (> ?e16 ?e17))
(flet ($e218 (>= ?e8 v0))
(flet ($e219 (= ?e71 ?e81))
(flet ($e220 (<= ?e50 ?e78))
(flet ($e221 (< ?e5 ?e11))
(flet ($e222 (<= ?e61 ?e76))
(flet ($e223 (> ?e15 ?e82))
(flet ($e224 (distinct ?e87 ?e85))
(flet ($e225 (<= ?e76 ?e76))
(flet ($e226 (distinct ?e12 ?e78))
(flet ($e227 (< ?e86 ?e15))
(flet ($e228 (distinct ?e80 ?e80))
(flet ($e229 (> ?e7 ?e53))
(flet ($e230 (<= ?e17 ?e73))
(flet ($e231 (distinct ?e3 ?e14))
(flet ($e232 (distinct ?e53 ?e85))
(flet ($e233 (< ?e64 ?e12))
(flet ($e234 (< ?e71 ?e82))
(flet ($e235 (< ?e62 ?e19))
(flet ($e236 (<= ?e13 ?e82))
(flet ($e237 (< ?e4 ?e74))
(flet ($e238 (>= ?e83 ?e59))
(flet ($e239 (>= ?e57 ?e14))
(flet ($e240 (> ?e17 ?e71))
(flet ($e241 (= ?e50 ?e73))
(flet ($e242 (= ?e81 ?e78))
(flet ($e243 (distinct ?e21 ?e64))
(flet ($e244 (< ?e16 ?e68))
(flet ($e245 (and $e33 $e196))
(flet ($e246 (and $e44 $e45))
(flet ($e247 (and $e215 $e28))
(flet ($e248 (or $e151 $e34))
(flet ($e249 (and $e90 $e235))
(flet ($e250 (or $e144 $e216))
(flet ($e251 (not $e160))
(flet ($e252 (if_then_else $e133 $e222 $e156))
(flet ($e253 (or $e136 $e109))
(flet ($e254 (and $e208 $e149))
(flet ($e255 (not $e203))
(flet ($e256 (xor $e238 $e42))
(flet ($e257 (and $e209 $e193))
(flet ($e258 (and $e257 $e120))
(flet ($e259 (or $e183 $e125))
(flet ($e260 (and $e204 $e157))
(flet ($e261 (if_then_else $e115 $e197 $e140))
(flet ($e262 (and $e123 $e198))
(flet ($e263 (or $e117 $e184))
(flet ($e264 (xor $e175 $e101))
(flet ($e265 (not $e221))
(flet ($e266 (not $e180))
(flet ($e267 (implies $e188 $e48))
(flet ($e268 (not $e252))
(flet ($e269 (xor $e105 $e214))
(flet ($e270 (iff $e247 $e147))
(flet ($e271 (or $e211 $e254))
(flet ($e272 (not $e259))
(flet ($e273 (and $e110 $e119))
(flet ($e274 (or $e174 $e129))
(flet ($e275 (or $e97 $e132))
(flet ($e276 (iff $e201 $e205))
(flet ($e277 (or $e135 $e153))
(flet ($e278 (not $e35))
(flet ($e279 (and $e107 $e23))
(flet ($e280 (implies $e186 $e274))
(flet ($e281 (if_then_else $e30 $e212 $e264))
(flet ($e282 (or $e143 $e200))
(flet ($e283 (and $e219 $e124))
(flet ($e284 (not $e94))
(flet ($e285 (if_then_else $e103 $e29 $e148))
(flet ($e286 (not $e242))
(flet ($e287 (not $e272))
(flet ($e288 (iff $e167 $e127))
(flet ($e289 (iff $e253 $e270))
(flet ($e290 (iff $e276 $e218))
(flet ($e291 (if_then_else $e249 $e146 $e246))
(flet ($e292 (and $e273 $e164))
(flet ($e293 (implies $e46 $e185))
(flet ($e294 (not $e89))
(flet ($e295 (if_then_else $e134 $e255 $e250))
(flet ($e296 (and $e31 $e282))
(flet ($e297 (if_then_else $e181 $e114 $e226))
(flet ($e298 (or $e161 $e93))
(flet ($e299 (iff $e225 $e113))
(flet ($e300 (and $e227 $e145))
(flet ($e301 (iff $e138 $e150))
(flet ($e302 (if_then_else $e40 $e291 $e177))
(flet ($e303 (iff $e192 $e232))
(flet ($e304 (and $e298 $e295))
(flet ($e305 (if_then_else $e32 $e233 $e280))
(flet ($e306 (if_then_else $e98 $e301 $e207))
(flet ($e307 (or $e202 $e267))
(flet ($e308 (xor $e240 $e159))
(flet ($e309 (iff $e176 $e142))
(flet ($e310 (xor $e100 $e43))
(flet ($e311 (and $e131 $e231))
(flet ($e312 (and $e237 $e262))
(flet ($e313 (if_then_else $e96 $e299 $e288))
(flet ($e314 (iff $e292 $e162))
(flet ($e315 (xor $e308 $e189))
(flet ($e316 (not $e263))
(flet ($e317 (implies $e122 $e126))
(flet ($e318 (if_then_else $e166 $e111 $e236))
(flet ($e319 (not $e265))
(flet ($e320 (or $e230 $e305))
(flet ($e321 (or $e121 $e271))
(flet ($e322 (iff $e297 $e137))
(flet ($e323 (if_then_else $e95 $e320 $e27))
(flet ($e324 (iff $e286 $e275))
(flet ($e325 (not $e304))
(flet ($e326 (and $e315 $e179))
(flet ($e327 (not $e217))
(flet ($e328 (not $e251))
(flet ($e329 (xor $e245 $e283))
(flet ($e330 (implies $e278 $e277))
(flet ($e331 (or $e317 $e99))
(flet ($e332 (xor $e279 $e165))
(flet ($e333 (xor $e170 $e37))
(flet ($e334 (iff $e141 $e163))
(flet ($e335 (or $e310 $e268))
(flet ($e336 (iff $e294 $e228))
(flet ($e337 (implies $e24 $e47))
(flet ($e338 (and $e285 $e316))
(flet ($e339 (implies $e239 $e104))
(flet ($e340 (or $e102 $e154))
(flet ($e341 (or $e178 $e155))
(flet ($e342 (iff $e172 $e92))
(flet ($e343 (if_then_else $e311 $e334 $e311))
(flet ($e344 (if_then_else $e303 $e289 $e224))
(flet ($e345 (iff $e302 $e36))
(flet ($e346 (xor $e26 $e333))
(flet ($e347 (iff $e244 $e108))
(flet ($e348 (if_then_else $e326 $e118 $e321))
(flet ($e349 (if_then_else $e342 $e266 $e248))
(flet ($e350 (iff $e306 $e319))
(flet ($e351 (iff $e195 $e293))
(flet ($e352 (or $e332 $e88))
(flet ($e353 (xor $e187 $e256))
(flet ($e354 (or $e322 $e353))
(flet ($e355 (if_then_else $e345 $e287 $e258))
(flet ($e356 (or $e112 $e337))
(flet ($e357 (implies $e210 $e284))
(flet ($e358 (iff $e355 $e346))
(flet ($e359 (if_then_else $e344 $e314 $e340))
(flet ($e360 (iff $e328 $e182))
(flet ($e361 (not $e25))
(flet ($e362 (if_then_else $e269 $e229 $e331))
(flet ($e363 (and $e38 $e139))
(flet ($e364 (implies $e307 $e348))
(flet ($e365 (implies $e341 $e194))
(flet ($e366 (if_then_else $e309 $e223 $e356))
(flet ($e367 (not $e323))
(flet ($e368 (not $e351))
(flet ($e369 (if_then_else $e168 $e300 $e359))
(flet ($e370 (iff $e335 $e336))
(flet ($e371 (implies $e352 $e365))
(flet ($e372 (if_then_else $e191 $e370 $e329))
(flet ($e373 (or $e339 $e349))
(flet ($e374 (if_then_else $e347 $e343 $e296))
(flet ($e375 (implies $e173 $e318))
(flet ($e376 (implies $e312 $e312))
(flet ($e377 (not $e357))
(flet ($e378 (not $e361))
(flet ($e379 (and $e313 $e338))
(flet ($e380 (or $e213 $e325))
(flet ($e381 (not $e368))
(flet ($e382 (if_then_else $e372 $e220 $e376))
(flet ($e383 (xor $e330 $e169))
(flet ($e384 (and $e327 $e260))
(flet ($e385 (not $e241))
(flet ($e386 (iff $e199 $e380))
(flet ($e387 (not $e39))
(flet ($e388 (and $e379 $e385))
(flet ($e389 (xor $e152 $e360))
(flet ($e390 (not $e116))
(flet ($e391 (implies $e387 $e350))
(flet ($e392 (iff $e363 $e375))
(flet ($e393 (and $e388 $e374))
(flet ($e394 (not $e386))
(flet ($e395 (iff $e371 $e384))
(flet ($e396 (if_then_else $e261 $e130 $e390))
(flet ($e397 (or $e49 $e391))
(flet ($e398 (not $e382))
(flet ($e399 (xor $e366 $e377))
(flet ($e400 (if_then_else $e290 $e399 $e171))
(flet ($e401 (and $e234 $e91))
(flet ($e402 (and $e398 $e393))
(flet ($e403 (xor $e206 $e381))
(flet ($e404 (xor $e392 $e403))
(flet ($e405 (if_then_else $e373 $e324 $e397))
(flet ($e406 (and $e395 $e243))
(flet ($e407 (iff $e406 $e281))
(flet ($e408 (and $e358 $e41))
(flet ($e409 (implies $e362 $e408))
(flet ($e410 (or $e401 $e404))
(flet ($e411 (not $e407))
(flet ($e412 (not $e396))
(flet ($e413 (or $e364 $e405))
(flet ($e414 (and $e389 $e369))
(flet ($e415 (implies $e400 $e378))
(flet ($e416 (xor $e367 $e415))
(flet ($e417 (or $e128 $e409))
(flet ($e418 (and $e402 $e402))
(flet ($e419 (and $e394 $e413))
(flet ($e420 (iff $e410 $e411))
(flet ($e421 (and $e419 $e417))
(flet ($e422 (iff $e158 $e190))
(flet ($e423 (xor $e354 $e422))
(flet ($e424 (not $e416))
(flet ($e425 (not $e418))
(flet ($e426 (xor $e414 $e424))
(flet ($e427 (not $e423))
(flet ($e428 (if_then_else $e383 $e427 $e383))
(flet ($e429 (xor $e428 $e412))
(flet ($e430 (or $e425 $e429))
(flet ($e431 (if_then_else $e430 $e430 $e106))
(flet ($e432 (or $e431 $e420))
(flet ($e433 (or $e432 $e426))
(flet ($e434 (and $e433 $e421))
$e434
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

