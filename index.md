# WFPSM

This site archives the evolved artefacts from our work, [Why Functional Program Synthesis Matters (In The Realm of Genetic Programming)](https://dl.acm.org/doi/10.1145/3520304.3534045) [1], which investigates the use of a purely functional language for evolved code using Genetic Programming (GP) to solve program synthesis problems, see the paper [here](https://researchportal.hw.ac.uk/en/publications/why-functional-program-synthesis-matters-in-the-realm-of-genetic-). The code can be accessed via the GitHub repo linked to this page or at the Zenodo record [here](https://zenodo.org/record/6499027).

In GP systems, particularly those that target general program synthesis problems, it is common to use imperative programming languages to represent evolving code. In this work, we consider the benefits of using the purely functional language, Haskell to solve program synthesis problems, rather than the imperatively style programs in Python. 

The experiments are carried out using [PonyGE2](https://github.com/PonyGE/PonyGE2) [2]. The problems are from the [General Program Synthesis Benchmark Suite](https://thelmuth.github.io/GECCO_2015_Benchmarks_Materials/) [3] (note, the data was taken from the PonyGE2 repository). 

The table below presents the number of succesful runs out of 100 for each configuration. We then present code for successful solutions, that generalised to unseen data, in the linked sections that follow.

Problem | Haskell training cases | Haskell test cases | Python training cases | Python test cases
--- | --- | --- | --- | --- 
[1. Number IO](#1-number-io) | 100 | 99 | 100 | 100 
[2. Small Or Large](#2-small-or-large) | 30 | 24 | 0 | 0 
[4. Compare String Lengths](#4-compare-string-lengths) | 94 | 85 | 12 | 0
[11. String Lengths Backwards](#11-string-lengths-backwards) | 0 | 0 | 35 | 34
[12. Last Index Of Zero](#12-last-index-of-zero) | 0 | 0 | 2 | 2
[13. Vector Average](#13-vector-average) | 67 | 64 | 0 | 0 
[16. Super Anagrams](#16-super-anagrams) | 30 | 25 | 51 | 38 
[18. Vectors Summed](#18-vectors-summed) | 100 | 68 | 0 | 0
[21. Negative To Zero](#21-negative-to-zero) | 0 | 0 | 68 | 66 
[27. Median](#27-median) | 100 | 96 | 39 | 21 
[28. Smallest](#28-smallest) | 100 | 100 | 99 | 89 


## 1. Number IO

Given an integer and a float, print their sum.

Link to Haskell solutions that generalised to unseen data [here](#number-io-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#number-io-python-solutions)

#### Number IO Haskell solutions

```
evolvedFunction :: Int -> Float -> Float
evolvedFunction a b = <evolvedCodeHere>
```

Examples of evolved code follow:

```
((+) (max b b) (fromIntegral (a)))
```

```
((+) b (min ( (fromIntegral (a))) (fromIntegral (487))))
```

```
((+) b (fromIntegral (a)))
```

```
((+) b (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) (min b b))
```

```
((+) (fromIntegral (a)) (max b b))
```

```
((+) (fromIntegral (a)) ( b))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (fromIntegral (a)) (min b b))
```

```
((+) (fromIntegral (a)) (safeDiv (min 924.029 b) (safeDiv b b)))
```

```
((+) (max b b) (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) ( b))
```

```
((+) (fromIntegral (a)) (min b b))
```

```
((+) b (fromIntegral (a)))
```

```
( ((+) (fromIntegral (a)) b))
```

```
((+) (min b b) (fromIntegral ((max a a))))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (fromIntegral ((max a a))) b)
```

```
((+) b (fromIntegral ((min a a))))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) ( b) (fromIntegral (a)))
```

```
((+) (min 459.520 (fromIntegral (a))) b)
```

```
((+) (fromIntegral ((max a a))) ( b))
```

```
((+) (max b b) (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) b (fromIntegral (a)))
```

```
(max ((+) (min (min 363.479 b) b) (fromIntegral (a))) ((+) (fromIntegral (a)) b))
```

```
((+) (fromIntegral (a)) (max b b))
```

```
((+) (fromIntegral ((min a 626))) (min 981.554 b))
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) (min b b))
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) b (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (fromIntegral (a)) (max b b))
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) b (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) (max (max b ( b)) (min 786.524 b)))
```

```
((+) b (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) (min b b))
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (fromIntegral (a)) ( b))
```

```
((+) (fromIntegral (a)) (min b b))
```

```
((+) b (fromIntegral (a)))
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) (max b b))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (fromIntegral (a)) b)
```

```
((+) b (fromIntegral (a)))
```

```
((+) ( b) (fromIntegral ((max a a))))
```

```
((+) (max b b) (fromIntegral (a)))
```

```
((-) (fromIntegral (a)) (- b))
```

```
((+) (fromIntegral ((min a a))) b)
```

```
((+) b (fromIntegral (a)))
```

```
((+) (max (min b b) b) (fromIntegral ((max a a))))
```

```
((+) (fromIntegral (a)) (max b b))
```

```
((+) b (fromIntegral ((min 599 a))))
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) (max b b) (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) (min b b))
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) (max b b))
```

```
((+) b (fromIntegral (a)))
```

```
((+) (fromIntegral (( a))) b)
```

```
((+) (fromIntegral (a)) ( b))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (fromIntegral (a)) (min b b))
```

```
((+) ((-) b b) (min ((+) b (min 466.540 (fromIntegral (a)))) 736.377))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (min 381.666 b) (min (fromIntegral (( a))) 213.480))
```

```
((+) ( b) (fromIntegral (a)))
```

```
((+) (max b b) (fromIntegral (a)))
```

```
((-) (fromIntegral (a)) (- b))
```

```
((+) b (fromIntegral (a)))
```

```
((+) (fromIntegral (( a))) (min b b))
```

```
((+) (fromIntegral ((max a a))) (min b b))
```

```
( ((+) (fromIntegral (a)) b))
```

```
((+) (max (min b b) b) (fromIntegral (a)))
```

```
((+) (min (fromIntegral (a)) 691.307) (max b b))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) b (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) (min b 629.142))
```

```
((+) b (fromIntegral (( a))))
```

```
((+) (max b b) (fromIntegral (a)))
```

```
((+) b (fromIntegral (a)))
```

```
((+) (fromIntegral ((max a a))) (max b b))
```

```
((+) (fromIntegral (a)) b)
```

```
((+) (fromIntegral (a)) (max b b))
```

```
((+) b (fromIntegral ((max a (min ( a) a)))))
```

```
((+) ( b) (fromIntegral (a)))
```

```
((+) (fromIntegral (a)) (- (- b)))
```

```
((+) (min b b) (fromIntegral (a)))
```

```
((+) b (fromIntegral (a)))
```

```
(min ((+) b 143.011) ((+) b (fromIntegral (a))))
```

#### Number IO Python solutions

```
def evolve(in0, in1):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

Examples of evolved code follow:


```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i0 = i1
res = ( in1 + in0 )
i0 += +int(math.floor(( mod(mod(min(int(round(div(f0,f1))), int(math.ceil(f0))),i2),min(mod(min(int(round(f1)), f0),( ( i0 - in0 ) - min(f2, i0) )), +divInt(abs(i1),min(i1, i1)))) + div(max(( max(div(f2,f0), mod(in0,f2)) - int(6.0) ), ( max(abs(i1), max(i1, res)) + 2.6 )),+max(int(round(( f1 + f0 ))), ( ( i2 - i0 ) * min(in0, i2) ))) )))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = ( i1 + in1 )
res += div(in0,min(( max(int(div(max(i0, in0),( f1 + f1 ))), -int(math.floor(in1))) * i2 ), int(math.floor(min(int(math.ceil(min(res, i2))), res)))))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i1 = in0
res = ( i1 + in1 )
in1 = ( ( in1 + res ) + -i1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 = i1
res += ( in0 + in1 )
i1 -= int(3.0)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 -= in1
res = ( in1 + in0 )
i1 = max(in0, int(math.floor(f0)))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i0 += -int(math.ceil(divInt(int(round(mod(res,abs(i0)))),max(0.3, i0))))
in1 += divInt(in0,( max(( min(int(round(min(f1, in1))), ( ( in0 - f2 ) * max(in0, f2) )) + min(-in0, min(int(math.ceil(f0)), int(math.ceil(f2)))) ), min(min(i2, div(( i2 * i2 ),max(f1, in1))), int(24.0))) + int(( max(res, divInt(divInt(i0,i0),in0)) + ( min(( f2 - i2 ), max(f0, i1)) * i2 ) )) ))
res = ( in1 - i2 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = ( in0 + in1 )
f0 = max(f1, i0)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
f0 = ( int(( f1 - int(math.ceil(f0)) )) - 1619.608 )
i1 -= in0
res += in0
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in0
res += in1
f1 *= 8.55
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res += in0
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 = i0
res = ( div(divInt(( in0 + int(math.floor(mod(divInt(f0,i0),i2))) ),int(math.floor(( ( mod(f1,res) * ( in1 + i0 ) ) - max(abs(i2), int(math.ceil(f2))) )))),int(math.ceil(max(max(max(max(max(i2, f1), min(in0, f1)), min(max(i2, f0), mod(f0,i0))), -abs(+in0)), ( max(int(math.ceil(divInt(f0,in0))), int(round(( res + i1 )))) + int(math.ceil(( ( res - in0 ) * ( in0 * i0 ) ))) ))))) + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 = i2
res += ( in0 + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res += in1
res = ( in0 + res )
f1 *= 0.8
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 *= i0
res = ( ( div(min(in1, int(round(max(( max(i2, f2) - div(f0,in0) ), mod(int(round(f2)),( f0 * i1 )))))),int(in1)) - -in0 ) + max(( ( min(divInt(int(round(f1)),( mod(in0,in0) * ( i1 - i0 ) )), f1) - mod(max(int(math.floor(i0)), min(( f0 + in0 ), int(in1))),min(( abs(in0) + ( f1 - res ) ), max(+i1, min(i2, in0)))) ) + min(div(abs(int(8.0)),mod(min(max(in0, in0), int(math.floor(res))),( min(in0, f0) - div(i0,res) ))), int(math.floor(min(8.8, mod(i0,in0))))) ), in1) )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 += i1
f2 *= min(f2, in0)
res = ( ( in0 + in1 ) + min(res, i0) )
in0 -= min(i0, i2)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f2 *= min(( max(max(abs(max(i2, i0)), ( f2 - int(8.0) )), min(in1, max(int(2.0), int(divInt(f0,i2))))) + max(max(abs(( int(math.ceil(in1)) + -i0 )), +int(mod(f0,i1))), in0) ), -abs(int(math.ceil(min(4.7, 2.2)))))
res = ( in1 + ( mod(( div(( 7.0 * f1 ),int(round(9.2))) * ( min(mod(max(i0, f0),max(f2, i1)), mod(int(math.ceil(f2)),abs(i0))) - ( int(8.0) - min(min(res, i2), divInt(in1,res)) ) ) ),16.33) + in0 ) )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i1 *= i0
res = ( in0 + in1 )
in0 -= int(9.0)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
i2 += abs(divInt(int(math.floor(min(min(2.1, i2), mod(min(divInt(f2,res), i2),int(math.floor(( f2 * i1 ))))))),max(min(int(9.0), i2), divInt(divInt(in0,int(round(( f0 * f2 )))),int(math.ceil(res))))))
res += in0
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 = in1
res = ( in0 + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res += in0
in0 = int(math.floor(min(max(max(mod(min(min(max(in0, i0), divInt(i0,in0)), divInt(min(i2, res),abs(i1))),div(mod(min(i2, f2),min(f0, i2)),( div(res,in1) - ( f2 - f1 ) ))), abs(int(math.ceil(divInt(in0,i1))))), abs(( int(round(mod(f1,i2))) - int(math.ceil(max(i1, int(math.ceil(res))))) ))), int(9.0))))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 *= in0
res = ( divInt(mod(( ( int(max(min(i1, in0), div(res,i1))) + min(int(math.ceil(f2)), ( i0 + in0 )) ) + max(( min(+i1, divInt(i1,in0)) * min(max(i1, i0), max(f1, i0)) ), int(round(divInt(max(i2, in0),mod(f0,i1))))) ),i1),int(round(( min(int(2.0), in0) * min(div(int(math.ceil(min(f1, i1))),mod(abs(i2),res)), int(2.0)) )))) + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 += int(math.floor(max(int(math.ceil(min(int(min(i2, f2)), max(max(res, res), ( i0 + res ))))), max(i0, int(math.floor(( min(max(i0, i1), divInt(f0,f0)) * -min(in0, i0) )))))))
res = ( in0 + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 = in1
res = ( in0 - f1 )
res -= ( f1 - in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f1 = f0
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = ( in0 + f1 )
res += ( in1 + int(round(min(int(math.ceil(f1)), divInt(( max(int(math.floor(( f0 * i0 ))), max(( i0 - f0 ), i2)) - div(mod(max(i2, i2),min(res, i1)),min(divInt(i1,f2), max(f2, in1))) ),int(max(( ( in0 + i1 ) - abs(i2) ), max(( f2 * f1 ), ( in0 + res )))))))) )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = ( in1 + in0 )
i0 = i1
in1 = 7.5
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i1 -= i2
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f1 *= res
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = mod(( ( min(max(max(in0, in0), mod(i1,f1)), mod(( f2 * f2 ),div(f0,i1))) + int(( min(i1, f1) * div(in1,in0) )) ) * int(min(div(max(i2, f0),max(i2, i1)), i2)) ),int(round(518.60)))
res = mod(mod(in0,i0),f2)
i2 += max(int(math.ceil(f2)), int(math.floor(f1)))
res += in1
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = ( in1 + ( max(divInt(f1,f2), f0) - ( ( div(i2,res) - int(math.ceil(mod(divInt(in0,res),( f0 - res )))) ) + max(int(math.floor(min(min(i1, in1), min(i1, f2)))), int(round(div(i1,abs(in0))))) ) ) )
i0 = ( i1 - i2 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f2 += in1
res += ( f2 + in0 )
in1 += 5.477
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res += ( in0 + f1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 -= ( ( int(round(max(min(( f1 - div(in1,i1) ), ( ( i0 * f1 ) + ( i0 - i0 ) )), ( abs(abs(i1)) * i2 )))) + max(f1, 31.9) ) + i0 )
res = min(in1, in0)
res += max(in1, mod(min(in0, in0),f1))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res += ( in0 + in1 )
in1 = 0.4
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f1 = in1
i0 = max(in0, max(divInt(mod(( int(0.0) * int(math.floor(max(in0, res))) ),int(6.0)),( min(min(int(round(f0)), ( i0 * i2 )), min(-i0, max(i2, i1))) + int(round(divInt(divInt(i0,f1),int(in1)))) )), max(abs(int(math.ceil(max(max(i1, in0), div(i2,f1))))), max(( int(math.floor(max(f2, f2))) * +min(in0, i0) ), int(math.floor(max(min(in0, i0), ( i1 * res ))))))))
res = ( f1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res += in1
res -= ( f0 - in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f2 += 75.969065
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 = divInt(int(math.floor(9822.2)),i2)
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res *= in1
res += ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res += f2
res = in1
res += in0
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
i1 += ( i0 - i0 )
res += min(max(res, int(max(( ( int(math.floor(max(in0, f1))) + divInt(( i2 + in0 ),i2) ) - min(( max(in1, i2) * in0 ), i2) ), div(int(round(max(( f2 + in1 ), ( i1 * in1 )))),( min(in1, int(f1)) * ( int(math.ceil(res)) - int(math.ceil(f2)) ) ))))), in0)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
f0 *= 1.31
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in0
res += div(in1,i0)
i0 = int(round(divInt(abs(int(round(04.27))),int(math.floor(max(max(f2, max(int(round(( res + i1 ))), ( f0 - ( f1 * i0 ) ))), min(int(round(1.0)), int(round(divInt(max(in0, in1),div(in0,f2)))))))))))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res += in0
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res += in0
i2 -= abs(int(round(max(( ( mod(-max(i2, i1),mod(div(i2,f2),min(in0, i1))) + min(int(math.ceil(divInt(i0,f1))), 6.6) ) * int(min(0.5, mod(mod(i1,i2),mod(i0,in0)))) ), int(math.ceil(( divInt(( min(res, i1) * int(math.ceil(in1)) ),( f1 + min(i1, f1) )) * max(int(math.ceil(( f0 + i0 ))), i1) )))))))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 = in1
res = ( in0 + div(in1,int(round(( res + ( int(math.floor(max(int(res), ( f0 * f2 )))) - i1 ) )))) )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = mod(in1,f1)
res += ( f2 + in0 )
f2 += 8.0
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 = in0
res = ( i2 + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
i1 -= -int(math.ceil(-min(( mod(i2,i2) - int(math.floor(in1)) ), int(math.floor(div(in1,i0))))))
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res -= ( f1 - in0 )
i0 = int(3498.5)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
in0 += int(round(min(6.1, max(f1, ( max(int(math.floor(res)), i1) * min(mod(in0,i0), max(in1, i1)) )))))
res += in0
res += in1
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i0 = in0
res += ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = min(f0, int(max(0.4, mod(mod(+in0,min(i0, i2)),abs(i1)))))
res = mod(in0,f2)
res += in1
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
i1 -= int(round(f0))
f2 = max(( divInt(max(( ( mod(f1,i2) + abs(i1) ) + max(max(f2, res), abs(in0)) ), min(mod(int(math.ceil(f2)),( i0 + f2 )), ( abs(i0) * int(math.ceil(res)) ))),min(max(( in0 - ( in0 * res ) ), divInt(int(f1),in0)), int(math.ceil(( min(f0, res) * f1 ))))) + i1 ), mod(min(int(math.floor(f2)), i0),divInt(mod(max(max(max(in0, in0), abs(i2)), int(math.floor(( i2 + f2 )))),int(( max(i0, res) - ( f0 - in0 ) ))),int(math.ceil(96.3)))))
res -= mod(( f0 - in0 ),min(i0, in0))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i1 = int(1.0)
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res += in1
res += ( in0 - div(( div(max(int(min(( i0 - i1 ), f1)), f1),( div(i2,mod(f0,divInt(f0,i1))) * mod(+( in0 * i0 ),int(math.ceil(f1))) )) - min(max(f0, min(min(abs(in0), int(math.floor(f0))), int(math.floor(max(i0, f0))))), ( max(-mod(i1,i0), int(math.floor(max(in1, i0)))) + min(min(max(i1, i0), int(math.floor(f1))), i2) )) ),f0) )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 = in0
f2 = max(min(int(round(0.4)), max(f0, ( int(math.ceil(min(div(f1,f1), max(f0, in0)))) - max(-int(math.ceil(f1)), int(round(max(f0, i2)))) ))), int(round(max(max(min(( +i0 - ( in1 + i1 ) ), mod(( i1 * f1 ),( in0 - i0 ))), +int(i1)), divInt(int(1.0),( divInt(min(i1, in0),( i0 * i2 )) + ( int(round(f0)) + int(round(f1)) ) ))))))
res += ( in1 + i2 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f1 = 074.6
res = ( in0 + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i1 -= i2
res += ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f1 += min(in1, max(( div(max(min(max(i0, f0), divInt(in0,in0)), max(max(i0, i2), mod(f2,i1))),divInt(int(9.0),abs(i1))) + max(mod(abs(int(round(f2))),max(( i1 * in0 ), min(i2, in0))), mod(mod(( f1 + in1 ),int(math.ceil(f0))),min(i1, max(f0, f2)))) ), int(math.floor(3.7))))
res = ( f1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 = min(f1, f2)
res = div(in1,i0)
res += in0
i0 = +mod(+divInt(in0,int(round(max(max(divInt(res,f0), min(in0, f1)), min(max(in1, i2), f1))))),int(in1))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 += res
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res += in1
in0 -= ( in0 * i1 )
res += in0
i2 += int(4.0)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res += divInt(in0,f2)
f2 = 8.2
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res = ( in0 + res )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = min(min(mod(div(int(min(in0, max(min(in1, f2), in0))),max(int(math.floor(max(( i2 + f1 ), min(i0, i0)))), abs(i0))),int(math.floor(min(int(f1), int(math.ceil(res)))))), abs(max(max(max(( in0 - i2 ), in0), int(math.floor(f2))), max(max(int(round(f1)), int(f2)), ( divInt(i1,i1) - min(i1, in0) ))))), max(min(int(math.ceil(in0)), mod(max(max(int(round(res)), ( f1 * in0 )), i0),int(max(i2, res)))), max(( int(math.floor(min(mod(f1,in1), max(f2, res)))) - res ), ( max(max(max(res, f0), ( res + in0 )), int(math.ceil(( i1 + f1 )))) + int(math.floor(( ( f1 * in1 ) + ( f1 * f2 ) ))) ))))
res += ( in1 + f0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = ( int(0.0) - ( ( mod(min(int(round(div(in1,i1))), abs(min(in0, i1))),abs(+int(math.floor(f0)))) * in0 ) * mod(+min(int(math.floor(min(i1, res))), mod(abs(i2),abs(i0))),mod(( int(math.ceil(( in0 + res ))) - max(max(res, i0), int(f1)) ),in0)) ) )
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = divInt(in0,int(math.ceil(mod(abs(mod(max(i2, i1),int(f1))),min(+-i0, max(int(math.floor(f2)), ( in0 * res )))))))
res += div(in1,i1)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i0 += int(math.ceil(max(min(int(math.floor(min(max(f1, f2), int(in1)))), min(( mod(f0,i0) - min(i2, in1) ), max(in0, max(i1, f2)))), -( ( min(i2, in0) + ( i2 - in0 ) ) * int(math.floor(( f0 + in0 ))) ))))
res = in0
res += in1
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res += int(round(( in0 + mod(( f1 + mod(i1,f2) ),( max(in1, i0) * max(i1, f0) )) )))
i0 = ( int(9.0) + min(in0, abs(abs(int(math.floor(min(int(max(in1, i1)), mod(( res - in0 ),max(f1, i0)))))))) )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in0
res += in1
in1 += div(2.29,abs(max(int(math.ceil(max(max(( min(i2, i0) - +in0 ), int(math.ceil(max(f0, res)))), max(8.4, max(( i2 * i0 ), int(math.ceil(f1))))))), int(math.floor(div(min(( i1 - int(f0) ), abs(int(math.ceil(f2)))),min(6.9, i2)))))))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = min(in1, in1)
res += ( in0 + f0 )
i0 = int(3.0)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i0 = in0
res = ( i0 + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res += in1
res += ( in0 + f1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i1 += in0
res += ( in0 + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 -= min(( int(26.4) * int(math.ceil(max(int(math.ceil(res)), res))) ), max(max(mod(min(min(i1, i2), ( f2 * res )),divInt(max(i2, in0),min(i1, res))), min(int(round(f2)), mod(abs(i0),min(in0, res)))), 5.60))
res = in0
res += in1
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f1 = in1
res += ( f1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res -= ( f1 - in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res -= ( divInt(( mod(int(round(div(i1,min(in0, f2)))),divInt(max(mod(i2,in1), int(round(res))),int(round(min(in1, f2))))) + min(abs(mod(mod(in0,in0),max(i1, i2))), ( i2 * int(round(min(f2, res))) )) ),int(math.ceil(( ( +i2 + ( ( in1 * f0 ) * div(in1,i0) ) ) * min(mod(int(math.ceil(in1)),( res * in1 )), min(mod(f1,f0), +i1)) )))) + min(+min(int(math.ceil(divInt(max(i1, f2),mod(i1,in0)))), int(25.0)), ( mod(int(math.floor(f1)),int(math.floor(max(f2, res)))) * int(math.floor(( max(f1, f2) * min(in1, in0) ))) )) )
res = ( in0 + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
in1 = 25.39
res += div(in0,mod(max(int(math.floor(f1)), abs(i2)),max(( abs(( ( ( i2 * i1 ) * int(math.floor(f0)) ) - int(( i2 - f1 )) )) * divInt(i0,min(mod(in0,abs(i0)), int(math.ceil(( in0 * res ))))) ), abs(divInt(( max(int(round(f0)), mod(i1,in0)) - ( divInt(in0,i2) + int(res) ) ),( -( in0 + i1 ) * int(math.floor(min(i0, in1))) ))))))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 -= min(abs(int(min(in0, in1))), min(in1, ( max(f1, f0) * min(i0, f0) )))
i1 -= ( +i1 - int(math.floor(max(max(int(f2), ( f2 * f2 )), ( int(math.floor(f2)) + mod(f0,f1) )))) )
res = min(in1, in1)
res += in0
i1 = i0
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
in1 += ( mod(i1,int(0683.0)) + min(mod(min(div(res,2.7), f2),min(divInt(int(round(divInt(f0,i1))),int(math.floor(max(in1, f2)))), -max(-i1, i1))), i2) )
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f0 = 8.5
res += ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = ( in1 + in0 )
i2 = ( min(int(2.0), mod(max(i2, min(divInt(int(math.ceil(res)),int(math.ceil(f2))), max(( i0 + i2 ), min(i2, i1)))),int(round(max(abs(int(f1)), int(f1)))))) * int(math.ceil(int(round(( ( i1 + max(res, f1) ) * div(divInt(res,i2),( f0 + f0 )) ))))) )
i1 = i1
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = 3.0
res = ( in1 + in0 )
i2 -= int(0.0)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f1 *= ( min(divInt(min(max(max(f2, i2), max(f0, i0)), ( -i2 * int(math.ceil(in1)) )),int(math.floor(f0))), mod(mod(i0,min(in0, int(round(in1)))),min(divInt(i1,i0), int(in1)))) + int(math.floor(div(divInt(int(round(f0)),int(round(div(f1,f2)))),min(( int(math.floor(res)) * int(math.floor(res)) ), divInt(int(round(in1)),divInt(in1,f2)))))) )
res += div(in0,res)
res += in1
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
in1 = mod(in1,f1)
res -= divInt(( max(max(divInt(div(min(f2, f0),( in1 + res )),max(( i2 * res ), max(in0, in0))), int(round(f0))), divInt(( int(min(max(in0, in1), i1)) + ( mod(min(i0, i1),( i0 - i2 )) * mod(int(round(f2)),mod(in1,f0)) ) ),int(90.0))) + +divInt(-in0,( int(divInt(i0,res)) * int(round(( int(in1) + min(f1, res) ))) )) ),min(f0, max(divInt(int(math.floor(divInt(( in0 * f1 ),int(math.ceil(f0))))),max(max(min(i2, in0), mod(f0,res)), int(math.ceil(( f0 + i2 ))))), res)))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res += ( f2 + ( in0 + f2 ) )
i2 = int(round(min(div(div(f2,int(( divInt(min(f2, in0),max(in1, i0)) * ( i1 * div(i0,res) ) ))),min(246.67, divInt(( int(math.floor(f0)) * ( -in0 + min(f0, f1) ) ),( min(f1, i1) - f1 )))), mod(min(( mod(max(min(i0, i1), i2),int(math.ceil(min(f1, in1)))) * int(math.ceil(( divInt(res,in0) + in0 ))) ), mod(int(( min(i1, f1) + max(in0, in0) )),abs(int(round(( i1 + f1 )))))),in0))))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i2 = in0
res = ( in1 + in0 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = mod(in0,div(int(( ( -+i0 + int(round(( f2 * f1 ))) ) * int(3.0) )),divInt(int(max(int(round(min(max(f0, i2), in0))), ( int(res) + 1.4 ))),min(( abs(int(math.floor(max(f1, in1)))) + min(mod(-i1,int(res)), ( divInt(f1,i1) + i1 )) ), min(mod(( ( f0 + in0 ) - mod(in0,f1) ),( int(math.ceil(f1)) * int(math.ceil(f2)) )), abs(max(max(i0, i1), int(round(in1)))))))))
res += div(in1,i2)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = div(in0,f2)
i2 *= int(max(i2, min(( ( ( int(round(f0)) * max(f1, i2) ) * min(abs(in0), abs(i0)) ) - abs(int(mod(in0,f2))) ), max(int(div(( in1 - f1 ),max(res, f0))), mod(int(8.0),int(min(f2, f2)))))))
res -= divInt(( i1 - in1 ),-i1)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i0 -= divInt(min(int(math.ceil(min(int(math.ceil(div(mod(f2,f0),mod(f0,in0)))), min(int(( i2 + f0 )), max(divInt(in0,i1), div(in1,f1)))))), int(math.floor(min(( abs(int(math.floor(in1))) - max(min(i0, f0), max(res, i1)) ), mod(f2,divInt(max(i1, i1),divInt(i0,i0))))))),i1)
res = ( in0 + in1 )
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
f2 = f2
res = ( in1 + in0 )
i0 = int(math.ceil(min(( ( min(int(81.0), ( ( max(f2, i1) - min(res, f2) ) - divInt(div(res,f1),int(res)) )) + ( mod(min(max(i0, res), divInt(f2,f2)),( i0 * max(in1, in1) )) - abs(divInt(( i2 + i2 ),( i1 * i2 ))) ) ) - ( max(( int(round(mod(f1,i1))) + mod(int(f1),in0) ), int(math.floor(div(( in0 - in0 ),( i2 + f0 ))))) * int(min(( ( res * f0 ) - int(math.ceil(res)) ), min(int(math.ceil(f1)), ( i2 * i1 )))) ) ), res)))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i0 *= int(math.ceil(divInt(int(math.ceil(div(( f2 + i0 ),mod(i0,i2)))),div(in0,( int(math.floor(f2)) - res )))))
i2 -= divInt(min(int(min(int(min(f0, res)), div(mod(in0,in0),min(f1, in0)))), int(math.floor(( ( int(math.floor(res)) - int(f0) ) + min(abs(i0), ( in1 - i1 )) )))),int(4.0))
res = in0
res += in1
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res += in1
res = ( in0 + res )
i0 = int(4.0)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res += ( in0 + in1 )
i1 = int(4.0)
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
res = in1
res += in0
in1 = 5.03956
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i1 = in0
res = max(( in0 + in1 ), ( i1 + int(math.floor(in1)) ))
i2 += int(min(max(( max(97.47, -int(2.0)) - min(min(res, mod(max(in0, res),int(math.floor(in1)))), div(f0,int(math.floor(( f0 - i2 ))))) ), min(mod(int(round(( int(round(f0)) - in0 ))),( mod(i1,divInt(i0,i1)) * min(int(math.floor(in1)), divInt(i1,i2)) )), ( min(int(math.floor(( f0 * i0 ))), divInt(( f1 + in1 ),abs(i0))) * ( divInt(+i2,( in0 + i1 )) * 5.0 ) ))), int(8.0)))
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i0 += int(( ( int(math.ceil(min(( f0 - i0 ), max(i1, i2)))) + int(52.0) ) * -+mod(i2,i1) ))
res = ( in1 + in0 )
in0 *= i2
```

```
i0 = i1 = i2 = int()
f0 = f1 = f2 = float()
res = float()
i0 = i0
res += ( in1 + in0 )
```


## 2. Small Or Large

Given an integer n, print “small” if n < 1000 an “large” if n ≥ 2000 (and nothing if 1000 ≤ n < 2000) 

Link to Haskell solutions that generalised to unseen data [here](#small-or-large-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#small-or-large-python-solutions)

#### Small Or Large Haskell solutions

```
evolvedFunction :: Int -> String
evolvedFunction n = <evolvedCodeHere>
```

Examples of evolved code follow:


```
(if (((-) (- 4998) (safeMod 999 n)) > (- ((+) (abs 0) ((*) n 3)))) then "large" else (if (999 < n) then (if (98 < 4995) then (if False then "small" else (safeInit "")) else (safeTail (safeInit ""))) else (if True then "small" else "small")))
```

```
(if (not (1000 <= (max n ((-) n 6)))) then (if (not (1000 <= (max n ((-) n n)))) then "small" else ((safeTail (if False then "" else "large")) ++ (if ("large" <= "large") then "large" else (if True then "large" else "")))) else (if (1999 < n) then "large" else (safeTail "")))
```

```
(if (0999 >= n) then "small" else (if ((safeIntDiv ((-) n 8) 498) >= 4) then ("large" ++ (if (if True then True else False) then (safeInit "") else "large")) else (safeInit (safeTail (if True then (if False then "small" else "") else "large")))))
```

```
(if (if ( (not (n == n)) || (not (even n)) ) then True else (even ((-) n 6))) then (if (999 < n) then (if (1990 < ((-) n 9)) then "large" else (if (odd 4) then ("small" ++ "large") else (safeTail ""))) else ("" ++ "small")) else (safeInit "large"))
```

```
(if ((if True then n else 5141) <= (max 1999 ((-) n n))) then (if ((if False then n else n) < (max 1000 (if (not True) then n else n))) then "small" else (safeInit "")) else (if ( False || (9000 > (if False then 4 else 18)) ) then "large" else (safeInit (safeInit (safeInit "")))))
```

```
(if ((abs (max 7 n)) > (if True then 999 else 194)) then (if (n > ((+) (length "") 992)) then (if (n > 1999) then ("" ++ "large") else (if (null "large") then "small" else "")) else "small") else "small")
```

```
(if (1991 > n) then (if (n <= 999) then (if False then (if ("large" > "small") then "large" else (if False then "small" else "small")) else "small") else "") else (if (n > 1999) then "large" else (if (663 == 2) then "large" else (safeInit ""))))
```

```
(if (2000 <= n) then (if ((safeMod 21 01) < 21) then (if (1981 <= n) then "large" else "") else (if (odd n) then "small" else "small")) else (if (if (n /= n) then ((max 4 7) /= 01) else (1000 <= n)) then "" else "small"))
```

```
(if (n <= (min (max ( n) (abs n)) (abs 999))) then "small" else (if (((-) n 889) <= 1110) then (if True then "" else ("small" ++ "")) else "large"))
```

```
(if (1999 < (max n (safeIntDiv n (safeMod n n)))) then (if False then "large" else "large") else (if ((max (- n) 999) < ( (max 6 n))) then "" else (if True then "small" else (("" ++ "small") ++ ""))))
```

```
(if (if (n < ((+) 02 998)) then ("large" > "large") else True) then (if ((if (odd 02) then n else (max n 9)) <= (max 1999 (abs 2))) then "" else "large") else "small")
```

```
(if ((min 1999 n) >= n) then (if ((if True then 999 else n) >= n) then (if True then "small" else "large") else (if ("" > "") then (safeInit "") else (if False then "large" else (if True then "" else "small")))) else (if (580 >= (abs ( n))) then "" else "large"))
```

```
(if (n < (abs 1000)) then "small" else (if (n <= (abs 1999)) then "" else (if ("large" <= ("" ++ "large")) then "large" else (if True then "small" else (safeInit "")))))
```

```
(if ((safeIntDiv n 2033) >= 6) then "large" else (if ((if True then (if False then 6 else n) else 0) >= 2000) then "large" else (if (n >= 1000) then (if True then (if False then "" else (if True then "" else "")) else "") else "small")))
```

```
(if (n < 1000) then "small" else (if (n < 2000) then (if (n < 0) then "small" else (if True then "" else "")) else (if False then (safeInit (if True then "large" else "small")) else "large")))
```

```
(if (2000 <= (max (max 41 (min n 3)) n)) then "large" else (if (even (if True then (max 9 9) else n)) then ("small" ++ (safeInit (safeTail "small"))) else (if (999 < n) then "" else "small")))
```

```
(if ((min (if True then n else (safeIntDiv 5 n)) (if True then 999 else (- 0))) < n) then (if (((*) 50 40) > (min n n)) then "" else "large") else (if False then "small" else "small"))
```

```
(if (1999 >= n) then (if (1000 > n) then "small" else (safeTail "")) else (if (1481 > n) then (if ((safeIntDiv 6 n) > (min 7 n)) then (safeTail ("" ++ "large")) else (if ((safeMod n n) > 6) then ((safeInit "") ++ (safeTail "small")) else (safeInit "small"))) else "large"))
```

```
(if (((-) 1544 n) >= (max ((-) 545 0) (safeIntDiv 44 (min n n)))) then (if ((if False then 7 else n) >= n) then "small" else (safeInit (safeInit (if False then "large" else "large")))) else (if (((-) 3545 1546) >= (if False then 1976 else n)) then (if ("" > (safeTail "large")) then "" else "") else "large"))
```

```
(if ((safeIntDiv (safeMod (max n 1) ((+) n 8)) (length ("large" ++ "small"))) <= 199) then (if (n <= 999) then (if (even (length "")) then "small" else "small") else "") else "large")
```

```
(if ( ( (999 >= n) && ("large" <= ("large" ++ "")) ) && ("small" <= ("small" ++ "")) ) then "small" else (if ((max 1999 (if False then n else 8)) < n) then "large" else ""))
```

```
(if ((abs 1001) <= ((+) n (safeIntDiv n 901))) then (if (3999 <= (max (if ("small" == "") then 0 else ((+) n n)) ((-) 38 n))) then "large" else (safeInit (if (odd 0) then ("" ++ "small") else ""))) else ("" ++ "small"))
```

```
(if (n <= 980) then (if (odd (length ("small" ++ ""))) then "small" else "large") else (if ( False || ((max n 5) <= 999) ) then (if (5 <= 1375) then "small" else "large") else (if (( (max n n)) <= 1999) then "" else "large")))
```

```
(if (( n) <= 999) then "small" else (if False then (if False then (safeInit "") else (if (if True then True else True) then "large" else "large")) else (if (( n) <= 1999) then "" else "large")))
```

```
(if True then (if (n > 999) then (if (n > 1999) then "large" else (if False then (if False then "large" else "small") else (safeTail ""))) else "small") else (if True then (if False then "" else (safeInit (safeTail ""))) else (safeInit (if (even 4) then (safeInit "small") else ("small" ++ "")))))
```

```
(if (not (n > 999)) then "small" else (if (n > 1999) then (if (1934 > ( n)) then (safeInit (if False then (safeTail "small") else "large")) else "large") else (if (1997 > n) then "" else (safeInit ""))))
```

```
(if (85 >= n) then (if False then "small" else "small") else (if (n < 1000) then (if (odd (min (safeIntDiv n n) 6)) then "small" else (if (9 >= n) then "small" else (safeInit "small"))) else (if (n <= 1999) then (if False then "" else "") else "large")))
```

```
(if (if ((safeIntDiv 9996 ( 5)) >= n) then False else True) then "large" else (if ((safeIntDiv 4998 ( 5)) >= n) then "small" else ("" ++ (if (3 >= n) then "large" else ""))))
```

```
(if (n > 999) then (if (n >= 998) then (if (n > 1999) then "large" else (if False then "" else "")) else (if (null "") then "small" else (if (null "large") then (safeTail "small") else (safeInit "small")))) else "small")
```

```
(if (n < 2000) then (if ( (null "large") || ((min n n) < 1000) ) then "small" else "") else "large")
```

```
(if (n > 999) then (if (n > 1999) then "large" else (safeTail (if (if False then True else True) then (if False then "large" else "") else (if ( True && False ) then (safeTail "small") else "")))) else (if False then "small" else "small"))
```

```
(if (not (if True then (n <= 999) else True)) then (if (1999 < n) then "large" else (if False then "small" else "")) else (if False then "small" else "small"))
```

```
(if ( (if (odd (length "")) then ( True || (odd 2) ) else (n > 1999)) || ((max 999 (if True then 19 else 6)) >= (if (5 == n) then n else n)) ) then (if ((if False then (if True then 2 else 11) else n) > 1413) then "large" else (if (97 > 213) then "" else "small")) else (safeTail ("" ++ "")))
```

```
(if (n <= 1999) then (if (n <= 999) then "small" else (if (if (null "") then False else False) then "small" else "")) else ("" ++ (if (even n) then "large" else "large")))
```

```
(if (1000 > n) then "small" else (if True then (if (1999 < n) then "large" else "") else ("large" ++ (if True then (if False then "large" else "small") else (if False then "large" else "")))))
```

```
(if (999 < n) then (if ((max n (abs 5)) > 1999) then "large" else ((if True then (safeTail "") else (safeTail "")) ++ "")) else (if True then "small" else (safeTail "")))
```

```
(if (n <= (if ( False && False ) then ((+) ((-) (if True then n else n) 0) n) else 1999)) then (if (n <= 999) then "small" else "") else (if (null (if True then (if False then "large" else "small") else "large")) then "small" else "large"))
```

```
(if (999 < n) then (if True then (if (3999 < ((*) 2 n)) then "large" else "") else (if (6 < ((*) 1 n)) then (if (if False then True else False) then (safeInit "small") else (if False then "large" else "")) else "")) else ("" ++ ("small" ++ "")))
```

```
(if (n <= (abs 999)) then (if ((safeTail (safeInit "")) == "") then "small" else "") else (if (if (n <= 1999) then (if True then True else True) else (if ( False && True ) then (odd n) else False)) then (if (odd 6) then ((if True then "small" else "small") ++ "small") else "") else "large"))
```

```
(if (n <= 999) then (if (not (odd 4)) then "small" else "large") else (if (((*) (length "small") 399) >= ((-) n 4)) then (safeTail "") else "large"))
```

```
(if (54 > (abs (length (if False then "" else "small")))) then (if ((safeIntDiv n ((+) 9 91)) <= 9) then "small" else (if (1999 >= n) then (if True then "" else "") else "large")) else "")
```

```
(if (n > 1999) then (if True then "large" else (if (if False then ( False && True ) else (null "large")) then (safeInit "large") else (safeTail "small"))) else (if ((if (not True) then 23 else (min 8 7)) > 19) then (if (n > 4906) then "large" else (if ( True && True ) then "large" else (safeTail ""))) else (if (999 >= n) then ("small" ++ "") else "")))
```

```
(if (n > 1999) then (if False then ((if False then "large" else ("" ++ "")) ++ (if True then ("small" ++ "large") else "large")) else "large") else (if ( (n > 999) && False ) then (safeTail (safeTail (safeInit ""))) else (if (n > 999) then "" else "small")))
```

```
(if (((+) 993 (max 7 (min n 7))) > n) then (if ((max n 1996) > n) then "small" else (if False then (safeInit "small") else ("large" ++ "large"))) else (if ((max 992 1999) >= n) then (if False then ("" ++ "small") else (if (n == 6) then "" else "")) else "large"))
```

```
(if (n <= 01999) then (if (n < 01000) then "small" else ("" ++ (if False then ("" ++ "large") else ""))) else (if ((if ( False && False ) then "large" else "large") == (if ( True || True ) then "small" else ("small" ++ "large"))) then (safeInit ("small" ++ "large")) else ((if False then (if ( True || True ) then "" else "") else "large") ++ (safeTail ""))))
```

```
((if (n <= 1999) then (if (n > 999) then (safeInit "") else (if True then "small" else "")) else (if ((min n n) <= 1) then (if (n > 0) then (safeInit "") else (if False then "small" else "large")) else "large")) ++ (safeInit ""))
```

```
(if ((if (if False then (if False then False else True) else True) then 999 else 5) >= ((*) 1 n)) then "small" else (if ((min (safeMod 8 n) (safeIntDiv 9 8)) >= (length (safeTail "large"))) then "" else (if (2000 <= n) then "large" else "")))
```

```
(if (993 <= ((+) (safeMod n ( n)) (max ((-) n 7) (safeMod n 8)))) then (if (1999 < n) then (if True then "large" else "small") else "") else "small")
```

```
(if (n > (min 999 (max (max n n) 64))) then (if (n > (max 1999 (length "large"))) then "large" else "") else "small")
```

```
(if ( ( (1999 < n) && ("" < "small") ) && ("" <= "small") ) then ("large" ++ (if ("" >= "large") then ((safeTail "large") ++ "large") else "")) else (if (956 < n) then (if (999 < n) then (safeInit ("" ++ "")) else ("small" ++ "")) else (if (null (safeTail "")) then "small" else (if False then (safeInit "large") else "large"))))
```

```
(if (n <= ((+) 3 996)) then (if False then (if (not (2 <= n)) then (safeTail (safeTail "large")) else ((safeTail "") ++ "large")) else "small") else (if (n <= (safeIntDiv 9999 (safeMod (length "large") n))) then "" else "large"))
```

```
(if (if (1999 < n) then ((safeTail (if False then "small" else "large")) <= "large") else False) then ((if (even 311) then "large" else (if True then "large" else (safeTail "small"))) ++ "") else (if (0 >= 2) then ("" ++ "small") else (if (999 >= (max n n)) then (if ("" /= "large") then "small" else "small") else (if True then "" else ""))))
```

```
(if (n <= 1999) then (if (n <= 999) then (if (even (if True then 5 else n)) then "large" else "small") else "") else "large")
```

```
(if (n <= 999) then (if (not False) then "small" else "large") else (if (((*) (length "small") 400) <= n) then (if False then (safeTail "large") else "large") else ""))
```

```
(if (999 < n) then (if (1999 < n) then "large" else "") else (if False then (if True then "large" else "") else "small"))
```

```
(if (n <= (if (not (1 < n)) then ((-) (if True then 8 else 4) 7) else 1999)) then (if (n <= (if (if False then False else False) then ((*) (- n) (length "large")) else 999)) then "small" else "") else "large")
```

```
(if (not (if (999 >= n) then True else (if True then False else True))) then (if (3540 > n) then (if (1999 >= n) then (safeInit "") else "large") else "large") else (if True then "small" else (if ((if True then "" else "") < (safeTail "large")) then "small" else (safeInit (safeTail "small")))))
```

```
(if (if ( True && (999 >= n) ) then True else ( True && (986 > n) )) then ((safeTail "") ++ "small") else (if ((max 2000 7) > (if (2 == n) then n else (min n n))) then "" else ("" ++ "large")))
```

```
(if ((abs n) /= (max (min ( n) n) 1000)) then "small" else (if ("large" >= (if ( False || True ) then (safeInit "small") else "large")) then (safeInit (safeTail ("small" ++ "large"))) else (if (1999 >= n) then (if True then (if True then "" else "small") else ("large" ++ "")) else "large")))
```

```
(if (n <= (if ("small" <= ("large" ++ "")) then n else 1999)) then (if False then "" else (if (n <= 999) then (if (even 2) then ("small" ++ "") else "large") else "")) else "large")
```

```
(if (n < 2000) then (if (1000 > n) then "small" else (safeTail (if False then (if True then "large" else "small") else ""))) else "large")
```

```
(if (n >= ((+) ( 997) (if False then 13 else (abs 3)))) then (if (n == (if True then (if False then 6 else n) else 0)) then (if (n > 1999) then "large" else "") else "small") else (if True then (if (if True then (null (if False then "" else "")) else False) then "small" else ("small" ++ "small")) else "small"))
```

```
(if (n > 1999) then "large" else (if True then (if (n <= 999) then "small" else (if (n <= 77) then "small" else (if False then ("small" ++ "small") else ""))) else (if (if False then True else ("" == "large")) then (safeTail "large") else (safeInit (safeInit "")))))
```

```
(if (1999 < (if ( True || False ) then (if (odd n) then n else n) else (length (if True then "small" else "")))) then "large" else (if (n == (min n 999)) then "small" else (if (not True) then "" else "")))
```

```
(if ((max (safeIntDiv (max 3 7) n) n) <= 1999) then (if ((max n n) <= 0999) then "small" else "") else (if (n <= 2) then "large" else "large"))
```

```
(if (n <= 999) then "small" else (if (n == 191909) then (safeInit (if True then (safeInit "small") else (safeTail "large"))) else (if (n <= 1999) then "" else (if False then "small" else "large"))))
```

```
(if ((max n n) <= (safeMod (- (if True then n else n)) (max ( n) 3998))) then (if ((if ( False || True ) then 999 else (max n 9)) >= n) then "small" else "") else (if True then "large" else ((if (if False then False else True) then (safeInit "large") else ("small" ++ "large")) ++ (if True then "large" else ((if False then "small" else "") ++ "large")))))
```

```
(if (if (if (if ( True && True ) then False else (if True then True else False)) then False else False) then False else (n > 999)) then (if (if (if (if False then True else (not False)) then False else (n == n)) then False else (n >= 1971)) then (if (n > 1999) then (if (7 < 9) then "large" else "") else "") else "") else "small")
```

```
(if (1999 < n) then (if (if (571 < n) then True else False) then (if True then "large" else (if (n <= n) then "large" else ("" ++ "small"))) else "large") else (if (n <= 999) then "small" else (safeInit (if True then "" else ""))))
```

```
(if (if False then (( ((+) n 7)) > (safeIntDiv n (length "large"))) else (2000 <= n)) then "large" else (if (if (if True then False else True) then (if ( False && True ) then ("" == ("small" ++ "small")) else (9 <= n)) else (1000 <= (if True then n else n))) then (safeTail "") else "small"))
```

```
(if (n >= (max (if True then (if True then n else n) else n) 2000)) then "large" else (if (n >= ((+) 7 993)) then (if ( True && False ) then "small" else "") else (if False then (if True then "" else (safeInit "large")) else "small")))
```

```
(if (9953 >= ((*) ((-) (if False then n else n) 9) (min 282 (length "large")))) then (if (999 >= n) then (if True then "small" else (if True then "small" else "large")) else "") else ("large" ++ ""))
```

```
(if (null (safeTail ((if False then "small" else "large") ++ ""))) then (if (n <= 1199) then "" else "large") else (if ((max n 4) <= 0999) then ("small" ++ "") else (if (n <= 1999) then "" else "large")))
```

```
(if ( (if False then (odd 611) else True) && ( (if (n >= n) then (if True then True else True) else True) && (n <= 999) ) ) then "small" else (if ( (if False then False else ("large" <= "small")) && (n <= 1999) ) then "" else "large"))
```

```
(if (n > (max 1999 ((+) 1 650))) then "large" else (if (n > 999) then (if (700 == 70) then (if (9 <= 1) then "small" else "small") else "") else (if False then "small" else "small")))
```

```
(if ((if (5355 < 8) then (if False then n else n) else ((-) (max n n) 995)) >= (length "large")) then ((if (1999 < n) then "large" else "") ++ "") else "small")
```

```
(if (1999 < n) then "large" else (if ((min (safeMod 7 2) ( ((+) n n))) >= 4955) then "large" else (if (n <= 999) then "small" else "")))
```

```
(if ( (n <= 960) || ("small" == "small") ) then (if (((*) (abs 4) n) <= 7996) then (if (n <= 999) then "small" else "") else "large") else (safeTail (if ( (7 <= (length "large")) || (("large" ++ "small") <= (safeTail "")) ) then "small" else (safeInit "small"))))
```

```
(if ((max (if ( True || True ) then ((+) 3 0) else (min 0 n)) (if ( True || True ) then 999 else (if True then n else n))) < n) then (if (1999 >= n) then "" else (if (n >= n) then "large" else (if False then "large" else "small"))) else "small")
```

```
(if (((-) (safeMod n 8) (- 999)) <= ( n)) then (if (1999 < n) then (if False then "small" else (if False then "large" else (if False then "large" else "large"))) else (safeInit "")) else "small")
```

```
(if ( ( ("large" == "small") && ( (n > 6) && (null "large") ) ) || (7019 <= ((*) 7 ((+) 3 n))) ) then (if (8000 <= ((*) (max 4 2) (max n n))) then "large" else (safeInit (safeInit ""))) else (if True then (if True then "small" else "small") else "small"))
```

```
(if (n <= 1999) then (if (n < 1000) then (if False then ((if False then "small" else "small") ++ "small") else "small") else (if (not (if True then False else True)) then "" else "large")) else (if False then (if (if False then False else ( True || True )) then "" else ((safeInit "large") ++ "")) else (if (37 < n) then "large" else "small")))
```

```
(if (not (null "small")) then (if (n > (min n 999)) then (if (n <= 1999) then "" else "large") else "small") else (safeInit (if ( (odd n) || False ) then (safeTail "large") else ("large" ++ ("small" ++ "small")))))
```

```
(if (null (safeTail (safeInit (safeInit "")))) then (if (n <= 999) then (if ( ( True || True ) || (if ( True && False ) then False else False) ) then "small" else "small") else (if (n <= 1999) then (safeInit (safeInit "")) else ("large" ++ ""))) else ("" ++ "small"))
```

```
(if ( ((safeTail ("large" ++ "large")) >= (safeInit "")) || (if False then False else (odd n)) ) then (if (n >= 1000) then (if (n >= 2000) then "large" else "") else (if (not ( False || False )) then "small" else "")) else (if ((abs 0) < n) then (safeInit "small") else (if (3 == n) then "" else "")))
```

```
(if True then (if (1999 < n) then "large" else (if (0999 < n) then "" else "small")) else (safeTail (if (616 == 066) then "" else "small")))
```

```
(if (if (not ( True && (not True) )) then (if True then (even (if False then n else 5)) else (if (even 2) then ( False && False ) else False)) else False) then (if False then (if True then (if (odd n) then "small" else (if (if False then True else False) then "small" else "large")) else "small") else "") else (if (((*) 400 (length "large")) <= n) then "large" else (if (999 < n) then (safeTail "") else "small")))
```

```
(if (n < ((-) (abs 849) (- 151))) then (if True then "small" else (if (n == 968) then ("small" ++ (safeTail "small")) else "large")) else (if (n <= n) then (if (n <= 1999) then (if True then (safeInit "") else "large") else "large") else "large"))
```

```
(if (1999 < n) then (if True then ("large" ++ "") else ("small" ++ ("" ++ ""))) else (if (1998 <= n) then (if ( ("large" <= "large") && (if True then True else False) ) then "" else "small") else (if (999 < n) then (safeTail (if True then "" else "large")) else "small")))
```

```
(if (999 >= (if False then 1994 else (max n (safeIntDiv 8 n)))) then "small" else (if (n > 1999) then "large" else (if True then "" else (safeInit (if False then "small" else "")))))
```

```
(if (1999 >= n) then (if (n >= n) then (if (1000 > (max (min n n) n)) then "small" else "") else (if (625 >= 3) then (if True then "" else (safeTail "")) else "large")) else (if (n > ((*) n (if True then 7 else n))) then (if False then (if False then "small" else ("" ++ "")) else "large") else "large"))
```

```
(if ((abs (if (not True) then 929 else 1999)) >= n) then (if (n < 1000) then ("" ++ "small") else (((safeTail "") ++ "") ++ "")) else (if True then "large" else (if ((if False then "large" else "large") < "") then "small" else "small")))
```

```
(if (n < n) then (if (n <= 0545) then ((safeInit ("large" ++ "large")) ++ (safeTail (if True then "" else "small"))) else (safeInit "large")) else (if (999 < n) then (if (1999 < n) then "large" else "") else "small"))
```

```
(if (1999 < n) then (if (1599 <= n) then "large" else (if (1569 <= n) then ("small" ++ (safeInit "large")) else "")) else (if (999 < n) then (safeInit "") else "small"))
```

```
(if (if (if ( (5 > n) && (not True) ) then False else False) then ("small" > ("" ++ "large")) else (if (1999 >= n) then ((safeTail "small") == (safeTail "large")) else (if ( False && False ) then True else (null "")))) then "large" else (if (if (n > 0999) then ("small" <= ("" ++ "large")) else ("small" > (if False then "small" else "large"))) then "small" else ""))
```

```
(if (((*) (if False then (safeMod n 2) else 30) 67) < ((+) n (if (if False then False else True) then 11 else n))) then (if True then ((if True then "large" else "large") ++ "") else "large") else (if (n <= 999) then "small" else ("" ++ "")))
```

```
(if ((min (min n (max 1 n)) 1999) >= n) then (if True then (if (999 >= n) then "small" else ((safeInit "") ++ "")) else (if ( True && True ) then (if (null "large") then (if False then "" else "large") else "small") else (("large" ++ "large") ++ (safeTail "small")))) else (if False then (if ( False && False ) then "large" else ((if False then "small" else "small") ++ (if True then "small" else "large"))) else "large"))
```


#### Small Or Large Python solutions

```
#  evolved function
def evolve(in0):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

No succesful solutions generalised  

:sob:

## 4. Compare String Lengths

Given three strings n1, n2, and n3, return true if length(n1) < length(n2) < length(n3), and false otherwise 

Link to Haskell solutions that generalised to unseen data [here](#compare-string-lengths-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#compare-string-lengths-python-solutions)

#### Compare String Lengths Haskell solutions

```
evolvedFunction :: String -> String -> String -> Bool
evolvedFunction s1 s2 s3 = <evolvedCodeHere>
```

Examples of evolved code follow:


```
( ((length s2) > (length s1)) && (( (safeMod (length s2) (length s3))) >= (length s2)) )
```

```
(if False then ( (null s2) && (even (min (if True then (length s1) else (abs (length s2))) ( (- (abs (length s1)))))) ) else (if ((length (if (null s2) then (s3 ++ s3) else s2)) >= (max (length (if True then s3 else s3)) ( (max (- (length s2)) (max (length s1) (length s1)))))) then False else ((if True then (length s1) else (length s1)) < (min (length (s3 ++ (safeTail s3))) (length s2)))))
```

```
( ((length s1) < (length s2)) && ((length s2) < (length s3)) )
```

```
( ( ( ((length s3) > (length s2)) && True ) && ((length s2) > (length s1)) ) && ((length s3) >= (length s3)) )
```

```
((abs (abs (safeMod (- (min (- (max (- (length s3)) (min (length s2) (length s3)))) (min (length s2) (length s1)))) (max (abs (max ((+) ( (length s3)) (- (length s1))) (min (length s2) ((-) (length s3) (length s3))))) (length s3))))) > (abs (max (length s1) (length s1))))
```

```
( ((length s3) > (length s2)) && ((abs ( (min (max (if False then (abs (length s2)) else (min (length s1) (length s1))) ( (length s2))) (min (max (abs (length s2)) ( (length s1))) (length (s3 ++ s2)))))) > (length s1)) )
```

```
( ((length s1) < (length s2)) && ((length s2) < (length s3)) )
```

```
((max (- (abs (abs (length s3)))) (safeMod (length s2) (length s3))) > (abs (if ((safeMod (abs (min (if False then (length s1) else (length s3)) (min (length s2) (length s2)))) ( (abs (length s2)))) == (abs (length s3))) then ( (abs (abs ((*) (max (length s3) (- (length s3))) (abs (min (length s2) (length s3))))))) else (length s1))))
```

```
( ((length s1) < (length (if ((abs (length s3)) == (if True then (length s1) else (length s1))) then s3 else s2))) && ((length s2) < (length s3)) )
```

```
(if ((length s3) <= (length s2)) then ((abs (length s3)) > (if (odd (min (min (length s1) (length s3)) (safeIntDiv (length s3) (length s2)))) then (length s2) else (length s3))) else ((length s2) > (length s1)))
```

```
(if ((length s2) >= (length s3)) then (not True) else ((length s2) > (length s1)))
```

```
(if ((length s2) > (length s1)) then ((length s2) < (length s3)) else ( (even (abs (min (length (s3 ++ s1)) (safeIntDiv (length s3) (safeMod (length s2) (length s1)))))) && False ))
```

```
(if ((abs (length (if False then (if (null s1) then (s3 ++ s1) else s2) else s2))) < (abs (length s3))) then ((length s2) > (length s1)) else ((length s1) > (if False then (length s2) else (length s1))))
```

```
( (not False) && ( ((length s2) < (length s3)) && ((length s2) > (length s1)) ) )
```

```
((max (length s3) (length s2)) > (max (length s2) ( (- (- (if True then ((+) ( ((-) (length s3) (length s2))) (abs (length s1))) else ((-) (max (length s3) (length s1)) (abs (max (length s2) (length s2))))))))))
```

```
( ((length s2) == (max ((-) ((-) (if True then (length s1) else (length s1)) (min (length s1) (length s1))) (length s2)) (if True then (safeMod (max (length s1) (length s2)) (max (length s3) (length s2))) else (max (min (length s1) (length s3)) (if True then (length s1) else (length s3)))))) && ((length s2) > (length s1)) )
```

```
(if ((length s1) >= (length s2)) then ((length s2) > (length s1)) else ((length s2) < (if False then (length (safeTail s3)) else (length s3))))
```

```
( ((max (length s2) (length s1)) < (length (if (odd (abs (length s1))) then (if ( True || True ) then (if True then s3 else s1) else (if False then s1 else s2)) else s3))) && ((length s2) > (length s1)) )
```

```
( ((length s3) > (length s2)) && (not (not ((if False then (abs (length s1)) else (length s2)) > (max (length s1) (length s1))))) )
```

```
( ((length s1) < (length s2)) && ((length s2) < (length s3)) )
```

```
((min (length s1) (length s3)) < ( (- (min (if False then (if ((abs (length s3)) > (abs (length s2))) then (safeMod (if True then (abs (length s1)) else (min (length s1) (length s1))) (min (if False then (length s3) else (length s1)) (safeMod (length s2) (length s1)))) else (if False then ((*) (- (length s3)) (abs (length s2))) else (safeIntDiv ((-) (length s3) (length s1)) (safeMod (length s1) (length s1))))) else (- (safeMod (length s2) (max (max (length s3) (length s2)) (length s2))))) (abs (length s3))))))
```

```
((length s2) > (if ((length s3) > (length s2)) then (min (length s2) (length s1)) else (if True then (length s2) else (length (safeTail (safeTail (if True then s3 else s1)))))))
```

```
( ((max (min (length s2) (length s3)) (safeMod (length s2) (length (if ((length s1) < (length s3)) then s3 else s2)))) > (max (min (length s3) (length s1)) ( (length s1)))) && (( (length s3)) > (abs (length s2))) )
```

```
( ((max (if False then (length s3) else (length s3)) (max (length s3) (length s2))) > (abs (abs (length s2)))) && ((length s2) > (length s1)) )
```

```
( ((safeMod (length s2) (length s3)) > (length (if True then s1 else s1))) && ((length s3) > (length s2)) )
```

```
( ((length s3) > (length s2)) && ((length s2) > (length s1)) )
```

```
(not ((length s1) >= (max (- (abs (safeIntDiv ((-) (min (length s2) (length s2)) (abs (length s1))) ((+) (abs (length s3)) (length s2))))) (safeMod (abs (length s2)) (max (length s3) (max ( (abs (length s2))) ((-) (min (length s2) (length s2)) (safeIntDiv (length s2) (length s2)))))))))
```

```
((length (if True then s1 else s1)) < (if (not ((if True then (abs (length s3)) else ((-) (length s1) (length s1))) > (abs (min (length s2) (length s3))))) then (safeMod (min (length s2) (length (s1 ++ (safeInit (safeInit s3))))) (length s1)) else (abs (length s2))))
```

```
( (if ((length s1) >= (length s2)) then ((length s1) /= (length s1)) else ((length s3) /= (length s2))) && ((length s2) < (length s3)) )
```

```
( ((length (if (null s1) then ((if False then s2 else s1) ++ s2) else s2)) > (length (if (not True) then s1 else s1))) && ((length s2) < (length (if (( (length s1)) >= (safeMod (length s3) (length s1))) then s3 else (safeInit (safeTail s1))))) )
```

```
( ((if (null (if (null s3) then s1 else s3)) then (abs (if ((s3 ++ s2) < (if True then s2 else s2)) then (min (abs (safeMod (length s2) (length s3))) (abs (safeMod (length s1) (length s2)))) else ((*) (abs (abs (length s3))) (if (s2 /= s3) then (length s2) else (if False then (length s1) else (length s1)))))) else (max ( (length s1)) (length s1))) < ( (length s2))) && ((length s2) <= (length (safeInit s3))) )
```

```
((if ((length s2) <= (length s1)) then (length s2) else (length s3)) > (if False then (length s2) else (length s2)))
```

```
( ((length s1) < (length s2)) && ((length s2) < (length s3)) )
```

```
((max (length s1) (length s2)) < (max (length (if False then s1 else (if ((length s1) < (length s2)) then s3 else s2))) (min (length (safeTail s2)) (if ( (if True then False else True) || (( (length s1)) >= (if True then (length s2) else (length s3))) ) then (length s3) else (if ((abs (max (length s1) (length s1))) < (safeIntDiv (safeIntDiv (length s1) (length s3)) (if False then (length s1) else (length s3)))) then (abs (max ((+) (abs (length s3)) ((-) (length s3) (length s1))) (length (safeInit s3)))) else ( (min (safeIntDiv (length s3) (safeMod (length s1) (length s1))) (if (if True then False else True) then (abs (length s3)) else (min (length s1) (length s1))))))))))
```

```
((max ( (length s1)) ((-) (length s2) (length s3))) < (safeMod (min (length s2) (length s3)) (min (length s3) (length s3))))
```

```
((min (length s3) (length s2)) > (if (( (length s3)) > (min (if True then (length s2) else (length s2)) ( (length s3)))) then (length s1) else (length s2)))
```

```
( ( (odd (safeIntDiv (abs (length s2)) (abs (length s2)))) && ((length s2) < (length s3)) ) && ((length s1) < (length s2)) )
```

```
( ((length s2) > (length s1)) && ((max (length s2) (length s1)) < (if True then ((-) (abs ((-) (min ((+) (length s3) (length s2)) ((-) (length s1) (length s3))) (min (max (length s2) (length s2)) (min (length s1) (length s2))))) (if (not True) then (safeIntDiv ((*) ( (length s1)) (max (length s1) (length s1))) (abs (- (length s3)))) else (min (min (max (length s1) (length s1)) (min (length s3) (length s3))) ((-) (if False then (length s1) else (length s2)) (length s3))))) else (length (s2 ++ ((if True then s3 else s3) ++ s2))))) )
```

```
(if (((-) (length s1) ((*) (abs ( (safeIntDiv (safeIntDiv (length s1) (length s3)) (max (length s3) (length s1))))) ((*) (length (safeTail s3)) (abs (- (if False then (length s3) else (length s1))))))) < (if (null s2) then (min (abs (safeMod ((*) ((+) (length s3) (length s3)) (if False then (length s3) else (length s1))) (length s1))) (max (max (abs (safeIntDiv (length s1) (length s2))) ((*) (abs (length s3)) (length s3))) ( (abs ((-) (length s1) (length s3)))))) else (abs (- (safeMod (min (min (length s3) (length s2)) (abs (length s3))) (abs (length s3))))))) then (if True then True else True) else (if True then False else False))
```

```
(if ((length s1) < (length s2)) then ((length s3) > (length s2)) else ((length s2) > (length s1)))
```

```
((if False then (if False then (length s3) else (length s3)) else (safeMod (length s2) (length s3))) > (abs (max (length s1) (length (safeTail (if ( False || True ) then s2 else s2))))))
```

```
((if (if True then True else False) then (max (length s2) (length s1)) else ( (length s1))) < (abs (min (length s1) (- (abs (if ((max (length s1) (length s2)) <= ( (length s1))) then (if ((length s2) == (length s1)) then ( (safeMod (length s2) (length s3))) else (abs (max (length s1) (length s2)))) else (length s3)))))))
```

```
((min (if ((length s2) < (length s3)) then (length s2) else (safeIntDiv (if (not True) then (abs (safeMod (abs ((*) (length s3) (length s3))) (abs (min (length s2) (length s2))))) else (if ((safeInit s3) < s3) then (safeIntDiv (min (length s2) ((-) (length s1) (length s3))) (min (length s2) (abs (length s1)))) else (safeMod (length s2) (- (abs (length s1)))))) ((+) ( (safeMod (length s1) (max (max (length s1) (length s2)) (max (length s1) (length s2))))) (max (length s2) (max (length s2) ( (length s3))))))) (max (length s1) (length s3))) > (max (- (length s2)) (if False then (length s1) else (length s1))))
```

```
( ((length s2) < (length s3)) && ((min (length s2) (length s3)) > (abs (length s1))) )
```

```
((length (if False then s2 else s2)) > (if (((+) (if False then ((*) ((+) (safeMod (length s2) (length s2)) ((-) (length s3) (length s2))) (safeMod (max (length s1) (length s2)) (safeMod (length s3) (length s3)))) else (length s1)) ((+) (abs (length s3)) (max (- (abs (length s2))) ((*) (- (length s3)) ( (length s3)))))) <= (- (max (- (if ( True || True ) then (min (length s1) (length s1)) else (abs (length s1)))) (- (abs (length s2)))))) then (length s2) else (abs (length s1))))
```

```
((max (max (max (length s3) (max (if True then ( (safeMod (max (length s2) (length s1)) (safeMod (length s1) (length s1)))) else (max (- (abs (length s1))) (min (min (length s2) (length s1)) (if False then (length s2) else (length s2))))) (length s1))) (length s2)) (min (length s2) (length s2))) /= (max (if (not ((length s1) >= (length s2))) then (length s2) else (length s3)) (if False then (length s3) else (length s1))))
```

```
((if (not False) then (max (length s1) (length s2)) else ((*) (length s2) (length s3))) < (length (if ((safeMod (length s2) (length s3)) > (min (length s3) (length s1))) then s3 else s2)))
```

```
(if ((min (length s2) (max (length s3) (length s3))) > (abs (min (length s1) (length s1)))) then (not ((length s2) >= (length s3))) else (if False then False else False))
```

```
( ((length s2) > (length s1)) && ((length s2) < (length s3)) )
```

```
(((-) (min (length s2) (length s1)) (min (length s2) ( ( (if ((abs (length s3)) <= (max (length s2) (length s2))) then (safeIntDiv (- (abs (length s1))) (safeIntDiv (if True then (length s3) else (length s1)) (length s3))) else ((+) ((+) ((+) (length s2) (length s2)) (safeIntDiv (length s1) (length s1))) ((+) (abs (length s2)) (if False then (length s1) else (length s1))))))))) < (safeMod (if True then (length s2) else (length s3)) (- (length s2))))
```

```
( ((min (min (length s1) (length s1)) (min (length s3) (length s2))) < (if (if False then False else False) then (safeMod (length s2) (length s2)) else (safeMod (length s2) (length s3)))) && ((abs (length s3)) > (if False then (min (max (min (if (odd (length s2)) then (safeMod (safeMod (length s3) (length s3)) (min (length s1) (length s1))) else (if True then (length s1) else (max (length s3) (length s2)))) (- (length (s3 ++ s1)))) (safeIntDiv ((-) (min (length s3) (length s3)) (safeIntDiv (length s3) (length s1))) (length s3))) (- (length s2))) else (length s2))) )
```

```
( ((length s2) < (length s3)) && ((abs (length s2)) > (abs (length s1))) )
```

```
((safeMod ( (length s2)) (max ( (if True then ( (length (if False then s2 else s3))) else (safeMod ( (abs (if False then (length s1) else (length s2)))) (if True then (abs (safeMod (length s3) (length s2))) else (min (abs (length s3)) (if True then (length s1) else (length s1))))))) (length s2))) > (min (abs (length s1)) (min (length s2) (length s2))))
```

```
((min (min (min (if (if True then ((length s3) < (length s3)) else ((length s1) > (length s1))) then (length (s2 ++ s2)) else (abs ((-) ((-) (safeIntDiv (length s1) (length s2)) (min (length s3) (length s1))) (min (length s3) (safeIntDiv (length s3) (length s2)))))) (abs (max ((-) (length (safeInit s3)) (if False then (abs (length s1)) else (length s3))) (if (not False) then (abs (safeMod (length s2) (length s3))) else (max ((+) (length s3) (length s1)) ( (length s2))))))) (abs (abs (- (abs (min (max (length s3) (length s1)) (if False then (length s3) else (length s3)))))))) (abs (length s3))) > (abs (min (length s1) (length s3))))
```

```
(if ((length s1) >= (length s2)) then (if ( False && True ) then (if False then (even (safeIntDiv (if False then (length s1) else (length s3)) (if True then (length s1) else (length s1)))) else True) else False) else ((length s2) < (length s3)))
```

```
(not (((+) (min (if (if False then (if False then True else True) else True) then ((*) ((-) (safeMod (length s2) (length s3)) (min (length s2) (length s1))) ( (safeIntDiv (length s3) (length s2)))) else (abs (abs ((+) (length s2) (length s2))))) (max ( (if (if True then False else True) then (safeIntDiv (length s3) (length s1)) else (abs (length s1)))) (abs (- (abs (length s3)))))) (min (if True then (max (length (s1 ++ s3)) (if (null s2) then (max (length s3) (length s1)) else ( (length s3)))) else (max (max ((-) (length s3) (length s3)) (length s2)) (length s2))) ( (min (max (length s1) (abs (length s1))) (abs (abs (length s2))))))) <= (length s1)))
```

```
( ((length s2) > (length s1)) && ((length s2) < (length s3)) )
```

```
(if ((length s1) >= (length s2)) then (not True) else ( (( (max (length (safeTail s3)) ( (min (length s2) (length s3))))) < (abs (if False then (abs (min (length s1) (length s1))) else (length s3)))) && True ))
```

```
( ((length s3) > (length s2)) && ((abs (length (if ((length s1) >= (length s3)) then s2 else s1))) < (if False then (length s2) else (length s2))) )
```

```
(if ((abs (if (not (null s2)) then (length (if (not False) then s3 else (s1 ++ s2))) else (safeMod (- (length s2)) (min (if (if True then False else True) then (abs (length s1)) else (abs (length s1))) (if False then (min (length s1) (length s1)) else (length s1)))))) > (length s2)) then ((length s2) > (length s1)) else False)
```

```
((if False then (length s1) else (length (if ((min (length s3) (if False then (length s1) else (length s1))) >= (min (max (length s1) (length s2)) (max (length s3) (length s2)))) then ((if False then s2 else s3) ++ s2) else s2))) < (abs (length s3)))
```

```
((min (abs (length s3)) (max (length s1) (length s2))) < (min (length s3) (abs ( (min ((*) ((+) (if (not True) then (if False then (length s3) else (length s3)) else (length s2)) ((-) (min (length s2) (length s2)) (length s1))) ((-) (abs (if True then (length s1) else (length s3))) (max (max (length s1) (length s2)) (abs (length s1))))) (safeIntDiv (min (max (abs (length s1)) (if False then (length s1) else (length s3))) (length (s1 ++ s3))) (if False then (abs ((+) (length s1) (length s2))) else (if (null s2) then (max (length s1) (length s3)) else (safeIntDiv (length s3) (length s2))))))))))
```

```
((max (safeMod (length s3) (length (safeInit s2))) (if False then (length s1) else (length s1))) < ( (safeMod (length s2) (length s3))))
```

```
((abs (if False then (length s3) else (length s1))) < (safeMod (min (length s3) (length s2)) (abs (length s3))))
```

```
( ((if False then (length s2) else (length s2)) < (min (length s3) (length s3))) && ((length s1) /= ( (if (if True then True else False) then (abs (max (length s2) (length s1))) else ((-) (if False then (length s3) else (length s2)) (length s1))))) )
```

```
( ((length s2) > (length s1)) && ((length s3) > (length s2)) )
```

```
((if ((min (length s3) (length s2)) > (max (length s1) (length s1))) then (max (length s2) (length s1)) else (max ((-) (abs (abs (length s3))) (safeMod (if False then ((*) (max (if False then (length s3) else (length s2)) (length s1)) (- (length s2))) else (min (abs (min (length s2) (length s1))) (abs (if True then (length s3) else (length s1))))) (if True then (length s2) else ( ((-) (length s3) (max (length s1) (length s1))))))) (length s1))) < (length s3))
```

```
((if ((max (safeMod (length s2) (length s3)) ( (length s3))) > (max (min (length s2) (length s3)) (min (length s3) (length s2)))) then (min (length s3) (length s1)) else (if False then (length s3) else (length s2))) < (length s2))
```

```
((min (safeMod ( (abs (if False then (abs (min (abs (length s2)) (- (length s2)))) else (min (length s3) (min (min (length s3) (length s3)) (if True then (length s2) else (length s1))))))) (max (- (max (max (safeIntDiv ((*) (length s3) (length s3)) (length s1)) (- (abs (length s3)))) (max ((-) ( (length s2)) (abs (length s2))) (length s1)))) (max (length s3) (max (- (if False then (min (length s2) (length s2)) else ((-) (length s1) (length s1)))) (- ((-) (length s3) (max (length s3) (length s3)))))))) (length s2)) > (abs (length s1)))
```

```
( ((length (if (null s1) then (if False then (safeInit s3) else (if True then s1 else s2)) else s1)) < (length s2)) && ((max (length s1) (length s2)) < (abs (length s3))) )
```

```
((safeMod (length s2) (length s3)) > (max ((*) (length (safeTail (safeInit s2))) (max (safeIntDiv (max (min (abs (length s2)) (abs (min (length s3) (length s1)))) ((+) (safeIntDiv ((+) (length s3) (length s2)) (max (length s1) (length s2))) (max (max (length s3) (length s3)) (max (length s1) (length s1))))) (length s3)) (- (min (length (safeInit s2)) (length s1))))) (length s1)))
```

```
((safeMod (length s2) (length s3)) > (max (length s1) (length (if False then s1 else (safeTail (safeInit s2))))))
```

```
((abs (abs (max (min ((-) (max ((+) (abs (length s2)) (safeMod (length s2) (length s2))) ( ( (length s1)))) (if (if True then False else False) then ((*) (if True then (length s2) else (length s3)) (length s3)) else ( ((-) (length s3) (length s1))))) (abs ((+) ((+) (length s1) (length s3)) ( ((+) (length s2) (length s2)))))) (if False then (max (min (max (length s1) ( (length s2))) ( (max (length s3) (length s3)))) (max (if (s2 == s2) then (min (length s1) (length s1)) else (abs (length s2))) (length (safeInit s1)))) else (abs (length s1)))))) < (abs (safeMod (length s2) (length s3))))
```

```
( ((length s2) < (if False then (abs (min (min (if True then ((*) (length s3) (length s3)) else (if False then (length s3) else (length s1))) (length (s2 ++ s2))) (safeIntDiv (min (length s1) ( (length s3))) (max (- (length s1)) (abs (length s2)))))) else (abs ((-) (min (abs (abs (length s3))) ((*) (safeIntDiv (length s2) (length s3)) (abs (length s3)))) (abs (abs (abs (length s3)))))))) && ((length s2) > (length s1)) )
```

```
( ((length s3) > (length s2)) && ((abs (length s1)) < (max (max (abs (length (if True then s1 else s3))) (min (max ((+) (- (length s3)) ((+) (length s3) (length s2))) (safeMod (abs (length s1)) (min (length s2) (length s3)))) (length (safeInit s3)))) (length s2))) )
```

```
(if ((length s1) >= (length s2)) then ((length (safeInit s3)) > (length s3)) else ( True && ((length s2) < (length s3)) ))
```

```
( ((max (length s3) (length s3)) > (min (length s3) (length s2))) && ((abs (max (safeIntDiv (min (if False then (safeMod (length s2) (length s2)) else (if True then (length s2) else (length s2))) (min (length s2) (- (length s2)))) (min (if False then (if False then (length s2) else (length s2)) else (safeIntDiv (length s1) (length s2))) (- (min (length s3) (length s1))))) (abs (max (min (length s2) (length s2)) (length (if False then s1 else s2)))))) > (length (if False then (safeTail (s1 ++ s2)) else s1))) )
```

```
(not ((length s2) >= (if (( ( (if False then (length s1) else (length s1)))) < ((*) (min ((-) (length s2) (length s1)) (min (length s3) (length s2))) (if True then (abs (length s3)) else ( (length s3))))) then ( (length s3)) else (length (safeTail (if True then s2 else s1))))))
```

```
( ((length s2) > (length s1)) && ((max (length s2) (length s1)) < (if ( False && False ) then (length s3) else (length s3))) )
```

```
( ((if False then (length s3) else (length s3)) > (max (length s1) (length s2))) && ((min (if (not False) then (length s2) else (length s3)) ((+) (length s2) (abs (length s3)))) > (if (if ( True || False ) then ((min (if False then (length s2) else (length s3)) ((+) (length s2) (length s2))) > (if False then (max (length s2) (length s3)) else (abs (length s3)))) else (s3 == s2)) then (safeIntDiv ((*) (- (length (if False then s1 else s1))) ((+) (if (null s3) then (safeMod (length s3) (length s3)) else (max (length s3) (length s1))) (if False then (safeIntDiv (length s1) (length s1)) else (abs (length s2))))) (length s3)) else (abs (length s1)))) )
```

```
((min (length (safeInit s3)) (length s2)) > (max (length (safeTail s2)) (length s1)))
```

```
((if ((length s3) <= (length s2)) then (length s1) else (length s2)) > ( (length s1)))
```

```
((if ((length s2) < (length s3)) then (max (length s1) (length s1)) else (if False then (length s3) else (length s3))) < (if False then (safeMod (length s1) (length s3)) else ((-) ((-) (min (length (safeInit s3)) (abs (length s2))) (abs (safeMod (abs (length (safeInit s2))) (safeIntDiv (safeMod (abs (length s1)) ((-) (length s3) (length s3))) (abs (max (length s3) (length s1))))))) (max ( (abs (safeIntDiv (abs (safeMod (length s1) (length s3))) (max ((*) (length s3) (length s2)) (max (length s3) (length s3)))))) (- (length s3))))))
```

```
(if ((abs (length s1)) < (safeMod (length s2) (length s3))) then ((length s2) < (length s3)) else (odd (max (- (length (if False then (safeTail s3) else (s1 ++ s3)))) (min (length s1) (safeMod ((*) (max (min (length s3) (length s3)) (max (length s2) (length s3))) (safeIntDiv (safeMod (length s2) (length s2)) (safeIntDiv (length s3) (length s3)))) (abs (safeIntDiv (min (length s3) (length s1)) (min (length s2) (length s3)))))))))
```

```
( ((length s2) < (length s3)) && (((+) (abs ( (- (min (max (length s2) (length s1)) (if False then (length s2) else (length s3)))))) (min (safeIntDiv ((+) (if False then (if False then (length s1) else (length s2)) else (length s3)) (max (- (length s2)) (max (length s2) (length s1)))) (max (safeMod (if True then (length s2) else (length s2)) (abs (length s2))) (- (if False then (length s2) else (length s1))))) ((+) (safeMod (safeMod (max (length s1) (length s3)) (- (length s2))) (min (safeIntDiv (length s2) (length s1)) ((+) (length s3) (length s3)))) (- (- (min (length s1) (length s1))))))) > (length s1)) )
```

#### Compare String Lengths Python solutions

```
def evolve(in0, in1, in2):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

No succesful solutions   

:sob:

## 11. String Lengths Backwards

Given a vector of strings, print the length of each string in the vector starting with the last and ending with the first. 

Link to Haskell solutions that generalised to unseen data [here](#string-lengths-backwards-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#string-lengths-backwards-python-solutions)

#### String Lengths Backwards Haskell solutions

```
evolvedFunction :: [String] -> [Int]
evolvedFunction xs = <evolvedCodeHere>
```

No succesful solutions generalised  

:sob:

#### String Lengths Backwards Python solutions

```
def evolve(in0):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

Examples of evolved code follow:


```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
b0 = True
loopBreak% = 0
for s2 in in0[( len(li0) + len(saveSplit(s2.rstrip(s0),s2.join(ls2))) ):][len(li1):]:{:
res.insert(min(getIndexIntList(li0, i1), int(1.0)),len((s2 + s1).join(saveSplit(s2,s2))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
setListIndexTo(saveSplit(getCharFromString(s0.lstrip(s0), len(res)),getIndexStringList(in0[i2:], len(s2.join(ls2)))), divInt(( len(s1.rstrip()) - i0 ),abs(saveOrd(s1))), getIndexStringList(ls0[:i0], len(list(saveRange(i2,i0)))))
if s0.strip(s1).rstrip()[i1:] != s1.strip(s2).strip(s2.rstrip(s0)).strip().capitalize():{:
ls2.append(s1)
:}
loopBreak% = 0
for s2 in in0:{:
res.insert(abs(divInt(i0,i2)),len(s2.rstrip(s1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for forCounter% in saveSplit('K|'.rstrip(),',\	yu:?'):{:
ls1.append(s1)
b1 = b1
b0 = s2 not in s2
s0 = s2[i1:i0]

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
setListIndexTo(list(saveRange(i0,i2))[saveOrd(s1):len(saveSplit(s2,s0))][:i0], int(98457.0), i2)
loopBreak% = 0
for s0 in in0:{:
res.insert(i2,min(len(s0), len(s0.join(in0))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
while s1.lstrip(s0).rstrip().lstrip().strip() not in saveChr(i0)[:getIndexIntList(li2, i0)]:{:
res.insert(i0,i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b0 = getIndexStringList(ls0[:len(res)], min(saveOrd(s1), min(abs(i1), len(ls2)))).startswith(getIndexStringList(ls1, i0)[len(s1.rstrip(s2).strip(s0.join(ls2))):])
loopBreak% = 0
for s0 in in0:{:
ls1.insert(i1,s2)
res.insert(getIndexIntList(li2, i0),len(s0.capitalize()))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
setListIndexTo(saveSplit(s1.capitalize(),'A'.join(saveSplit(s1,s0)[:i2]))[:min(( ( len(saveSplit(s1,s0)) + len(saveSplit(s1,s2)) ) + saveOrd(s2) ), i0)], -len(li0), 'x')
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for s2 in in0:{:
res.insert(len(li0[i1:]),len(s2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for forCounter% in li2:{:
deleteListItem(res, len(s1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for s1 in in0:{:
ls0.append(s2)
ls0 = ls2
li2 = res
res.insert(len(saveSplit(s1.strip(),(s2 + s2))),max(len(s1), i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
if saveChr(min(i1, i0)).capitalize() in saveSplit(s2.strip(s2)[divInt(i0,i2):min(i0, i0)],((s0 + s2).strip(s0.lstrip()) + saveChr(i0))):{:
res.append(i0)
:}
i1 *= len(li2)
loopBreak% = 0
for s0 in in0:{:
res.insert(i2,len((s1.capitalize() + (s1 + s0))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
s1 = saveChr(int(24.0))
loopBreak% = 0
for s0 in in0:{:
res.insert(i0,max(len(s0), ( i1 + i2 )))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
li1.insert(( min(len(saveSplit(s0.lstrip(s0)[len(s1):divInt(i1,i0)].join(ls0[-i2:]),saveChr(i1).strip(s2.lstrip(s0).rstrip()).rstrip(s1))), max(len(list(saveRange(i2,i1))), max(len(saveSplit(s2,s1)[( i0 - i2 ):]), ( min(abs(( i2 * i1 )), len(saveSplit(s2,s0))) * min(len(s2.strip()), len(li1)) )))) - int(40.0) ),max(i1, len(saveSplit('z'.rstrip(),s0.join(saveSplit((s1 + s2),s1.rstrip())))[:max(abs(i2), getIndexIntList(li2, len(res)))])))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for i0 in list(saveRange(int(983.0),len(li0))):{:
ls0.append(s2.strip(s2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if len(res[len(saveSplit(s1,s0)):]) in res:{:
ls0.insert(i2,s0)
setListIndexTo(li2, i2, i2)
:}
loopBreak% = 0
for s2 in in0:{:
res.insert(-( abs(i0) - len(ls1) ),mod(len(s2),mod(( i1 + i2 ),mod(i2,i0))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for i2 in list(saveRange(min(min(abs(len(li2)), len(list(saveRange(i1,i2)))), ( ( len(saveSplit(s2,s2)) * len(s0.strip(s1)) ) * min(( len(li2) * ( i1 * i0 ) ), int(4.0)) )),int(25.0))):{:
b0 = s0.endswith(s0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for s1 in in0:{:
res.insert(i1,i2)
res = res
li0.insert(max(len(res), len(s0)),len(saveSplit(s1.strip(s2),s2)))
setListIndexTo(res, len(ls0), len(s1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
ls2.append(s1)
loopBreak% = 0
for s1 in in0[divInt(max(min(-len(s0.strip(s2)), i0), min(max(len(res), +( i2 * i2 )), i1)),max(len(s1), abs(( ( len(li0) + ( i0 * i0 ) ) * i0 )))):max(int(264.0), saveOrd((s2 + s2).capitalize()))]:{:
res.insert(len(s0.rstrip(s2)),len((s2 + s1)))
deleteListItem(li1, min(max(i1, i0), abs(i1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
li0.append(len(saveSplit(s2.lstrip().strip(s1),s1.capitalize().capitalize())))
li0.append(abs(min(saveOrd(s0.strip()), ( len(ls0) - len(saveSplit(s0,s1)) ))))
loopBreak% = 0
for s1 in in0:{:
res.insert(divInt(i1,i0),len(s1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
setListIndexTo(li1, int(629.0), mod(-int(46.0),max(+saveOrd(s0), i0)))
if saveChr(( abs(divInt(i2,i2)) + getIndexIntList(li2, i0) )).strip() not in saveSplit(getIndexStringList(in0[+i0:len(s2)], +len(ls1)),saveChr(saveOrd(s2.strip()))):{:
in0.append(s1.rstrip(s1))
setListIndexTo(res, i2, len(s1))
:}else:{:
setListIndexTo(saveSplit(s2,s1), len(li0), (s2 + s2))
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for s0 in in0:{:
ls1.insert(i1,s2)
res.insert(+i2,len(s0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if '6?' == s2.lstrip().rstrip(s0.lstrip().rstrip().capitalize()):{:
b0 = True
:}
s2 = s0
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
deleteListItem(li0, len(li2))
loopBreak% = 0
for s1 in ls1:{:
in0 = in0
res = li0
b2 = s2.startswith(s0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for s0 in in0:{:
deleteListItem(ls1, i0)
i2 -= i1
res.insert(+min(divInt(i0,i0), mod(i0,i2)),abs(max(len(s0), mod(i0,i1))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for s1 in in0:{:
res.insert(len(s2),len(s1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
setListIndexTo(ls0[len(s2.join(in0).capitalize().rstrip(s0.join(in0).strip())):], i0, (s2.join(ls0) + s2).capitalize().rstrip().join(saveSplit(s0.strip().strip(s2.join(ls1)).lstrip((s1 + s0).lstrip()),s0.strip(s2).rstrip(s0.strip()).join(saveSplit(s1.join(ls2),s0.capitalize())))).rstrip())
in0 = saveSplit(getIndexStringList(saveSplit(s0,s1)[len(ls0):], max(abs(min(i0, i2)), min(len(ls1), abs(i1)))).lstrip(getCharFromString(s1, i0).rstrip()[:( max(( i0 - i0 ), len(s1)) + i2 )]),saveChr(mod(i1,i2)).rstrip(s2.strip(s2).join(in0).rstrip(s1[i0:i0])).join(saveSplit(s0.strip(),s2)[int(8.0):]).join(ls0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for s2 in in0:{:
res.insert(min(i1, i2),len(s2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
s2 = getIndexStringList(saveSplit(s0.capitalize(),(s1 + s1))[getIndexIntList(res, i2):], ( max(len(s2.rstrip()), i0) * min(min(mod(i2,i0), -i2), int(2.0)) ))
b2 = s0 not in ls0
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for s1 in in0:{:
li2.append(len(li0))
res.insert(+len(s1.rstrip(s1)),+len(s1.rstrip(s2)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
s1 = s2
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for s1 in in0[len(s2):]:{:
ls2.insert(i1,s1)
ls0 = ls2
res.insert(abs(min(i1, i1)),len((s2 + s1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while int(3.0) in list(saveRange(len(li0),abs(getIndexIntList(list(saveRange(i0,i1)), +( i1 - i0 ))))):{:
setListIndexTo(li1, i0, i2)
ls1.insert(divInt(-i2,abs(i1)),getIndexStringList(ls1, i2))
s0 = s1.join(ls2).rstrip()

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
deleteListItem(saveSplit(s1,s1)[len(s1):mod(i2,i1)], len(ls0[i0:]))
loopBreak% = 0
for forCounter% in in0[abs(i2):i1][:mod(( len(s1) - len(ls1) ),abs(len(ls2)))]:{:
res.append(i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b2 = not getCharFromString(s1, i2) in getCharFromString(s2, i1)
loopBreak% = 0
for s0 in in0:{:
li1.append(i0)
i1 = i1
res.insert(i0,len(s0))
i0 += ( i2 * i2 )

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
s2 = saveChr(i0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for s2 in in0:{:
ls0.insert(i1,s1)
res.insert(i0,saveOrd(s0))
setListIndexTo(res, abs(i2), len(s2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
li1.insert(len(list(saveRange(min(getIndexIntList(li0[i0:i1], getIndexIntList(li2, i0)), len(s2.rstrip())),len((s0 + s0).rstrip().lstrip(s1.lstrip(s0).capitalize()).lstrip())))),min(int(8.0), len(list(saveRange(mod(getIndexIntList(li2, +i2),abs(len(li0))),int(83.0))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
if s1.lstrip().rstrip(s2.strip(s2)).rstrip().rstrip((s0.join(in0) + s1.lstrip()).rstrip()) in (s0.strip() + s2.rstrip().rstrip(s2.strip(s1)).capitalize()):{:
li2.append(i0)
:}else:{:
li2.insert(i2,i2)
:}
loopBreak% = 0
for s1 in in0:{:
res.insert(getIndexIntList(li0, i2),len(s1))
li2 = li2

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
deleteListItem(saveSplit(s2.join(saveSplit(saveChr(i2),getIndexStringList(in0, i2).strip(s2))).strip(),saveChr(saveOrd((s2 + s0))).lstrip(getCharFromString(getCharFromString(s0, i1).lstrip(s0.strip(s0).rstrip((s2 + s1))), len(li0)))), i1)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for s0 in in0:{:
ls2.insert(i2,s1)
res.insert(( i0 - i2 ),len(s0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if saveChr(min(max(len(in0), len(li1)), len(s1.capitalize()))).rstrip() != 'k':{:
s1 = s0
:}else:{:
deleteListItem(li2, i2)
:}
if max(len(in0), ( len(getIndexStringList(saveSplit(s0,s1), ( i2 * i2 ))) + int(584.0) )) in li2:{:
deleteListItem(li0, max(i0, i2))
:}else:{:
b0 = b0
deleteListItem(saveSplit(s1,s2), -i2)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
in0 = in0
li0 = list(saveRange(getIndexIntList(list(saveRange(i2,i0)), getIndexIntList(res, i2)),len(s2)))
loopBreak% = 0
for s0 in in0:{:
res.insert(abs(abs(i0)),len(s0.lstrip(s1)))
ls1 = ls0[i0:]

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
while not ( getCharFromString(s1.rstrip().lstrip(), saveOrd(s0)) == s2.capitalize().rstrip(s2.capitalize()).lstrip().lstrip() or s1.lstrip(s1).lstrip().strip((s2 + s2).lstrip()).strip() in ':j' ):{:
deleteListItem(li2, ( i2 * i2 ))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for s0 in in0:{:
res.insert(i2,len(s0.strip(s2.rstrip(s0))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
ls1.insert(+len(res),(getCharFromString(s2.lstrip(), i2).join(ls0).strip() + saveChr(min(i0, i1)).lstrip('q')))
li2.append(len(getIndexStringList(ls0, abs(saveOrd(s2)))))
loopBreak% = 0
for s0 in in0:{:
res.insert(max(i2, i2),len(s0))
li1 = li2

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i0 in list(saveRange(max(i0, min(len(ls0), abs(len(s2.lstrip().strip())))),len(((s1.join(ls1) + s0).lstrip(getCharFromString(s2.lstrip(), abs(i0))) + getCharFromString(s2.lstrip(), abs(i0))).lstrip()))):{:
li0.append(i0)
setListIndexTo(res, i1, i0)
in0.insert(int(6.0),s1.strip(s2).strip(s1.join(ls1)))
b2 = s2.strip(s1) == s1.lstrip()

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
while b1:{:
i0 -= len(ls2)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for s2 in in0[min(abs(abs(min(min(divInt(i0,i2), i1), max(( i2 - i2 ), min(i2, i2))))), ( saveOrd((s2.rstrip() + s1.lstrip(s2))) - int(252.0) )):]:{:
res.insert(max(len(li0), +i1),( len(s2) + ( i0 - i1 ) ))
b0 = abs(i1) in res

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
while b1:{:
in0.insert(i1,s0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for s0 in in0:{:
li1.insert(i2,i0)
res.insert(( i0 + i1 ),len(s0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
ls0 = in0[:i1][len(li1):-( i2 * i1 )][:getIndexIntList(list(saveRange(i2,i2)), ( -i0 * i2 ))]
ls1 = saveSplit(saveChr(len(saveSplit(s0,s0))).strip(s2.strip().strip()).rstrip(),'U'[( i0 + len(s1[i1:i1]) ):])
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
setListIndexTo(ls2[:int(40.0)], divInt(( int(24.0) - len(list(saveRange(i2,i1))) ),min(i2, max(-len(s1), len(li0)))), (((s1 + s0) + s2.capitalize()).lstrip() + (s1.strip(s1) + s1.strip(s1)).rstrip()).lstrip(getIndexStringList(ls2, mod(i0,i0)).rstrip(getCharFromString(s0.lstrip(), mod(i2,i1)))))
loopBreak% = 0
for s2 in in0:{:
i1 = i1
res.insert(getIndexIntList(li0, i1),max(max(i1, i2), len(s2)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
setListIndexTo(res, max(i0, i1), len(s2))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
for s1 in in0:{:
ls0.insert(getIndexIntList(li2, i2),saveChr(i0))
res.insert(getIndexIntList(li1, i1),+len(s1.strip(s0)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
i0 = divInt(i2,len(list(saveRange(i1,i2))))
loopBreak% = 0
for s2 in saveSplit(s1.strip(s1)[:len(ls2)],getIndexStringList(ls2, i1).strip(s1.lstrip(s0).capitalize()))[:len('Sb')]:{:
ls2.insert(min(i2, i1),s0.lstrip(s2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for s2 in in0:{:
res.insert(min(-i2, len(s0)),len((s0 + s2)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
deleteListItem(list(saveRange(divInt(int(41.0),i2),+mod(( i1 * min(len(res), ( i2 * i0 )) ),int(1.0)))), len(saveSplit(getIndexStringList(ls2, i1).rstrip()[len(li1):len(saveChr(i0))],getIndexStringList(saveSplit('m',s2.rstrip().strip(s1.rstrip(s0))), -abs(abs(i0))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
res = list(saveRange(i2,i2))[:saveOrd(s1)]
deleteListItem(ls1, len(li1))
loopBreak% = 0
while s2.lstrip(getIndexStringList(saveSplit(s2.lstrip(),s0.strip()), saveOrd(s0)).strip()) not in getCharFromString(s0.rstrip(s2).strip().lstrip().lstrip(saveChr(len(li1))), max(len(ls0[i2:i1]), -( len(in0) - min(i1, i1) ))):{:
in0.append(s1)
res.append(+i0)
li0.append(max(len(s0), len(in0)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for s1 in in0:{:
s0 = s0.rstrip(s2)
res.insert(len(li0[i0:i1]),len((s1.capitalize() + s2.strip())))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
i0 = ( i0 + min(i0, ( max(min(i2, i1), mod(i1,i0)) + max(max(i2, i1), -i1) )) )
loopBreak% = 0
for s2 in in0:{:
res.insert(( i0 * i1 ),len(s2))
setListIndexTo(saveSplit(s2,s2), mod(i1,i1), s0.capitalize())

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while saveChr(abs(saveOrd(s0[i1:]))) == ((s0.capitalize() + s1.capitalize()) + s1.rstrip(s1).join(ls2)).rstrip()[-max(max(max(i2, i2), ( i0 - i2 )), abs(abs(i0))):abs(max(abs(len(ls2)), saveOrd(s2)))].lstrip():{:
i2 += abs(i2)
in0.insert(int(9.0),getIndexStringList(ls1, i0).lstrip())

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
setListIndexTo(saveSplit(s0,'Q\
\
'), min(-min(min(max(i0, i1), i2), max(len(li1), len(li1))), getIndexIntList(li1, min(abs(i1), abs(i2)))), (s2 + s1)[min(i0, i0):][len(ls0[i0:]):])
loopBreak% = 0
for s2 in in0:{:
res.insert(min(-i1, len(s0)),divInt(len(s2),min(i0, i1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
deleteListItem(saveSplit('m',s1[i1:])[len(saveSplit(s0,(s2 + s1))):max(getIndexIntList(li0, i2), saveOrd(s1))][:getIndexIntList(list(saveRange(divInt(i0,i0),divInt(i1,i1))), abs(saveOrd(s2)))], ( saveOrd(saveChr(len(s2)).rstrip()) + int(7.0) ))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
li0, li1, li2 = [], [], []
ls0, ls1, ls2 = [], [], []
res = []
loopBreak% = 0
while getCharFromString(s2.capitalize().rstrip(s1.strip()), abs(len(ls1))) in saveSplit('I'.strip(saveChr(i0)),s2.strip(s2.rstrip()).lstrip()):{:
in0.append(s2)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b1 = getIndexStringList(in0, max(i2, i0)) != s0.strip(s1)[i1:i0].join(saveSplit(s0[i2:],'{'))
li2.insert(len(li0[:len(s2.strip(s1))][:abs(( len(s2.join(in0)) + min(max(i1, i1), ( i1 + i1 )) ))]),saveOrd(s2.join(saveSplit(s0[i2:].rstrip(),getIndexStringList(saveSplit(s2,s0), len(s2))))))
loopBreak% = 0
for s0 in in0:{:
res.insert(min(len(ls0), saveOrd(s0)),abs(len((s2 + s0))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```


## 12. Last Index Of Zero

Given a vector of integers, at least one of which is 0, return the index of the last occurrence of 0 in the vector.

Link to Haskell solutions that generalised to unseen data [here](#last-index-of-zero-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#last-index-of-zero-python-solutions)

#### Last Index Of Zero Haskell solutions

```
evolvedFunction :: [Int] -> Int
evolvedFunction xs  =  <evolvedCodeHere>
```

No succesful solutions generalised

:sob:

#### Last Index Of Zero Python solutions

```
def evolve(in0):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

Examples of evolved code follow:


```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = int()
loopBreak% = 0
while len(list(saveRange(int(25.0),res))) not in in0[len(in0[len(li0):]):]:{:
li0.append(i0)
deleteListItem(li2, i2)
li2.insert(len(li2),-i2)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while len(list(saveRange(divInt(+max(i1, i0),max(-res, min(i1, i0))),( getIndexIntList(in0, i2) - abs(i0) )))) not in in0:{:
in0.append(i1)
deleteListItem(li1, i0)
deleteListItem(li1, min(res, i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
res = len(in0[len(li0):])
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = int()
loopBreak% = 0
while getIndexIntList(li1, min(+res, len(in0))) in in0[i1:][max(len(li1), abs(i0)):]:{:
li1.append(res)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
deleteListItem(li1, abs(len(list(saveRange(-i1,divInt(i0,res))))))
loopBreak% = 0
while abs(min(+i0, len(li0[min(i1, i2):]))) is res:{:
res = i1
i1 += len(li1)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
deleteListItem(list(saveRange(( +mod(getIndexIntList(in0, i2),+len(li1)) + abs(len(li1)) ),len(li0[:abs(i1)]))), abs(min(mod(mod(i0,i1),abs(getIndexIntList(in0, ( i2 - res )))), getIndexIntList(li2, --len(in0)))))
```

## 13. Vector Average

Given a vector of floats, return the average of those floats. Results are rounded to 4 decimal places.

Link to Haskell solutions that generalised to unseen data [here](#vector-average-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#vector-average-python-solutions)

#### Vector Average Haskell solutions

```
evolvedFunction :: [Double] -> Double
evolvedFunction xs = <evolvedCodeHere>
```

Examples of evolved code follow:


```
(safeDiv (sum xs) (fromIntegral ((max (max (length xs) (length xs)) (min (length xs) (length xs))))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (max (sum (zipWith safeDoubleMod xs xs)) (max (fromIntegral ((length xs))) (safeDiv (safeDiv (safeMinimumDoubles xs) (sum xs)) (abs (safeLastDoubles xs))))))
```

```
(safeDiv (min (sum xs) (- (min (foldr safeDiv (safeMinimumDoubles (safeReplicate (safeMod (- (length xs)) ((-) (length xs) (length xs))) (sin (safeHeadDoubles xs)))) xs) (abs ((+) (sin (tan (tan (foldl (*) (safeMaximumDoubles xs) xs)))) ((-) ((*) (sin (foldl (-) (safeMaximumDoubles xs) xs)) (safeHeadDoubles (safeTail xs))) (safeLastDoubles ((safeMinimumDoubles xs):xs)))))))) (abs (fromIntegral ((length xs)))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (foldl (+) (safeDoubleMod (abs (sum (safeReplicate (- (min (min (length xs) (length xs)) (ceiling ((safeLastDoubles xs))))) (tan (foldl safeDoubleMod (cos (sum xs)) (safeTail xs)))))) ((-) ( (safeMaximumDoubles xs)) (min (min (tan (cos (tan (foldr (*) (safeMaximumDoubles xs) xs)))) (safeLastDoubles (safeTail xs))) (safeLastDoubles xs)))) xs) (fromIntegral ((length (zipWith (-) ((foldr safeDoubleMod (safeHeadDoubles xs) xs):xs) xs)))))
```

```
(safeDiv (sum xs) ( (fromIntegral ((length xs)))))
```

```
(safeDiv (sum xs) ( (fromIntegral ((length xs)))))
```

```
(safeDiv ( (sum xs)) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (max (sum xs) (sum xs)) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length (map cos (map tan xs))))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral (((+) (length (filter (== (safeHeadDoubles xs)) (map cos ((safeMaximumDoubles xs):xs)))) (length (map tan xs))))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (abs (fromIntegral ((length xs)))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
( (safeDiv (foldl (+) (safeDoubleMod (fromIntegral ((truncate ((cos (safeHeadDoubles xs)))))) ( (abs (foldl (-) (- (sin (foldl (*) (safeMaximumDoubles xs) xs))) xs)))) (take (length xs) xs)) (fromIntegral (( (length xs))))))
```

```
(safeDiv (sum xs) ((-) (sum (zipWith safeDoubleMod (drop (max (max (length xs) ((*) (length xs) (length xs))) ((*) (max (length xs) (length xs)) (max (length xs) (length xs)))) xs) (zipWith safeDoubleMod xs (safeTail xs)))) (- (fromIntegral ((length xs))))))
```

```
((*) (safeDiv (sum xs) (fromIntegral ((length xs)))) (cos (sin (foldr (*) (- (sum (safeReplicate (truncate ((sin (safeHeadDoubles xs)))) (safeHeadDoubles xs)))) xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (safeLastDoubles (safeReplicate (length xs) ( (sum xs)))) (max ( (fromIntegral ((length xs)))) (safeMinimumDoubles (map sin xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (max (fromIntegral ((length (zipWith safeDiv (take (round ((safeMinimumDoubles xs))) (map cos xs)) (safeInit ((safeLastDoubles xs):xs)))))) (fromIntegral ((length xs)))))
```

```
(safeDiv (max (sum xs) (sum xs)) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (foldl (+) (safeMaximumDoubles (zipWith (-) xs xs)) xs) (fromIntegral ((length xs))))
```

```
(min (abs (min (safeDiv (fromIntegral ((safeMod (- (safeIntDiv (round ((foldr safeDoubleMod (safeMinimumDoubles xs) xs))) (abs (abs (length xs))))) (truncate ((foldr safeDiv (sin (safeMinimumDoubles xs)) (filter (>= (safeLastDoubles xs)) xs))))))) (foldr safeDoubleMod ((-) (foldr safeDiv (safeMaximumDoubles xs) xs) (foldl safeDiv (fromIntegral ((truncate ((cos (sum xs)))))) (map sin xs))) (((+) (abs (safeDiv (safeMinimumDoubles xs) (safeMaximumDoubles xs))) (max (safeMinimumDoubles xs) ((+) (sum xs) (safeLastDoubles xs)))):xs))) (fromIntegral ((- (ceiling ((max (sum (zipWith (*) xs xs)) (max (cos (sin (sum xs))) (safeMaximumDoubles (map cos xs))))))))))) (safeDiv (sum xs) (fromIntegral ((length xs)))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) ( (abs (fromIntegral ((length xs))))))
```

```
(safeDiv (sum xs) (fromIntegral ((length (map sin xs)))))
```

```
(safeDiv (foldr safeDoubleMod (sum xs) (take (min (floor ((safeDiv (safeLastDoubles (xs ++ xs)) (foldl (-) ((*) (safeMinimumDoubles xs) (min (safeLastDoubles xs) (safeMinimumDoubles xs))) (zipWith safeDiv xs xs))))) (max (- (length xs)) ( (length xs)))) xs)) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) ( (fromIntegral ((length xs)))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
( (safeDiv (sum xs) (fromIntegral ((length (map cos xs))))))
```

```
(safeDiv (sum xs) (max (max (tan (sum (drop (safeIntDiv ((*) (min (length xs) (length xs)) (max (length xs) (length xs))) ( (min (length xs) (length xs)))) (map cos xs)))) (min (safeMaximumDoubles (map sin xs)) (safeLastDoubles xs))) (max (fromIntegral ((length xs))) (fromIntegral ((safeIntDiv (length xs) (length xs)))))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((min (length xs) (length xs)))))
```

```
(safeDiv ( (sum xs)) (abs (fromIntegral ((length xs)))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum (drop (min ((*) ((*) (min (abs (abs (length xs))) (min ( (length xs)) (abs (length xs)))) (ceiling ((safeDoubleMod (tan (sum xs)) (sin (safeLastDoubles xs)))))) (ceiling ((tan (safeDiv (foldr (*) (safeLastDoubles xs) xs) ((+) (safeHeadDoubles xs) (sum xs))))))) (min (- (- ((-) (safeMod (length xs) (length xs)) (abs (length xs))))) (floor ((safeMinimumDoubles (safeInit xs)))))) xs)) (fromIntegral ((max (length xs) (length xs)))))
```

```
(safeDiv ( (max (sum xs) (safeDiv (cos (foldr (-) (- (safeMinimumDoubles (safeInit xs))) xs)) (sum xs)))) (fromIntegral ((abs (length xs)))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (max (sum xs) (sum xs)) (fromIntegral ((max (length xs) (min (floor ((safeLastDoubles xs))) (min (abs (max (ceiling ((foldl safeDiv (safeMaximumDoubles xs) xs))) (abs (floor ((safeHeadDoubles xs)))))) (round (((-) ( (safeLastDoubles xs)) (safeMaximumDoubles xs))))))))))
```

```
(safeDiv (sum xs) (fromIntegral ((min (min (length xs) (length xs)) ((+) (length ((sum (xs ++ xs)):(zipWith (*) (map sin xs) (safeInit xs)))) (length xs))))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(foldr safeDiv (foldr safeDiv (fromIntegral ((min (length xs) (length xs)))) (safeReplicate (length (zipWith safeDoubleMod xs (zipWith (-) (safeInit xs) xs))) (sum xs))) (safeReplicate (length (zipWith safeDoubleMod xs ((zipWith safeDoubleMod xs xs) ++ (safeInit xs)))) (sum xs)))
```

```
(safeDiv (sum xs) (max ( (min (- (min (abs (sin (safeHeadDoubles xs))) (fromIntegral ((max (length xs) (length xs)))))) (sin (safeLastDoubles (zipWith (+) xs xs))))) (fromIntegral ((length (drop (abs ((-) (length xs) (length xs))) (map tan xs)))))))
```

```
(safeDiv (sum xs) (fromIntegral ((max (- (length xs)) (min (length xs) (length xs))))))
```

```
(safeDiv (sum xs) (fromIntegral (((*) (max (length xs) (length xs)) (safeIntDiv (length xs) (length xs))))))
```

```
(safeDiv (sum xs) (fromIntegral ((min (length xs) (length xs)))))
```

```
(min (max (safeDiv (sum xs) ( (fromIntegral ((max (safeIntDiv (safeMod (round ((sum xs))) (round ((safeHeadDoubles xs)))) (- (safeIntDiv (safeMod (length xs) (length xs)) (abs (length xs))))) (abs (length xs))))))) (foldr (+) (sin ((-) (foldr safeDoubleMod (safeDiv (safeMinimumDoubles (zipWith (*) xs xs)) (safeMaximumDoubles (map tan xs))) ((cos (foldr (+) (safeLastDoubles xs) xs)):xs)) (safeLastDoubles (zipWith safeDiv xs ((safeMinimumDoubles xs):xs))))) xs)) (safeDiv (sum xs) ( (fromIntegral ((max (safeMod (safeMod (round ((sum xs))) (round ((safeHeadDoubles xs)))) (length (map tan xs))) (abs (length xs))))))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum xs) (fromIntegral ((length xs))))
```

```
(safeDiv (sum (filter (/= (fromIntegral ((safeIntDiv (length xs) ((+) (round ((safeMaximumDoubles (map cos xs)))) (abs (max (ceiling ((safeMaximumDoubles xs))) (floor ((safeLastDoubles xs)))))))))) xs)) (max (safeMinimumDoubles (map cos xs)) (fromIntegral ((length xs)))))
```


#### Vector Average Python solutions

```
def evolve(in0):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

No succesful solutions generalised   

:sob:

## 16. Super Anagrams

Given strings x and y of lowercase letters, return true if y is a super anagram of x, which is the case if every character in x is in y. To be true, y may contain extra characters, but must have at least as many copies of each character as x does. 

Link to Haskell solutions that generalised to unseen data [here](#super-anagrams-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#super-anagrams-python-solutions)

#### Super Anagrams Haskell solutions

```
evolvedFunction :: String -> String -> Bool
evolvedFunction cs ds  =  <evolvedCodeHere>
```

Examples of evolved code follow:


```
(if ((filter (== (safeHeadChars cs)) (if True then ds else cs)) <= (safeInit (safeReplicate (safeFromEnumCharInt '#') 'C'))) then (null cs) else ((length ds) >= (length cs)))
```

```
(if ( ( (even (length cs)) || ((- (-694)) <= (max 668 (-037))) ) || (((safeTail ds) ++ ds) /= (filter (/= (safeLastChars cs)) ds)) ) then ((length ds) >= (length cs)) else ( ((min 412 (-690)) >= ((+) (-325) (if True then (-655) else (-451)))) && False ))
```

```
(if (null ((filter (>= (safeHeadChars cs)) ds) ++ (filter (>= ';') (safeTail ds)))) then (((if ((length ds) <= (length ds)) then (filter (<= 'T') ds) else (cs ++ cs)) ++ cs) <= ((ds ++ ds) ++ ds)) else ((length cs) <= (length ds)))
```

```
(if (null (safeTail (safeInit ('-':cs)))) then ((safeLastChars ds) >= (safeLastChars (cs ++ (filter (>= (safeLastChars ds)) (safeTail ds))))) else ( ((safeToEnumIntChar 322) /= 'S') && ((length ds) >= (length cs)) ))
```

```
(if (if ( ( (ds < cs) && (not False) ) && (null (safeInit ds)) ) then (092 <= (min (-934) 553)) else True) then ((length cs) <= (length ds)) else (if False then False else (if True then ( ('d' >= 'w') && False ) else ( (cs == ds) || (751 <= (-895)) ))))
```

```
( ( ((length ds) >= (length cs)) && ((abs ((+) (-882) (-730))) /= (if False then (-449) else (safeFromEnumCharInt 'E'))) ) && (456 /= (if (ds >= (filter (>= 'W') cs)) then 187 else ((+) (length ds) (max 455 (-158))))) )
```

```
(if ((safeTail ((safeLastChars cs):ds)) /= (((if False then cs else ds) ++ (safeTail ds)) ++ (safeInit (if True then cs else (if True then ds else ds))))) then ((length cs) <= (length ds)) else (if False then ((min (-730) (min (-834) (-871))) <= (safeMod 723 (min (-099) 125))) else ((safeLastChars cs) <= (safeHeadChars ds))))
```

```
( ((length ds) > (if (ds < (if False then cs else cs)) then (safeIntDiv 728 (max 372 372)) else (-053))) && ((length ds) >= (length cs)) )
```

```
(if (ds < (filter (< (safeHeadChars cs)) ((if False then cs else ds) ++ (cs ++ ds)))) then (cs < (filter (<= (safeToEnumIntChar (safeIntDiv (-227) (-233)))) ((safeReplicate (-751) 'l') ++ cs))) else ((length cs) <= (length ds)))
```

```
(if ((if True then ds else ds) == ((filter (== (safeHeadChars cs)) (ds ++ ds)) ++ ('b':(filter (>= 'q') cs)))) then ((if (odd ( (-855))) then (max (max 077 (-968)) 630) else ( (-129))) <= (min (max (-986) 653) (abs (-627)))) else ((length ds) >= (length cs)))
```

```
(if ( ((if (if False then True else False) then ds else (filter (< (safeLastChars cs)) ds)) >= (if (178 < 799) then ds else (if False then cs else ds))) && (odd 409) ) then (if ((('Y':cs) ++ ds) < cs) then (not ((length ds) <= (length ds))) else (odd 501)) else ((length cs) <= (length ds)))
```

```
(if (null (if False then ds else (filter (>= (safeLastChars cs)) ('J':ds)))) then ((safeTail (safeReplicate 333 (if True then '<' else '`'))) >= (if ( True && True ) then (('n':ds) ++ ds) else ('[':(safeInit ds)))) else (if False then (even (safeFromEnumCharInt (safeToEnumIntChar (-061)))) else ((length ds) >= (length cs))))
```

```
(if ((max (length ('i':cs)) (if True then (-734) else (if False then (-778) else 363))) /= (safeIntDiv ((-) 350 (safeIntDiv (-364) (-386))) 168)) then ((length cs) <= (length ds)) else ((if (null (safeInit ds)) then cs else (filter (< '2') (cs ++ ds))) <= ds))
```

```
(if (null (filter (== (safeHeadChars cs)) ds)) then (if ('(' /= 'h') then ( (even (-665)) || (null cs) ) else False) else ( ((-096) > (length ds)) || ((length cs) <= (length ds)) ))
```

```
(if (null (filter (== (safeLastChars cs)) ds)) then (cs <= ('A':(safeTail ('b':ds)))) else ((length ds) >= (length cs)))
```

```
(if ( (if (if (null (safeTail ds)) then False else ((-652) /= (-946))) then True else (if ((length ds) <= (length cs)) then ((safeLastChars ds) == (safeHeadChars cs)) else (ds == (if False then ds else ds)))) || ((safeTail (safeTail ds)) >= ds) ) then ((length cs) <= (length ds)) else (not True))
```

```
(if (null (filter (>= (safeHeadChars (cs ++ ds))) ('<':(if False then ds else ds)))) then ( False && ((max (-408) (if True then (-343) else 305)) >= (length ds)) ) else (if ((safeHeadChars cs) <= (safeHeadChars cs)) then ((length ds) >= (length cs)) else (not (odd 543))))
```

```
(if (((if (246 < (-457)) then '4' else (safeLastChars cs)):(filter (>= (safeLastChars cs)) ds)) /= cs) then ((length ds) >= (length cs)) else ((safeToEnumIntChar ((+) (safeIntDiv (length ds) (-440)) 098)) >= '|'))
```

```
(if (null (filter (>= (safeHeadChars cs)) ds)) then (null cs) else ((length ds) >= (length cs)))
```

```
(if ((if (ds < cs) then (min (max 338 295) (length ds)) else 238) == (if (null cs) then 131 else (safeIntDiv 484 368))) then ( (even ((+) 957 (-156))) && ((abs (-274)) <= (length (safeInit ds))) ) else ((length ds) >= (length cs)))
```

```
(if ((length (filter (/= (safeLastChars cs)) ds)) /= (length (if (odd (-982)) then (if False then ds else cs) else ds))) then ((length cs) <= (length ds)) else ((safeTail ('_':(filter (> '6') cs))) == (safeTail (filter (> (safeLastChars ds)) (ds ++ ds)))))
```

```
((if (if ((safeInit ds) /= (safeReplicate (-363) 'E')) then False else (if ((-103) < (-429)) then (if False then True else False) else (ds < cs))) then (-071) else (length (if (if True then False else False) then ds else ds))) >= (length cs))
```

```
(if (null ((safeTail ds) ++ (if True then (safeReplicate (-134) 'I') else (safeTail cs)))) then (if (if (ds < ds) then True else (ds < (if True then cs else cs))) then (even (safeFromEnumCharInt 'g')) else ( ((length ds) >= (length cs)) && True )) else ((length ds) >= (length cs)))
```

```
(if ( ((safeInit (if True then cs else ds)) /= (safeInit ds)) || (if (if (odd 741) then (null cs) else True) then False else False) ) then ((length cs) <= (length ds)) else (cs <= (if ((-671) >= (min 840 854)) then cs else ds)))
```

```
(if (if ((-136) <= ((*) (length cs) (min 790 (-874)))) then ((safeMod 094 (-891)) > (safeIntDiv (length ds) (-982))) else (ds == (filter (/= (safeHeadChars cs)) ds))) then ((if False then (max (safeIntDiv (-657) (-873)) (safeIntDiv (-295) (-614))) else (min (abs (-485)) (max (-597) (-216)))) >= (length cs)) else ((length ds) >= (length cs)))
```


#### Super Anagrams Python solutions

```
def evolve(in0, in1):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

Examples of evolved code follow:


```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
i1 *= divInt(-abs(saveOrd('')),-max(mod(abs(max(divInt(i0,i1), min(i0, i2))),int(04.0)), int(60.0)))
res = (s2.strip(s2).rstrip(s2.strip(in1)).lstrip() + ((in0 + s0.strip()) + in1.lstrip().rstrip(in1.strip()))).lstrip()[len((in1.capitalize() + s1.strip(s0.capitalize())).capitalize().strip(getCharFromString(getCharFromString(s0, i2), int(0.0)))):mod(abs(len(in0.strip(in0.rstrip(in1)))),min(mod(int(4.0),abs(i2)), min(i1, int(1.0))))] != (in0.rstrip(in1).rstrip().lstrip((in0.strip(in0) + s2.rstrip())) + s0.lstrip().lstrip(in0.strip(in1)).strip()).strip().rstrip().strip()
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
loopBreak% = 0
while not ((s1 + s1).capitalize().strip((in0.lstrip(s1) + s2.rstrip())).lstrip() + s0.rstrip().capitalize().capitalize()).strip(getCharFromString(s2.strip(), abs(i1)).lstrip(getCharFromString(s0, i0)).rstrip()).endswith(in0.strip(in1).lstrip(saveChr(i1)).capitalize().strip().lstrip()):{:
b1 = in1.strip() in in0.strip()
res = s1.rstrip(s1.lstrip()) in s1.strip()

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while not s1[i1:saveOrd(s1)].strip(saveChr(abs(abs(i0)))).endswith(in0.rstrip((s2 + s0))[max(abs(i2), len(in1)):].strip(s1.rstrip().lstrip().rstrip().capitalize()).capitalize()):{:
i2 = i1
res = not i1 > i2
res = ((s1 + s1) + in0.lstrip()) != s1.strip()

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
if (s0[i0:].rstrip((s0.lstrip(s0) + s0.strip())) + (s1.lstrip(in0) + in0.strip(in1)).strip()).rstrip() in ',Z'.lstrip((s0 + in1)[( i2 * i1 ):len(s0)].lstrip()):{:
i0 = i1
b2 = not res
:}else:{:
b2 = False
res = s2.endswith(s1.strip(in1))
:}
loopBreak% = 0
while ( s2 != in0[len(in1):].rstrip(in1[:i1]).strip(saveChr(abs(i0))).rstrip().capitalize() or '`' == (s0.strip(s1) + s1.lstrip()).rstrip()[i2:].rstrip(s0) ):{:
res = s1.lstrip() in in0.rstrip(s2)
in0 = in0.lstrip(in0).lstrip().lstrip((in0 + s0).lstrip())

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = s0 != in1
b0 = abs(i1) >= -i2
b1 = b2
s2 = in0.lstrip().capitalize().lstrip(s0.strip(in1).rstrip()).strip(s2.lstrip().strip().strip())
loopBreak% = 0
while (s0 + s1)[:i2][i2:] not in s1.lstrip(in1).capitalize().strip((s1 + in0).rstrip()).lstrip('D'.rstrip(in0.strip(in0).rstrip(in0.rstrip(in0)))):{:
i2 *= i1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
s0 = 'g'
res = not s2[divInt(( len(in1) + max(i2, i2) ),--i1):] == in0.strip(s1).strip((in1 + s2)).strip(in1).lstrip().lstrip()
b0 = False
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
if in0.rstrip().capitalize()[abs(len(in1)):].capitalize() != (s0 + s0.capitalize()).rstrip().strip(in0.lstrip(s0.strip().lstrip())).strip():{:
res = s0 in s0
:}
if saveChr(len(in0.lstrip(s2).lstrip(in1.lstrip(s1)))) != saveChr(abs(len(s1.capitalize()))):{:
res = s0 in s0
:}
b2 = not saveChr(i1)[max(saveOrd(s0), abs(abs(mod(i1,i0)))):].startswith('Bd'.strip(getCharFromString(s1, i0).strip()).rstrip('v'.capitalize().strip(in0.strip().rstrip(in0.strip()).lstrip(saveChr(i2)))).strip())
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
i2 = divInt(saveOrd(((in0.rstrip(in1) + s2.lstrip(in1)).rstrip() + saveChr(( i0 * i2 )))),mod(len((s1.strip(s0).rstrip().lstrip() + saveChr(divInt(i1,i2)))),len(getCharFromString(s0.rstrip(in0).capitalize(), int(0.0)))))
res = in0.strip().lstrip(in0.lstrip(in0))[divInt(len(in1),max(i2, i0)):].lstrip().rstrip().lstrip() not in 'B'.rstrip(saveChr(i0).strip(s1.rstrip(s2).rstrip((in1 + s2).strip(s2.rstrip(s0)))))[:abs(mod(abs(abs(-i0)),max(-+i1, ( len(s0) - ( i1 * i0 ) ))))]
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = saveChr(( len(in0.lstrip().lstrip(s0.lstrip())) - abs(( abs(i0) * len(s2) )) )).capitalize() not in saveChr(min(len((in0.strip(in0.lstrip(in1)) + s0.lstrip(s2.lstrip()))), min(saveOrd(s0.rstrip()), len(in1.strip().lstrip(s1.strip())))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = ((s0[i0:i0].capitalize() + in0.lstrip()[len(in1):]).lstrip() + in0.lstrip(in1).lstrip()) != in1.lstrip(in1)
loopBreak% = 0
while s0.lstrip().endswith(getCharFromString(':R', abs(int(4.0))).lstrip()):{:
i1 += -+i1
i2 = i2

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
i2 = len(in0.rstrip(in1).lstrip((s2 + s0)).rstrip(in1.rstrip()).capitalize().strip(s0.capitalize().lstrip(in0).capitalize().strip()).strip())
res = s2 != in0.rstrip(s1).strip().lstrip(s0.lstrip(in0))[mod(len(in1),min(i2, max(i0, i2))):].rstrip().lstrip(((in1 + s1).lstrip(in1.lstrip(s1)).lstrip().capitalize().lstrip(getCharFromString(s2, i2).rstrip(s0.strip(s0).rstrip()).lstrip(s0.strip().capitalize().strip())) + saveChr(abs(abs(len(in0))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
s1 = s2
res = saveChr(+( i0 + i1 )).lstrip(getCharFromString(s2, i0).lstrip(s2.rstrip(s2))[int(37.0):]).rstrip(getCharFromString(s2, i1).strip(s0.rstrip().lstrip(s0.lstrip(s0))).lstrip().rstrip(s0.rstrip()[max(i0, i0):].strip())).lstrip(((s1.lstrip(in0) + in0).capitalize().capitalize() + '?').capitalize()).endswith(('?' + (in1.strip() + s1)).rstrip(s1.strip(in1).lstrip().strip()).strip(getCharFromString(in1.lstrip(in0.lstrip(s1)), divInt(abs(i0),max(i0, i0))))[+len((s2.lstrip(in0).strip(in0.strip(in1)) + (in0.rstrip() + s2.strip(s0)))):])
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
if len((in1 + s0).capitalize().lstrip()) == min(int(8.0), ( int(8.0) - abs(min(i0, i2)) )):{:
i2 *= i0
:}else:{:
i0 *= i2
:}
i1 = max(len(in1), len(s0))
res = not (in0.strip(in1).strip() + (s0 + in0).strip())[( int(1.0) * ( ( i1 + i0 ) - -i0 ) ):].lstrip(s1.strip(in1).capitalize().strip().lstrip().lstrip()) == (in1 + in0)[min(i1, i2):min(i2, i0)].rstrip()[len(saveChr(max(i1, i1))):]
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = 'V'.strip().strip()[min(mod(+min(i1, i1),-abs(i1)), saveOrd(s0)):abs(-int(8.0))] not in in0
res = '('.strip().strip()[abs(mod(i2,saveOrd(s0.rstrip(s0)))):len((in0.strip(s1) + in0.rstrip(in1))[len(in1.strip(s1)):])] not in getCharFromString(s0.strip(s0).strip(in1.strip()), ( i1 + ( i1 * i1 ) )).strip(saveChr(divInt(i0,i1)).rstrip()).strip('+'.strip().strip()).strip()
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
if saveChr(len(in1)).lstrip((s1.strip() + in0.lstrip())).capitalize().startswith((in0.strip(in1).strip(s0).strip() + s1.rstrip(s1)[min(i2, i2):]).capitalize()):{:
s0 = s1
s1 = s2.lstrip(s2)
:}else:{:
s0 = s2
in1 = s1.lstrip(s2)
:}
if ( 'Lf$' in (in1 + in1.rstrip().lstrip(in1.lstrip())).rstrip().lstrip() or ( in1.lstrip() in in0 or ( s0.strip().strip().strip(s1.strip().strip(in0.lstrip(s2))) == s1.rstrip(s1).lstrip().capitalize() and divInt(len(in1),max(len(in0), abs(i2))) is +abs(i0) ) ) ):{:
i0 += i2
res = in0.capitalize() not in s2
res = in0.capitalize() not in in1.capitalize()
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
i2 = ( len(getCharFromString(((in0 + s0) + s0.lstrip(s0)), -min(i1, i1)).lstrip(in1.rstrip(s0)[max(i2, i0):].lstrip())) - ( max(len(saveChr(mod(i2,i2))), min(saveOrd(s1.rstrip()), ( len(in0.rstrip(s0)) - saveOrd(in1) ))) * ( divInt(divInt(( min(i1, i0) + i1 ),abs(len(in0))),mod(max(max(i2, i2), len(s0)),i1)) - i1 ) ) )
res = in0.lstrip(in0.strip(in0)).rstrip(s2)[len(in1[i2:len(in1)]):].rstrip() not in saveChr(max(i2, i1)).capitalize().strip(s2[i2:i1][mod(i1,i0):].strip(s1.lstrip())).rstrip().capitalize()
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = min(abs(len(in0.capitalize()[len(in1):])), len((';' + in0.rstrip()))) is not saveOrd((in0.rstrip(in1).lstrip() + saveChr(i0)).strip())
i0 -= max(int(32566.0), saveOrd((s2 + in1.capitalize()).rstrip()[divInt(mod(( i2 * i0 ),max(i2, i2)),int(0.0)):]))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
s0 = (s0.lstrip()[max(i1, i2):+i1].rstrip(getCharFromString(s2, i1).rstrip(in1.strip(in0).lstrip())).lstrip().lstrip(in1.lstrip(s1).strip().rstrip(in0.lstrip(s2).capitalize()).strip(getCharFromString(s1.rstrip(in0), min(i0, i2))).strip()) + s0.strip().capitalize().rstrip().lstrip(saveChr(max(i1, i0))).rstrip(saveChr(divInt(i2,i1))[max(mod(i2,i1), i2):]).strip('9'.strip().strip()))
res = getCharFromString(in0.lstrip(s0).strip(s1.capitalize())[len(in1):].lstrip((s2.rstrip(saveChr(i1)) + (s1 + s2).strip(in0).strip())), -abs(( int(5.0) * int(9.0) ))) != getCharFromString(in0.lstrip().strip(in1.capitalize()).rstrip((s2 + in1).rstrip(s0.strip(s1))), len('6')).capitalize().lstrip()
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
i2 = -i1
if in1.rstrip().lstrip(s2.capitalize()).capitalize().rstrip().strip() != ','.rstrip(s2):{:
b2 = False
:}
res = in0.strip(in1) != in0.rstrip(s1)[len(in1):][( abs(( i1 - i1 )) - mod(mod(i0,i1),i0) ):].capitalize().capitalize()
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = in0.strip(s2).capitalize().rstrip(s1.strip().capitalize()).strip('+'.strip())[len(in1.lstrip(s0).capitalize().rstrip((s0.capitalize() + s1.lstrip(s0)))):] != s1.lstrip()
loopBreak% = 0
while in0.lstrip(in1) != s0.lstrip():{:
b2 = False
s1 = (in0 + in1)
res = ( s1 != s1 or i0 is i0 )
in1 = getCharFromString(in0.strip(s1), i2)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
i2 *= i2
if s0.strip(in1.rstrip(saveChr(i2))).endswith(in0.strip()[i2:].lstrip(in1.rstrip().strip().rstrip()).lstrip()):{:
i1 *= len(s0)
:}else:{:
i2 -= i0
res = not False
:}
if s1.strip(in1)[:i1].lstrip(in1.strip().lstrip(s0.capitalize()))[i1:+len((in1 + s1))].endswith(in1.rstrip().capitalize()[divInt(len(in1),len(in0)):].lstrip(in1.rstrip().strip().rstrip()).lstrip()):{:
i2 += i1
:}else:{:
res = i1 is i1
res = not b2
:}
loopBreak% = 0
while b0:{:
b1 = saveChr(i1) != in1.lstrip().capitalize()

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
i0 -= +int(4.0)
b0 = min(divInt(abs(i1),len(in0)), saveOrd(in1)) == min(saveOrd(s2), int(8.0))
loopBreak% = 0
while abs(len(s2.capitalize().strip())) < min(+int(0.0), abs(saveOrd(s1))):{:
i0 = i1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if s2 != in0.rstrip(s2).strip(s2.capitalize()).rstrip((in1.capitalize() + in1.lstrip())).capitalize().rstrip():{:
res = i1 == i1
:}else:{:
i2 = i2
:}
if s2 != (s2 + in0)[len(in1):].lstrip('%'):{:
res = s1 in in1
:}else:{:
in1 = s0
:}
i0 += int(6.0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
s0 = in0.strip().capitalize().rstrip().lstrip()[len(in1.rstrip().strip().lstrip()):]
s2 = s1.rstrip(s1)
res = s0 != (in0.lstrip().rstrip(in1.rstrip(s1)) + (s0.capitalize() + s1.lstrip())).rstrip((s1 + s2.rstrip())).capitalize().strip()
s2 = (in0 + saveChr(abs(i0)).lstrip()[min(int(98.0), min(mod(min(i2, i1),i0), +i1)):].rstrip())
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
b1 = 'g' == in1.strip(s1).strip(in1.rstrip(s2)).lstrip(in0.capitalize().rstrip(s1.capitalize())).lstrip(s0.strip(s1)[max(i2, i1):]).lstrip(s1.lstrip())
res = in0.rstrip(in1) != (in0.strip().strip(in0.strip(in1))[len(in1.lstrip()):saveOrd(in0)].strip(saveChr(abs(-i1))).lstrip(s1.strip().capitalize()) + s0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
if saveChr(( int(2.0) + len(in0.rstrip()) )) != getCharFromString(in1, i2).capitalize().lstrip((in1.rstrip() + in1.capitalize()).capitalize()).rstrip(',p'):{:
b2 = False
s2 = in0.lstrip(in1)
:}else:{:
in1 = in1
:}
res = ( not mod(i0,-( ( -i1 * mod(i1,i1) ) - saveOrd(in0) )) > i0 and (in0 + s2)[len(in1):].lstrip().strip('7'.strip().strip(saveChr(-i0))).lstrip() not in 'z' )
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = not not in0.lstrip()[len(in1):].capitalize() != in0.strip(in1)[mod(i2,i2):].strip()
b2 = not getCharFromString('s?n', min(len(getCharFromString(in0, i0)), abs(saveOrd(in1)))).startswith(saveChr(( i2 - i2 )).rstrip()[:i0])
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
if not in0.strip(in1).lstrip().lstrip(s0.lstrip().lstrip(in1.lstrip(s1))).strip() != (getCharFromString(s1.rstrip(), max(i1, i0)) + in1.capitalize()[i2:i2]):{:
s2 = s1.lstrip()
:}else:{:
res = in1 != s1
:}
if not in0.strip(in1).lstrip().lstrip(s1.lstrip().lstrip(in1.lstrip(s1))).strip() != (getCharFromString(s1.rstrip(), max(i1, i0)) + in0.strip().capitalize()[len(in1.lstrip()):]):{:
s1 = s1.lstrip()
:}else:{:
res = in1.endswith(s1)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
loopBreak% = 0
while not ( len((in1.strip(s1) + in0.rstrip(in1))) - i1 ) >= len(in0.lstrip(s0.lstrip(in0)).lstrip(s0.lstrip().lstrip())):{:
in1 = s1
s2 = '2'

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i2 = +saveOrd(s2.lstrip(s2.lstrip().rstrip(in0.lstrip())).lstrip())
res = in0.rstrip(in1) not in s0.strip(s1.rstrip(in0)[max(i1, i2):abs(i1)].lstrip().lstrip(s2[( max(i1, i2) - ( i0 - i2 ) ):]).lstrip(in0.lstrip(in0).rstrip().strip().lstrip((s0.rstrip(in1.lstrip()) + '+')).strip()))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = (in0.strip(in1).lstrip().strip() + in0.lstrip(s1)[len(in1):]).capitalize().lstrip().rstrip() not in s2
in1 = (getCharFromString('Q', ( ( divInt(i1,+i0) - divInt(len(s1),i2) ) - +int(6.0) )).rstrip() + (getCharFromString(s1, divInt(( i1 - i2 ),abs(i0))) + getCharFromString(s1, i1).rstrip((s0 + in0.lstrip())).rstrip(in0.rstrip().strip(s1.strip(in1)).capitalize())).lstrip('KU<'.capitalize()).strip())
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
i2 += max(len((in0 + s0).strip(s1.rstrip(s0))[( +i1 * -i2 ):abs(len(s2))].lstrip(getCharFromString(in1.lstrip(), max(i1, i0)).rstrip(s1.capitalize().rstrip().rstrip()))), len(in1))
res = in0.rstrip(in1) != in0[i2:].capitalize()
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = ( in0 != in0.rstrip().rstrip()[abs(i1):len(in1.rstrip())] or in0.rstrip((s0.rstrip() + (in1 + in1)).rstrip()) != (s2 + s0).lstrip(in1.lstrip(s0)).strip().strip() )
if '=<' == in0.capitalize().strip(getCharFromString(s1.rstrip(), divInt(i2,i0))).strip():{:
b0 = b0
:}
in0 = getCharFromString(saveChr(max(i0, i1)).lstrip(s2.capitalize().rstrip()).rstrip().strip(), +min(mod(len((s2 + s0).rstrip((s0 + s0))),( int(4.0) + saveOrd(in1) )), int(318.0)))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
b1 = 'N' != (in1.strip(s1) + s1.lstrip())[divInt(-i2,max(i2, i2)):]
loopBreak% = 0
while s0 == s1.strip():{:
s1 = in1
s0 = s0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i1 = saveOrd(getCharFromString(s2[:i1].rstrip(), int(0.0)))
res = in0[i2:][len(in1.rstrip(s1)):min(( i0 + i1 ), len(s1))].lstrip().strip(getCharFromString(in0.rstrip(s0), i2).lstrip(in1.rstrip()[-i1:]).rstrip(in1.rstrip().strip((s1 + in0)).lstrip(getCharFromString(s2, i2)).rstrip())).lstrip() != in0.rstrip()
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
loopBreak% = 0
while s1[:+i1].strip() != getCharFromString(s2, i1).strip(s1.strip(s1).rstrip(in1.lstrip(in1))).lstrip(s2.strip().capitalize().rstrip(in1.rstrip(s2).rstrip(s2.strip(s0)))):{:
in0 = s1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
s2 = (in0 + in0).lstrip().capitalize()[len((in0 + in1).lstrip()):].capitalize()
i1 = max(max(int(3.0), abs(+i1)), abs(i2))
res = ((in0.strip(in1).strip().lstrip() + (s2 + (in0 + s2.lstrip())).lstrip(saveChr(i1).lstrip())) + in1.lstrip(in0.rstrip()).rstrip().rstrip().rstrip()).strip(in1.lstrip((in0 + in0).lstrip().capitalize()[len((in0 + in1).lstrip()):])) not in (in1.strip(s1).capitalize() + getCharFromString(in0, i0)).capitalize()[saveOrd(s1.rstrip().strip()):].lstrip()
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = ((s2 + s2).lstrip().rstrip().lstrip(getCharFromString(s2, len(s2))) + s2.lstrip(in0).lstrip().rstrip().lstrip()) == in1.rstrip()[:int(2.0)].strip()
res = not len(in0.rstrip(s0).lstrip()[len(in1.rstrip(s1)):]) == -len(in0.strip(in1).rstrip()[:saveOrd(in0)])
if (s0 + s1).rstrip().rstrip(s1).capitalize().rstrip().strip('E') == (saveChr(abs(max(i2, i1))).capitalize() + (in0.lstrip() + s2.lstrip(s2).lstrip())[:mod(( +i2 + i1 ),i1)]):{:
b0 = s0.startswith(in1)
b0 = s1 != s1.rstrip(s0)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = s2.strip(s2).lstrip((s2 + in1)).lstrip() != s1.lstrip(in0.rstrip(s1)).strip(in1.rstrip(s0)).rstrip(getCharFromString(s2, i0).rstrip())
loopBreak% = 0
while s2.capitalize().rstrip(s0.capitalize())[saveOrd(in1):( min(i0, i1) - +i1 )] != s2.rstrip(s2).rstrip()[divInt(i2,i1):]:{:
b1 = True

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
s1 = (in0 + s0).lstrip()[max(len(in1), int(1.0)):].strip()
res = in0.strip().lstrip((s2 + in1)).lstrip() != s1.rstrip().capitalize().rstrip(s2)
in1 = 'EQl>'[saveOrd((s2.strip() + s2.capitalize()).strip().lstrip()):i2]
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
loopBreak% = 0
while saveOrd(s1[i1:i0]) < abs(abs(int(2.0))):{:
res = b2

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if in1 in in0.capitalize()[+i0:].lstrip():{:
in1 = s0
:}
if not not (getCharFromString(s2, i0) + in0.lstrip(s1).rstrip(in1.strip(s0))).strip() in saveChr(max(( i2 + i1 ), abs(i0))):{:
i2 = len(in1)
:}else:{:
res = True
:}
if not not (getCharFromString(s1, i2) + in0.lstrip(s1).rstrip(in1.strip(in1))).strip() in saveChr(max(min(i1, i1), abs(i0))):{:
i2 = i0
:}else:{:
res = +i2 < len(in0)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
if s1.strip(in0.capitalize()[:max(i1, i2)].strip()) != in0.rstrip(s2.strip()).strip().strip((s0.lstrip() + s0.lstrip(in1)).strip()).strip(in1):{:
res = not False
:}else:{:
b2 = s1 == in1
:}
if in0.rstrip().lstrip(s2.capitalize())[+len(in1):].strip(s2.capitalize()).strip('<') != in0.rstrip(s0).lstrip(in1.capitalize()).strip().strip((s0 + s1).lstrip(s1.capitalize()).strip()).strip(in0.lstrip(s2).rstrip().lstrip().lstrip((s0 + s2)[:len(s2)]).lstrip()):{:
res = s2.rstrip() in s1.rstrip(s0)
:}else:{:
b0 = res
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
b1 = s2[i0:][( int(8.0) * max(i1, i0) ):].capitalize() in '\	'
if (in1.strip(s1) + in0).strip(s0.capitalize().strip(in1.lstrip()))[:-max(mod(i2,i2), len(in1))] not in in1.lstrip().lstrip().rstrip(s1.rstrip().lstrip())[len(s2[:i0]):]:{:
res = s0 != in0
:}
if (in1.strip(in0) + in0).strip((in1.capitalize() + (s1.capitalize() + s0)))[:int(5.0)] not in in1.lstrip().lstrip().rstrip(s1.rstrip().lstrip())[len(s2[:i2]):]:{:
res = s1 in s0
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
res = ( (getCharFromString(in1.rstrip(), min(i1, i0)) + ((s0.lstrip(s0) + in0.capitalize()) + s1.lstrip().strip())).strip(in1.strip(s0)[len(s2):len(s2)].lstrip(s0.rstrip())) != getCharFromString(s2.capitalize(), saveOrd(s1)).rstrip(in0.rstrip()[:+i0].rstrip()) and len(in1.lstrip()) < len(in0.rstrip().lstrip().rstrip().rstrip(s2)) )
res = ( ( mod(saveOrd(s1.lstrip(s2).capitalize()),saveOrd(s1.rstrip(s2).lstrip(s0.strip()))) < abs(i2) or getCharFromString('C;', min(abs(( i2 - i1 )), i0)) != saveChr(divInt(max(i0, i0),abs(i0))).strip(getCharFromString(s2.strip(s0.rstrip(in0)), int(0.0))) ) and len(in1.lstrip()) < len((in0.rstrip(s2).strip() + in0.lstrip(in1).lstrip()).rstrip().rstrip(s2)) )
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
s0 = s1 = s2 = str()
res = bool()
i0 -= len(saveChr(saveOrd(in0)).lstrip().rstrip(in1))
res = getCharFromString(saveChr(i0).rstrip((s1 + s2).capitalize())[abs(abs(i1)):-i0], abs(-saveOrd(s1.rstrip()))) != in0[len(in1):]
```

## 18. Vectors Summed

Given two equal-sized vectors of integers, return a vector of integers that contains the sum of the input vectors at each index

Link to Haskell solutions that generalised to unseen data [here](#vectors-summed-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#vectors-summed-python-solutions)

#### Vectors Summed Haskell solutions

```
evolvedFunction :: [Int] -> [Int] -> [Int]
evolvedFunction xs ys  =  <evolvedCodeHere>
```

Examples of evolved code follow:

```
((zipWith (+) xs ys) ++ (zipWith (-) [] []))
```

```
((safeInit []) ++ (zipWith (+) xs ys))
```

```
(take 945 (zipWith (+) xs ys))
```

```
(zipWith (+) (take 873 ys) (take 237 xs))
```

```
(take 259 (zipWith (+) ys xs))
```

```
((zipWith (+) ys xs) ++ (zipWith (-) xs []))
```

```
(zipWith (+) (take 569 xs) (take 609 ys))
```

```
(zipWith (+) xs ys)
```

```
(drop (safeMinimumInts []) (zipWith (+) xs ys))
```

```
((zipWith (+) xs ys) ++ (zipWith safeMod (take (foldr (safeIntDiv) 626 (map abs [])) ys) []))
```

```
(zipWith (+) ys xs)
```

```
(zipWith (+) ys xs)
```

```
(zipWith (+) xs ([] ++ ys))
```

```
((zipWith (*) [] []) ++ (zipWith (+) xs ys))
```

```
(zipWith (+) (take 752 xs) ys)
```

```
(([] ++ []) ++ (zipWith (+) ys xs))
```

```
(drop (safeMinimumInts []) (zipWith (+) ys xs))
```

```
(zipWith (+) ([] ++ ys) ([] ++ xs))
```

```
(zipWith (+) ys xs)
```

```
((zipWith (+) xs ys) ++ (zipWith safeMod (zipWith safeIntDiv xs (zipWith safeMod [] (zipWith safeIntDiv xs xs))) []))
```

```
(zipWith (+) ys xs)
```

```
(([] ++ []) ++ (zipWith (+) xs (take 613 ys)))
```

```
(zipWith (+) xs ys)
```

```
((zipWith (+) xs ys) ++ ([] ++ []))
```

```
(zipWith (+) xs ys)
```

```
((zipWith (+) ys xs) ++ (safeTail []))
```

```
(take (safeMaximumInts []) (zipWith (+) xs ys))
```

```
((zipWith (+) xs ys) ++ (map abs []))
```

```
(zipWith (+) ys xs)
```

```
(zipWith (+) ((drop 552 []) ++ (take 285 xs)) (ys ++ ys))
```

```
((zipWith (+) ys xs) ++ (safeTail []))
```

```
(zipWith (+) xs ys)
```

```
((safeTail []) ++ (zipWith (+) ys xs))
```

```
(zipWith (+) (xs ++ ys) ([] ++ ys))
```

```
(take (safeLastInts []) (zipWith (+) ys xs))
```

```
(zipWith (+) ys xs)
```

```
(filter (/= (safeHeadInts [])) (zipWith (+) ys xs))
```

```
((zipWith safeMod [] []) ++ (zipWith (+) xs ys))
```

```
(take 267 (zipWith (+) ys xs))
```

```
((zipWith (+) xs ys) ++ (safeTail []))
```

```
(take (safeHeadInts []) (zipWith (+) ys xs))
```

```
(drop (safeMinimumInts []) (zipWith (+) xs ys))
```

```
(take (safeLastInts []) (zipWith (+) ys xs))
```

```
(take 610 (zipWith (+) ys xs))
```

```
((zipWith (+) xs ys) ++ ([] ++ []))
```

```
((zipWith (+) xs ys) ++ (safeTail []))
```

```
(take (safeHeadInts []) (zipWith (+) ys xs))
```

```
(zipWith (+) ys (xs ++ (safeTail [])))
```

```
(zipWith (+) ys xs)
```

```
(zipWith (+) ys (take 360 xs))
```

```
((safeReplicate (safeIntDiv 446 684) 699) ++ (zipWith (+) ys xs))
```

```
(drop (length []) (zipWith (+) xs ys))
```

```
(zipWith (+) xs ys)
```

```
(zipWith (+) ys xs)
```

```
((zipWith (+) xs ys) ++ (map abs []))
```

```
(zipWith (+) ([] ++ ys) (xs ++ []))
```

```
(zipWith (+) (xs ++ []) ([] ++ ys))
```

```
(drop (sum []) (zipWith (+) xs ys))
```

```
(take (length ys) (zipWith (+) (take 928 ys) xs))
```

```
(zipWith (+) (ys ++ []) (xs ++ ys))
```

```
(zipWith (+) ([] ++ xs) ys)
```

```
((zipWith (*) [] []) ++ (zipWith (+) ys xs))
```

```
((zipWith (+) ys xs) ++ (filter (<= 181) []))
```

```
(zipWith (+) (ys ++ []) (xs ++ []))
```

```
(zipWith (+) xs (ys ++ ys))
```

```
(safeTail (514:(zipWith (+) xs ys)))
```

```
(zipWith (+) (xs ++ ys) ([] ++ ys))
```

```
((zipWith (+) ys xs) ++ (zipWith (+) [] []))
```

```
(take (safeMaximumInts []) (zipWith (+) ys xs))
```

```
(take (safeMaximumInts []) (zipWith (+) xs ys))
```

```
(take 985 (zipWith (+) xs ys))
```

```
((map abs []) ++ (zipWith (+) ys xs))
```

```
((zipWith (+) ys xs) ++ (safeTail []))
```

```
(zipWith (+) (xs ++ ys) ([] ++ ys))
```

```
(zipWith (+) (ys ++ []) xs)
```

```
(zipWith (+) (take 183 xs) (take 966 ys))
```

```
(take (safeLastInts []) (zipWith (+) ([] ++ ys) xs))
```

```
([] ++ (zipWith (+) ys xs))
```

```
((zipWith safeIntDiv xs []) ++ (zipWith (+) xs ys))
```

```
(drop (length []) (zipWith (+) ys xs))
```

```
((map abs []) ++ (zipWith (+) ys xs))
```

```
(filter (<= (safeLastInts [])) (zipWith (+) xs ys))
```

```
(zipWith (+) ys xs)
```

```
(zipWith (+) ((take 524 xs) ++ []) (ys ++ []))
```

```
((safeTail []) ++ (zipWith (+) xs ys))
```

```
(zipWith (+) (take 436 ys) (take 242 xs))
```

```
(take 086 (zipWith (+) (xs ++ []) ([] ++ ys)))
```

```
(zipWith (+) (take 628 xs) (take 533 ys))
```

```
(zipWith (+) xs ys)
```

```
(zipWith (+) ys xs)
```

```
((zipWith (+) xs ys) ++ (map abs []))
```

```
(zipWith (+) xs ys)
```

```
(filter (<= (safeMaximumInts [])) (zipWith (+) xs ys))
```

```
(zipWith (+) xs ys)
```

```
(take 935 (zipWith (+) ys xs))
```

```
(take (safeLastInts []) (zipWith (+) xs ys))
```

```
((zipWith safeMod [] ys) ++ (zipWith (+) xs ys))
```

```
(zipWith (+) (take 693 ys) (take 387 xs))
```

```
(zipWith (+) xs ys)
```



#### Vectors Summed Python solutions

```
def evolve(in0, in1):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

No succesful solutions generalised   

:sob:

## 21. Negative To Zero

Given a vector of integers, return the vector where all negative integers have been replaced by 0.

Link to Haskell solutions that generalised to unseen data [here](#negative-to-zero-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#negative-to-zero-python-solutions)

#### Negative To Zero Haskell solutions

```
evolvedFunction :: [Int] -> [Int]
evolvedFunction xs = <evolvedCodeHere>
```

No succesful solutions   :sob:

#### Negative To Zero Python solutions

```
def evolve(in0):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

Examples of evolved code follow:


```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i2 in in0:{:
res.append(max(i1, i2))
setListIndexTo(li2, ( i2 + i2 ), abs(i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
li2.append(getIndexIntList(in0, mod(i1,divInt(max(len(list(saveRange(i0,i0))), i1),abs(min(mod(i1,max(i2, i0)), len(li2)))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
b1 = not not ( min(i2, i0) in li2 or ( i2 - i1 ) in li1 )
if False:{:
deleteListItem(li0, i0)
:}
loopBreak% = 0
for i2 in in0:{:
res.insert(int(62.0),max(i2, ( i1 * i2 )))
li1.insert(len(res[:i1]),( ( len(res) + max(i2, i0) ) - min(i1, i2) ))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i0 in in0:{:
res.append(min(max(abs(i2), abs(i0)), max(min(i0, i0), len(li1))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i2 in in0:{:
res.append(max(( i2 + i0 ), abs(i0)))
b2 = not ( False or True )

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i0 in in0[:( mod(min(min(len(in0), len(li2)), min(abs(mod(i0,i2)), abs(len(li0)))),i0) + divInt(int(398.0),getIndexIntList(list(saveRange(i1,i1)), divInt(len(li1),max(i2, i1)))) )]:{:
res.insert(len(in0),max(i0, divInt(i2,i1)))
in0.insert(getIndexIntList(res, max(i0, i1)),getIndexIntList(li0, abs(i2)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for forCounter% in li0:{:
res.insert(i2,i2)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for forCounter% in list(saveRange(getIndexIntList(li2, max(-i2, divInt(i0,i2))),+len(res))):{:
li0.append(i0)
li1.append(-i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b1 = b1
loopBreak% = 0
for i2 in in0[min(i2, len(li2[:int(8.0)])):]:{:
in0.append(max(min(i1, i0), ( i2 - i2 )))
res.insert(divInt(divInt(len(in0),min(i0, i1)),int(0.0)),len(list(saveRange(i0,i2))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i2 in in0:{:
res.append(max(max(len(li0), max(i2, i2)), len(li2)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
i1 = i0
loopBreak% = 0
for i2 in li1:{:
b2 = False
i1 += divInt(i0,i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i1 in in0:{:
res.append(len(list(saveRange(i2,i1))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(max(i0, i1))
deleteListItem(li2, i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while False:{:
b0 = ( False and b0 )

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b0 = ( ( b2 or True ) or True )
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(max(len(li2), max(i1, i0)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i0 *= i0
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(max(abs(+i2), ( mod(i1,i0) - len(li0) )))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i2 in in0:{:
res.append(max(i2, i1))
i2 = i2
b2 = not b1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i0 in in0:{:
li2.append(i1)
i1 = i0
res.append(max(mod(i2,i0), ( i0 - i2 )))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if ( int(1.0) * min(--( min(i2, i2) * max(i2, i2) ), len(list(saveRange(+i2,abs(i1))))) ) not in li0:{:
b2 = b2
in0.insert(max(len(li0), min(i1, i2)),getIndexIntList(li1, i2))
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.insert(len(res),max(i2, i1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
li1.insert(-abs(( getIndexIntList(li1, -mod(i2,i0)) - getIndexIntList(list(saveRange(i1,i0)), +len(res)) )),abs(min(-int(1.0), len(list(saveRange(max(-i2, min(i2, i1)),min(+i1, ( i1 + i0 ))))))))
i1 -= abs(i0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.insert(len(in0),mod(max(i2, i1),divInt(i0,i0)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b0 = b0
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
b2 = ( b2 and mod(+len(li1),len(in0)) > getIndexIntList(li2, len(li0)) )
loopBreak% = 0
for i1 in in0:{:
res.append(+max(i0, i1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i1 = i0
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
i2 -= min(getIndexIntList(in0, i2), abs(max(i0, i2)))
loopBreak% = 0
for i2 in in0:{:
res.append(max(i2, i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while b1:{:
b0 = False

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
setListIndexTo(res, i2, mod(max(getIndexIntList(li1, getIndexIntList(li1, i0)), ( getIndexIntList(in0, +i2) * int(01.0) )),min(abs(int(6.0)), divInt(min(int(0.0), mod(min(i0, i2),mod(i2,i2))),int(35.0)))))
setListIndexTo(res, i0, mod(max(min(int(7.0), getIndexIntList(li2[i1:], len(li0))), ( getIndexIntList(in0, -i1) - len(li1) )),max(abs(getIndexIntList(li0, int(2.0))), -i1)))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
deleteListItem(list(saveRange(i2,( i2 * i2 )))[divInt(+abs(i1),mod(+i2,( i1 + i1 ))):], int(4.0))
loopBreak% = 0
for i0 in in0:{:
b0 = b2
res.append(max(i0, len(li0)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b0 = True
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(len(list(saveRange(i0,i1))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while b2:{:
li0.append(i0)
b1 = b0
i2 = ( i0 - i0 )
li1.insert(( abs(len(li1)) * i1 ),abs(getIndexIntList(li2, i1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i2 in in0:{:
res.append(max(mod(min(i2, i2),abs(i1)), min(mod(i0,i2), -i0)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
li2.insert(i0,i0)
res.append(max(i1, i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b1 = abs(divInt(int(4.0),int(5.0))) > +max(min(i1, ++i0), len(res[i2:i0]))
b0 = getIndexIntList(li1[:i0], int(275.0)) is not max(int(3.0), -min(i1, i2))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(i2)
i2 = max(i0, i1)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if not ( max(( +abs(i2) - abs(len(res)) ), mod(int(7.0),max(divInt(i0,i1), ( i1 + i2 )))) not in li2[getIndexIntList(in0, i2):] and not not not not b2 ):{:
res.append(i2)
deleteListItem(res, i0)
b2 = b0
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
if True:{:
li0.append(i1)
:}else:{:
li1.append(i0)
:}
loopBreak% = 0
for i1 in in0:{:
i2 *= i0
res.append(max(max(i0, i1), -i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
li1.append(int(30.0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(divInt(max(i0, i1),abs(i0)))
b2 = i0 > i1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(max(max(i1, i2), divInt(i2,i1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
setListIndexTo(in0, abs(divInt(max(+max(-max(i1, i1), abs(abs(i0))), int(358.0)),getIndexIntList(li1, int(1.0)))), max(abs(max(abs(int(46.0)), min(i0, min(abs(divInt(i1,i2)), int(6.0))))), min(i1, mod(getIndexIntList(li1[i1:], min(( i2 - i0 ), ( i0 + i0 ))),getIndexIntList(list(saveRange(i0,i2)), min(-i1, i2))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.insert(len(res),+max(divInt(i1,i0), divInt(i0,i2)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b2 = False
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
li1.append(i2)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i1 = ( len(li1) + int(4.0) )
i2 = min(len(li2), i0)
loopBreak% = 0
for i2 in in0:{:
res.insert(min(i1, max(i2, i1)),max(max(i0, -i0), i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
b0 = b0
loopBreak% = 0
for i0 in in0:{:
res.append(max(i2, i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for forCounter% in list(saveRange(abs(i0),min(len(list(saveRange(i0,i2))), +max(abs(i0), mod(i1,i2))))):{:
deleteListItem(li1, i1)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for forCounter% in list(saveRange(min(max(int(6.0), int(57.0)), getIndexIntList(li0, min(divInt(i1,i2), mod(i1,i2)))),min(max(-+( i0 * i0 ), i0), -mod(( len(li2) + max(i0, i2) ),mod(i1,+i0))))):{:
li1.append(i0)
i1 -= i0
setListIndexTo(res, min(i1, i1), len(in0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i2 = int(46.0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
if not b0:{:
i2 -= i1
:}else:{:
in0.insert(i2,i1)
b2 = True
:}
loopBreak% = 0
for i1 in in0:{:
res.insert(len(res),max(i1, getIndexIntList(li0, i2)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
b2 = True
loopBreak% = 0
for i1 in in0:{:
li1.append(len(li1))
res.append(divInt(max(i1, i2),max(i0, i0)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
deleteListItem(li1, max(i1, i1))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i2 in in0:{:
res.append(max(i1, i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while ( ( not ( +len(li1) != getIndexIntList(li1, i1) or not ( i0 * i0 ) in res ) and False ) or int(6.0) < abs(( -i0 * abs(len(li0)) )) ):{:
li0.append(len(in0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i0 = i1
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
while False:{:
res.append(i2)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i1 in in0:{:
res.append(max(i1, i2))
b0 = b2

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for forCounter% in li1:{:
setListIndexTo(res, max(i1, i2), ( i2 + i2 ))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if -min(i0, i1) in li1:{:
res.append(i1)
i1 = i2
deleteListItem(res, len(res))
:}else:{:
i2 = min(i2, i0)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
setListIndexTo(list(saveRange(i2,int(6.0))), ( i1 + -( max(abs(i1), abs(i2)) + int(65.0) ) ), ( +( divInt(divInt(i2,i0),max(i1, i1)) + len(res) ) * +min(min(abs(i2), min(i1, i1)), mod(mod(i2,i2),max(i2, i0))) ))
loopBreak% = 0
for i1 in in0:{:
res.append(max(i1, i2))
li2.append(abs(i1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
li1.insert(abs(i1),int(6575.0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
b0 = True
deleteListItem(list(saveRange(i1,i0)), getIndexIntList(res, -i1))
loopBreak% = 0
for i1 in in0:{:
res.insert(i1,i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i1 *= i0
loopBreak% = 0
for i1 in in0[abs(i1):]:{:
deleteListItem(res, i0)
res.insert(abs(len(res)),max(+i1, i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
li1.append(divInt(getIndexIntList(li0[:min(i1, i0)][:divInt(getIndexIntList(li2, i2),len(li0))], ( abs(abs(+mod(i1,i0))) * max(( min(( i2 + i2 ), min(i2, i1)) + abs(( i1 + i0 )) ), ( divInt(i1,len(li1)) + i2 )) )),len(list(saveRange(int(0.0),abs(i2))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
i1 = i2
li2.insert(len(res),i2)
loopBreak% = 0
for i1 in in0:{:
res.insert(int(53.0),len(list(saveRange(i0,i1))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
deleteListItem(list(saveRange(-i1,mod(i0,i2))), +len(li0))
setListIndexTo(li1, min(i2, divInt(max(len(li2), min(i1, i1)),getIndexIntList(li0, i0))), abs(i0))
b2 = getIndexIntList(list(saveRange(i2,i1)), len(res)) == i2
b0 = ( ( len(res) - mod(abs(( i2 - i2 )),getIndexIntList(li1, i2)) ) not in res and i2 not in res[:i0][len(in0):i2] )
loopBreak% = 0
for i1 in in0:{:
li2.append(i1)
b1 = True
b0 = i0 >= i2
res.append(max(i1, ( i0 - ( i2 * i2 ) )))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
li0.append(+mod(len(li2),min(i2, i1)))
deleteListItem(li2[:i1], i2)
b1 = getIndexIntList(in0, len(in0)) is abs(int(1.0))
loopBreak% = 0
for i0 in in0[len(res):]:{:
res.append(max(i0, i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i1 -= int(952.0)
i1 *= max(len(list(saveRange(max(len(li0), min(min(i1, i0), min(i2, i2))),min(+len(res), len(li2))))), +-( int(20.0) + i2 ))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
setListIndexTo(list(saveRange(i2,i2))[int(6.0):len(li1)][max(abs(-abs(i1)), i2):max(max(( abs(i1) + ( i1 * i2 ) ), min(( i0 * i1 ), ( i1 * i2 ))), min(i2, +min(i1, i1)))], divInt(max(getIndexIntList(li2, abs(min(i0, i1))), +abs(( len(in0) * abs(i0) ))),-i2), int(899.0))
loopBreak% = 0
for i0 in in0:{:
res.insert(( max(divInt(i0,i2), len(res)) + int(5.0) ),abs(max(abs(i1), +i0)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(max(i1, i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i2 -= max(divInt(max(int(6.0), abs(max(i1, i0))),( abs(abs(i2)) * -i0 )), len(in0[:min(i0, i1)]))
i2 += max(divInt(min(abs(int(5.0)), len(li1)),( abs(abs(i2)) - divInt(min(i1, i0),int(66.0)) )), len(li0))
loopBreak% = 0
for forCounter% in in0[:abs(i0)][int(3.0):]:{:
i1 += len(li2)
setListIndexTo(res, min(min(i0, i1), max(i2, i2)), getIndexIntList(res, i1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(abs(max(i1, i0)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for forCounter% in li0[int(2.0):max(min(max(int(6.0), i1), i1), min(( len(li1) - mod(max(i2, i0),i0) ), ( len(li1) + getIndexIntList(in0, i1) )))]:{:
li1.insert(min(i1, i0),max(i2, i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i2 = mod(min(getIndexIntList(li2, abs(min(divInt(i0,i2), max(i1, i1)))), divInt(mod(divInt(i1,min(len(li2), i2)),int(3.0)),getIndexIntList(li2, max(i2, i0)))),int(9.0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
b0 = b2
loopBreak% = 0
for i1 in list(saveRange(i2,i0))[:i2][int(6.0):int(1377.0)]:{:
res.insert(i0,i1)
setListIndexTo(li2, i2, i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i0 in list(saveRange(i2,i0)):{:
b0 = b0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i2 in in0[getIndexIntList(list(saveRange(i1,( ( i0 - i2 ) - max(i0, i0) ))), min(i0, +int(4.0))):]:{:
li1.append(i2)
res.append(( i2 - mod(i2,i2) ))
li0.insert(len(li0[:i0]),+divInt(max(i0, i2),max(i1, i2)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
if b2:{:
deleteListItem(li2, i0)
:}
loopBreak% = 0
for i0 in in0[getIndexIntList(res, --i1):int(92.0)][+len(list(saveRange(i0,max(len(li2), min(i0, i1))))):abs(min(min(( len(res) - divInt(len(in0),( i1 + i2 )) ), mod(int(5.0),abs(min(i2, i2)))), divInt(divInt(i1,divInt(len(li2),i2)),mod(abs(len(li2)),max(abs(i0), ( i1 * i2 ))))))]:{:
setListIndexTo(in0, i0, i0)
res.append(max(max(i0, i0), ( i2 - i2 )))
b2 = abs(i1) not in li1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
while not len(in0[i2:]) != i0:{:
setListIndexTo(res, min(i0, i0), ( i2 * i0 ))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i2 in in0:{:
li0.insert(i1,i1)
res.append(max(i2, i0))
i2 *= abs(i2)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if b1:{:
i1 += i0
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
i0 += int(1.0)
loopBreak% = 0
for i2 in in0:{:
res.append(max(( i2 * i1 ), i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b2 = False
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
i1 *= +i0
loopBreak% = 0
for i1 in in0:{:
res.append(max(i1, i2))
li2.insert(mod(i1,i0),max(i2, i2))
li2.insert(len(in0),i2)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
li0.insert(int(2.0),i0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
b1 = not True
loopBreak% = 0
for i1 in in0:{:
res.append(len(list(saveRange(i2,i1))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
li0.insert(mod(i2,getIndexIntList(li0[i0:], divInt(abs(i1),max(i1, i2)))),min(( max(getIndexIntList(in0, i1), +i1) + max(getIndexIntList(in0, i1), -len(in0)) ), int(52.0)))
loopBreak% = 0
for i2 in list(saveRange(int(9.0),int(99.0)))[:getIndexIntList(in0, getIndexIntList(li0, i0))]:{:
i2 += i2

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i1 in in0[getIndexIntList(list(saveRange(abs(i2),i0)), i1):abs(max(int(80.0), ( getIndexIntList(in0, i2) + int(3.0) )))]:{:
in0.insert(i0,i2)
res.append(max(i0, i1))
i1 = i2

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i0 = i2
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
b0 = False
loopBreak% = 0
for i2 in li1[:( i0 - i1 )][:int(76.0)]:{:
res.insert(i2,i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while ( False and not b1 ):{:
res.append(i2)
i2 -= i1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while not True:{:
b1 = b1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i1 in in0[+mod(int(0.0),i0):len(list(saveRange(min(divInt(-i2,-i1), i2),max(( abs(i0) + len(in0) ), -i2))))]:{:
li2.insert(i0,i1)
i0 = i1
i0 = -i1
res.append(+-min(i0, i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for forCounter% in list(saveRange(getIndexIntList(li0, +i2),abs(abs(-i1)))):{:
res.append(i1)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i1 in in0[min(abs(min(len(li0), mod(i0,i2))), divInt(-len(li1),i1)):]:{:
in0.append(i2)
res.append(max(i0, i1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i1 = divInt(int(58.0),max(min(i2, abs(abs(i2))), getIndexIntList(li2, +max(i0, i0))))
i1 = i2
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
setListIndexTo(li2, abs(int(68.0)), max(len(list(saveRange(i1,i1))), i2))
li0.append(getIndexIntList(li1[min(i0, min(i2, i0)):], abs(mod(max(min(i2, i1), ( i1 + i1 )),getIndexIntList(li2, i0)))))
i1 = -( i1 - max(min(len(in0), i1), getIndexIntList(in0, len(li0))) )
loopBreak% = 0
for i2 in in0:{:
res.append(max(min(abs(i2), max(i2, i2)), i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(max(i1, i0))
b2 = True

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i2 in li2:{:
li1.insert(i2,i2)
b0 = True
in0.append(( abs(i1) + min(i1, i2) ))
b1 = len(li1) != i0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
while not abs(getIndexIntList(li1, i2)) >= getIndexIntList(li0, -i2):{:
in0.append(i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if b0:{:
li2.append(i2)
:}else:{:
in0.insert(i1,i2)
:}
loopBreak% = 0
for i0 in in0:{:
setListIndexTo(li0, i1, i1)
res.append(max(divInt(mod(i1,i1),( i1 + i2 )), i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if b2:{:
in0.insert(i0,i1)
i1 -= i1
li1.insert(mod(i1,min(i0, i1)),int(1.0))
:}else:{:
deleteListItem(res, abs(i1))
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i2 in in0:{:
deleteListItem(li0, min(i2, i2))
res.append(max(divInt(i2,-i1), ( abs(i1) + i0 )))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i2 in in0:{:
li0.insert(i1,i1)
res.append(max(i1, i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while not not False:{:
res.insert(i0,i0)
res.append(max(i2, i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if ( len(in0) not in li1 or not not not +i2 < -i2 ):{:
deleteListItem(in0, i2)
:}else:{:
li2.insert(i0,i0)
b0 = b0
:}
deleteListItem(list(saveRange(i2,-min(abs(int(9.0)), abs(( ( i0 - i2 ) - -i1 ))))), abs(len(list(saveRange(mod(len(li0),i2),mod(getIndexIntList(in0, i2),-+i0))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
setListIndexTo(list(saveRange(i0,i0))[:abs(i1)], abs(len(li2[i0:])), abs(int(0.0)))
loopBreak% = 0
for i0 in in0:{:
li0.append(i0)
res.append(max(i0, i1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i1 = min(-max(getIndexIntList(li0, divInt(i1,i1)), max(-( i2 - i2 ), max(-i1, min(i0, i1)))), ( ( int(1.0) + abs(( abs(i0) - max(i1, i1) )) ) - abs(divInt(min(i0, abs(i2)),max(min(i2, i0), +i2))) ))
loopBreak% = 0
for forCounter% in li0:{:
b1 = ( True and b1 )

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
while ( True and ( int(79.0) in li2 or i2 in list(saveRange(i0,i2))[int(7.0):getIndexIntList(li2, i2)] ) ):{:
i0 = +i1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i2 in in0:{:
res.append(++max(i0, i2))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i1 in in0:{:
res.append(max(i1, i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
setListIndexTo(res[i0:i0][:i2][abs(-( len(li1) - max(i2, i0) )):], len(in0[min(int(1.0), max(min(i2, i1), ( i1 - i1 ))):+int(5.0)]), max(getIndexIntList(list(saveRange(-i1,( i0 - i0 ))), len(list(saveRange(i0,i1)))), max(max(int(5.0), len(li1)), len(list(saveRange(i1,len(li2)))))))
i0 = ( abs(max(mod(getIndexIntList(res, min(i1, i2)),len(list(saveRange(i0,i0)))), i2)) * abs(min(int(02.0), divInt(abs(len(li2)),( min(divInt(i0,i1), max(i0, i1)) - abs(( i2 - i0 )) )))) )
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
while not min(len(list(saveRange(i2,i2))), getIndexIntList(in0, len(in0))) not in li0:{:
li1.append(max(i1, i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for i2 in in0:{:
res.append(divInt(max(i0, i2),abs(i1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
setListIndexTo(res[( divInt(( divInt(min(i2, i2),max(i1, i0)) + -divInt(i2,i1) ),( len(res) - int(4.0) )) - mod(i2,max(min(+i1, abs(i2)), +-i0)) ):i1], int(6.0), min(( int(66.0) * ( abs(getIndexIntList(li0, +i1)) + len(li1[mod(i2,i2):abs(i1)]) ) ), getIndexIntList(res, getIndexIntList(li0[:i1], min(abs(i0), abs(i2))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i0 in in0:{:
res.append(max(mod(+i1,+i0), max(i1, mod(i0,i1))))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
li2.append(i2)
deleteListItem(li2, +i2)
i0 = int(6.0)
i0 = ( mod(+i1,mod(i2,i2)) * i1 )
loopBreak% = 0
for i0 in in0:{:
res.append(max(i2, i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b1 = ( getIndexIntList(in0, max(i1, i1)) + abs(abs(+i0)) ) != len(li0)
b1 = int(64.0) is not +getIndexIntList(li0[i1:i0], len(in0))
setListIndexTo(res, max(i0, i0), max(i2, max(len(li2[i0:int(1.0)]), max(-len(in0), getIndexIntList(in0, i0)))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for forCounter% in list(saveRange(max(getIndexIntList(li1, i2), len(li1)),+i0)):{:
res.append(i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if False:{:
li0.append(i0)
:}
loopBreak% = 0
for i1 in in0:{:
res.append(max(i1, i0))
li1.insert(max(max(i1, i1), max(i1, i2)),abs(divInt(i2,i1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i0 = max(-i2, int(15.0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i0 in in0:{:
b0 = b1
res.append(abs(max(i0, i1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
li2.append(getIndexIntList(li2, -( ++min(( i1 + i0 ), len(res)) - int(4.0) )))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
i1 = len(li1)
loopBreak% = 0
for i1 in in0[len(list(saveRange(mod(len(li2),min(i0, i1)),max(len(res), mod(i0,i2))))):]:{:
i2 += min(i2, i1)
res.append(max(-i0, i1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b1 = not min(divInt(int(636.0),abs(int(3.0))), i0) < int(83.0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i2 in in0:{:
res.append(max(i2, i1))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for forCounter% in list(saveRange(+getIndexIntList(res, min(i1, i2)),abs(abs(int(0.0))))):{:
res.insert(i2,i2)
i1 = i0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b0 = b1
loopBreak% = 0
for forCounter% in list(saveRange(max(mod(getIndexIntList(li0[i1:], abs(( i0 - i1 ))),int(9.0)), ( min(+abs(abs(i2)), min(len(in0), mod(mod(i2,i1),-i0))) - min(abs(int(8.0)), min(len(in0), min(max(i2, i0), i2))) )),abs(min(divInt(max(i2, abs(abs(i1))),int(09.0)), int(77.0))))):{:
i1 *= mod(len(in0),len(li0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
li1.insert(mod(len(li1),i0),( int(3.0) * ( divInt(i1,i2) - ( i2 + i1 ) ) ))
i0 = abs(int(6.0))
li2.append(getIndexIntList(list(saveRange(len(li0),divInt(i1,i0))), getIndexIntList(in0, ( i2 - i1 ))))
i0 *= int(995.0)
loopBreak% = 0
for i2 in in0:{:
res.insert(( min(i0, i0) + +i2 ),min(max(i0, i0), max(i2, i1)))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i1 = int(91.0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
li0, li1, li2 = [], [], []
res = []
loopBreak% = 0
for i0 in in0:{:
li2.append(i1)
res.append(max(i2, i0))

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
for forCounter% in list(saveRange(i1,min(i1, len(list(saveRange(( i1 + i1 ),min(i1, i0))))))):{:
in0.insert(i1,i2)
b1 = b0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b2 = len(res) >= int(6.0)
in0.insert(i1,i2)
```


## 27. Median

Given 3 integers, print their median.

Link to Haskell solutions that generalised to unseen data [here](#median-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#median-python-solutions)

#### Median Haskell solutions

```
evolvedFunction :: Int -> Int -> Int -> Int
evolvedFunction x y z = <evolvedCodeHere>
```

Examples of evolved code follow:


```
(max (min (min (max z y) (max (if (even x) then (min y y) else y) x)) x) (min y z))
```

```
(min (max ( z) (min x y)) (max y x))
```

```
(max (min y (max z x)) (min (max y z) x))
```

```
(max (min z (max (min z (min x x)) ( y))) (min x y))
```

```
(min (max (min (max x (max 75 x)) (min x y)) z) (max y x))
```

```
(min (max x ((+) (safeIntDiv (safeMod z 61) 92) (if ( (z < z) && (odd y) ) then x else (min y z)))) (max y z))
```

```
(min ( (max (min y x) z)) (max y x))
```

```
(max (max (min x z) (min x y)) (min z y))
```

```
(min (max z x) (max ( y) (min (min z (max z 85)) x)))
```

```
(min (if ((max z z) <= z) then (max y (min x (min z x))) else (if (even 38) then (if (odd x) then (max x y) else 63) else z)) (max x z))
```

```
(max (min z (if ( (y <= 14) || ( (y <= 22) || ((safeIntDiv 84 x) /= (if (odd y) then y else y)) ) ) then (min z (max x y)) else z)) (min y x))
```

```
(min (max x y) (max z (min y x)))
```

```
(max (if (even 58) then (min x (max z y)) else ((*) (if (if (odd y) then (even x) else (even x)) then ( x) else ((*) y y)) 60)) (min y z))
```

```
(min (max z x) (max (min z x) (min y y)))
```

```
(min (max x (max (min x y) (min z y))) (max y z))
```

```
(max (min (if (z <= y) then y else y) z) (min (if (y /= y) then 95 else (max y z)) x))
```

```
(min (max x y) (max (max z z) (min y x)))
```

```
(min (max z x) (max y (min x z)))
```

```
(min (min (max x y) (max x z)) (max z y))
```

```
(min (max (min y z) x) (max z y))
```

```
(max (min z (max x y)) (min y x))
```

```
(min (max z (if ((max y z) < x) then y else x)) (max y x))
```

```
(min (max z (max z (min x y))) (max y x))
```

```
(max (min y z) (min x (min (max 72 x) (max z y))))
```

```
(max (min z (if (not (even 30)) then z else y)) (min x (max y z)))
```

```
(min (min (max y x) (max z x)) (max y z))
```

```
(max (min z x) (min (max z x) y))
```

```
(max (min x (max y z)) (min y z))
```

```
(max (min (max (min x (if ( (odd y) && (x /= y) ) then (min y y) else y)) (min z x)) y) (min z ( (max x y))))
```

```
(max (if (if (x /= y) then ((- (if (not (even y)) then 57 else 19)) == 32) else (odd z)) then x else (min ( z) ( x))) (min (max x z) (if ((max z (- y)) > z) then y else y)))
```

```
(min (max x z) (min (max y z) (max y x)))
```

```
(max (min y z) (min ( (min x x)) (max z y)))
```

```
(min (max (min y (min (if (x == y) then 92 else z) ( y))) x) (max z y))
```

```
(max (min z (max x y)) (min x y))
```

```
(max (min (max (max z (if (z > x) then 75 else z)) y) (if (y > y) then 60 else x)) (min z y))
```

```
(min (max x y) (max (min x y) (min (max y z) ( z))))
```

```
(max (min x y) (min (max y x) z))
```

```
(min (max (min z y) x) (max z y))
```

```
(min (max x (min y z)) (max y (if ( ( ( (even 07) || (not (even 06)) ) && (if (not (even z)) then (87 /= x) else (z < y)) ) && ( (not (even 06)) && ((- z) <= 52) ) ) then (max 79 32) else z)))
```

```
(max (min y (max (max (min 74 z) z) x)) (min z x))
```

```
(min (max (max z (min y x)) z) (max x y))
```

```
(max (min (max (min x y) (min x z)) y) (min (max y (min x (max y x))) z))
```

```
(min (max x z) (max (if (if (even (abs 37)) then (z <= y) else (odd 18)) then (max y z) else (min (min z x) (max z 80))) y))
```

```
(min (max (if ( (if (odd 09) then (not ( (odd y) || (odd y) )) else (odd (safeIntDiv x y))) || (odd (if (y /= x) then 99 else y)) ) then (min y x) else y) z) (if (x < y) then y else x))
```

```
(min (min (max z y) (max y x)) (max z x))
```

```
(max (min z y) (min (if (even ((*) ((-) x x) ( z))) then (max y z) else (min y (abs x))) x))
```

```
(min (max x ( (if (not (y > y)) then (min y z) else 85))) (max z y))
```

```
(max (max (min z y) (min y x)) (min x z))
```

```
(max (min z y) (min (max z y) x))
```

```
(max (min x y) (min z (min (max y x) (max z (max (abs z) y)))))
```

```
(min (max (min (max ( y) x) (if ( (if (odd z) then (y > x) else (y /= y)) && (not (z /= x)) ) then (if (z == x) then 13 else y) else (if (z /= z) then y else z))) y) (max x z))
```

```
(min (min (if (if (if (even x) then (odd z) else (z == x)) then (odd z) else (y >= y)) then (max z y) else y) (max x z)) (max x y))
```

```
(min (if ((max z z) <= x) then x else z) (if (z <= y) then y else (min (min z (max z (abs z))) (max y x))))
```

```
(min (max x y) (max (min (if (even 61) then (abs x) else y) x) z))
```

```
(max (min z (if (odd (safeMod (max y x) (max x y))) then z else x)) (max (min x y) (min y z)))
```

```
(max (max (min y x) (min y z)) (min (if (odd 51) then z else 83) (if ((min y x) < 99) then x else 94)))
```

```
(max (min y z) (max (min y x) (min x z)))
```

```
(min (max (if (not (even (- 80))) then (min z x) else (min y z)) x) (max y z))
```

```
(max (min (if (if (even 23) then (odd 45) else (y >= x)) then z else (safeMod (- 21) 49)) y) (min (max z y) x))
```

```
(min (max x y) (max z (min ( x) y)))
```

```
(min (max y x) (max (min y (if ( (if (odd z) then (z == x) else (odd y)) && (not (even x)) ) then x else x)) z))
```

```
(max (min z y) (min x (if (if (even ( 01)) then (odd ((*) x z)) else (even x)) then (max z y) else (max (if (x <= y) then x else z) (if (x /= y) then y else x)))))
```

```
( ( (min (max (min y x) z) (max y x))))
```

```
(max (min (max z x) y) (min x z))
```

```
(max (min (max x y) (if (z <= z) then z else (max (max 88 19) (min x z)))) (min x y))
```

```
(min (min (max y x) (max x ( z))) (max y z))
```

```
(min (min (max y x) (if ( (even (min 86 30)) || (not (if (if (odd y) then (odd z) else (odd y)) then (not (y >= z)) else (even y))) ) then (max z y) else ( 33))) (if (z >= x) then z else x))
```

```
(max (min z x) (min y (max (min z y) (if (43 >= 61) then x else x))))
```

```
(max (min x y) (min z (if ( (odd x) && (even x) ) then (abs y) else (max y x))))
```

```
(if ( (y >= x) && (not (not (z >= (min ((+) 00 x) y)))) ) then (min z y) else (min x (if ( (even z) && (03 == y) ) then (max y x) else (max y z))))
```

```
(min (max z (max (min z y) (min x y))) (max y x))
```

```
(min (max z x) (max (min y ((*) y y)) (min x (min z x))))
```

```
(min (max y (min (max y z) x)) (max x z))
```

```
(min (max z ( (min (if (z <= y) then x else 34) (if (z >= y) then 09 else y)))) (max (min z (if (odd 08) then ((+) (min z z) z) else x)) y))
```

```
(max (min z y) (min (if (odd z) then x else x) (max z y)))
```

```
(min (max (if (even 53) then 86 else y) z) (max (min y z) x))
```

```
(max (min (max y x) z) (min x y))
```

```
(max (max (min z x) (min z y)) (min y x))
```

```
(min (max z x) (max y (min (min z x) ((+) (abs y) z))))
```

```
(max (max (min z y) (min y x)) (min z x))
```

```
(min (max ( (min (max x x) (max z y))) z) (max x y))
```

```
( (min (max (min x z) y) (max z x)))
```

```
(min (max y z) (max (min y (min ( z) (max z 42))) x))
```

```
(max (max (min x y) (min y z)) (min x z))
```

```
(min (max x z) (min (max (min y z) x) (max z y)))
```

```
(max (min (max z x) y) (min x z))
```

```
(min (max z (min (min x y) y)) (max ( x) y))
```

```
(max (min (min (abs ((*) z y)) y) z) (min x (min (max z y) x)))
```

```
(min (min ( (max y z)) (max y x)) (if (not (odd (abs 60))) then (max x z) else 17))
```

```
(max (min z x) (min (max z x) y))
```

```
(min (max z (min x (if (even (safeMod z z)) then y else 90))) (max x y))
```

```
(max (min (max y z) x) (min y (if (odd z) then z else (max x z))))
```

```
(max (min (if (odd 34) then 07 else (max z (if (y /= z) then x else 60))) y) (min z x))
```

```
(min (max y x) (max (min y x) z))
```

```
(max (min x (min x z)) (min (min (max 33 (abs y)) y) (max x z)))
```

```
(min (max x y) (max z (min (min ( (max z x)) y) (max (max z z) x))))
```


#### Median Python solutions

```
def evolve(in0, in1, in2):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

Examples of evolved code follow:


```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while b1:{:
b1 = False

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if not ( ( abs(i2) + +in1 ) > in0 or b2 ):{:
b0 = b0
res = in1
:}else:{:
res *= in1
res = in2
:}
b1 = min(-int(7.0), ( +res + int(14.0) )) > in0
if not ( in2 > in1 or b0 ):{:
res = min(max(in2, in0), ( in1 + i1 ))
:}else:{:
res = in2
res = min(max(in1, in0), in2)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = in1
i2 = max(min(divInt(i1,abs(max(i2, mod(in1,in2)))), mod(in0,i1)), +min(( in2 - -i1 ), mod(mod(res,i2),abs(i2))))
b1 = False
if +i2 == min(max(( -in0 * +min(i2, i1) ), i2), in0):{:
b2 = not True
res = min(in0, max(in2, res))
:}else:{:
b1 = False
res = min(res, in2)
:}
i0 += i1
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if not ( not False and False ):{:
i0 -= in1
b2 = True
:}
res = min(( abs(i1) - -max(max(mod(max(max(in0, in0), -i0),-( in1 * res )), ( i0 * min(in1, +in2) )), in1) ), max(in2, +( ( min(--in0, in1) - abs(res) ) - -i2 )))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = max(+max(+min(in0, in1), min(min(min(in2, in1), -in2), min(+in1, abs(in1)))), in2)
if ( not ( not b2 and ( max(in0, in1) >= min(res, res) or ( True and b0 ) ) ) or ( ( not b2 and b2 ) and not b0 ) ):{:
i0 = in0
res = max(in0, in1)
:}
b1 = mod(in0,+( -( +abs(res) - ( min(res, i2) + min(i2, i2) ) ) - i0 )) > min(i2, min(i2, int(4.0)))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(abs(mod(in2,int(0.0))), +min(mod(( min(min(res, i2), abs(in1)) * ( ( in0 + i1 ) - min(in0, res) ) ),min(i1, res)), in0))
if ( -+( min(-in0, -i1) + --in1 ) > max(res, +-( min(in0, res) - +i1 )) and True ):{:
res = i0
b0 = b1
res += min(max(in1, in2), in0)
:}else:{:
res = i0
b2 = b1
res += min(max(in0, in2), in1)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b1 = abs(in0) is not -divInt(+i2,mod(abs(in0),abs(in2)))
b2 = False
if ( max(-res, int(15.0)) + min(int(1.0), abs(in0)) ) > i2:{:
res = min(max(in0, in1), in2)
:}
if ( res + abs(abs(int(01.0))) ) <= in1:{:
res = min(max(in0, in2), in1)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = in1 != ( +i0 * max(-in1, res) )
res = max(min(in1, in2), min(max(mod(mod(min(max(( in2 + i2 ), divInt(i1,in2)), ( +abs(i0) + min(in0, in2) )),max(min(in1, i2), abs(abs(i0)))),min(--abs(i2), int(2.0))), divInt(in1,i2)), +mod(in0,+min(mod(+i1,min(in1, in1)), min(+i0, mod(in0,i1))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = False
res = max(min(divInt(( ( i1 + in0 ) - divInt(divInt(i2,in1),abs(i0)) ),min(min(divInt(res,in1), max(i0, in0)), int(7.0))), ( divInt(min(min(res, i1), min(i1, in1)),int(1.0)) + max(max(abs(i2), in1), -abs(in0)) )), min(max(in1, divInt(+in0,+( res + res ))), in2))
if b0:{:
res = res
b1 = b0
:}else:{:
in1 = res
b2 = b2
:}
b2 = not False
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = max(in1, min(in2, in0))
loopBreak% = 0
while False:{:
b1 = b2
b2 = ( b0 or ( b1 and b0 ) )

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if ( ( int(5.0) is not -mod(( min(i2, i0) - in2 ),abs(divInt(res,in0))) or False ) and i1 == ( divInt(i1,min(( max(in2, i0) + in2 ), ( i2 + min(in0, in2) ))) + min(max(+( in0 - in1 ), int(0.0)), int(44.0)) ) ):{:
res = max(in0, min(in2, res))
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = max(in2, min(+in0, abs(in0)))
res = max(min(in2, in0), min(+in1, res))
b0 = min(i2, ( max(in1, i2) * int(2.0) )) < abs(( ( min(max(abs(in2), min(+i2, abs(in2))), ( max(mod(res,i0), +in2) + ( -in0 - max(in0, res) ) )) * max(i2, int(0.0)) ) * -mod(-int(9.0),int(3.0)) ))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in2 = max(( +max(res, abs(i1)) + min(in1, +max(min(in2, in2), ( in0 - i1 ))) ), min(in0, in2))
b0 = min(( int(6.0) + in2 ), min(max(max(min(divInt(i1,in2), mod(res,i1)), ( divInt(res,res) + min(i1, res) )), mod(in1,+res)), min(abs(in2), abs(min(in1, in1))))) is not -int(786.0)
res = min(in2, in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(max(in0, in2), in1)
res = min(max(in0, in2), in1)
if max(i2, -divInt(int(68.0),( mod(max(in1, i2),max(i2, in0)) * ( mod(i1,i1) - min(in2, in2) ) ))) <= i2:{:
b0 = not False
res = min(max(in0, res), max(in2, res))
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while not ( False or not abs(abs(res)) > ( ( in0 - in1 ) * ( in0 - in2 ) ) ):{:
in1 = in0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while not ( False or not int(0.0) > ( ( in0 - in1 ) * ( in1 - in2 ) ) ):{:
in1 = +in2

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if +res is in0:{:
b0 = ( in0 != i0 and ( b1 or False ) )
:}else:{:
res = abs(res)
res = +in1
b0 = ( b1 and False )
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if not ( mod(max(min(in1, i0), ( in1 - res )),min(mod(res,in1), max(i1, i1))) + i0 ) > min(min(divInt(( i0 + in0 ),mod(i0,i2)), ( min(i0, i1) + min(in2, in2) )), in2):{:
in1 = min(in2, in0)
:}else:{:
b0 = False
i0 = i2
b2 = ( False and b1 )
:}
res = min(max(-( mod(min(divInt(abs(res),in1), abs(-in0)),( abs(abs(res)) + abs(max(i0, i0)) )) - in0 ), in2), in1)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = not ( not ( b1 or True ) and not ( True or b2 ) )
b0 = not ( not ( b1 or False ) and not ( False or b2 ) )
b0 = False
if False:{:
b2 = False
:}
i1 += ( max(min(in2, max(in0, ( divInt(( i2 - i0 ),( in1 + res )) - mod(-in1,divInt(i2,i2)) ))), min(in1, mod(min(+in0, ( ( in0 - i0 ) + abs(in2) )),( ( min(i0, in1) - mod(i0,in1) ) - abs(( i1 * in1 )) )))) + int(0.0) )
res = min(i1, i1)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(max(( min(max(+in1, max(res, in2)), max(i1, ( in0 - res ))) - max(divInt(max(+i2, ( i1 * res )),min(i2, in1)), abs(min(i0, in0))) ), min(+( max(i2, res) + in1 ), in2)), ( max(int(7.0), max(abs(( in0 * i0 )), abs(max(i0, in2)))) - min(-min(min(mod(in1,in1), i2), int(4.0)), mod(min(min(i2, res), -in1),min(i1, min(i2, mod(in1,res))))) ))
in1 = max(in1, in2)
res = min(in1, res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if int(4.0) is max(i2, +int(27.0)):{:
b0 = True
:}else:{:
i1 = -i2
:}
res += min(max(in2, min(in1, in0)), +( max(+min(min(abs(i0), in2), max(abs(in1), mod(i0,i1))), abs(-min(-i1, -res))) + max(( int(01.0) * in0 ), ( in1 + res )) ))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if ( not max(-i2, min(i2, res)) != max(+i2, i0) and min(min(max(i2, res), -in1), min(-in2, +in0)) > min(-max(i1, in0), max(min(res, in2), min(i1, in1))) ):{:
in0 = in2
:}else:{:
in1 = min(in2, in1)
:}
b1 = not ( max(min(max(abs(in2), abs(in1)), i0), in1) is not min(int(1.0), abs(min(max(i1, in1), +i1))) and ( True or not True ) )
res = max(in1, mod(in0,max(min(int(3.0), min(abs(mod(i2,min(in0, in0))), min(-min(i0, i1), +max(in1, in0)))), res)))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res += min(min(max(in0, in1), max(max(in2, min(max(in2, in0), +in0)), min(max(in2, i0), +in0))), max(divInt(max(in2, mod(+in1,res)),mod(( abs(in0) - i1 ),max(abs(in0), abs(in0)))), divInt(min(( in1 * in2 ), ( divInt(i0,res) + min(in2, res) )),( divInt(abs(res),+i1) + ( i0 + i0 ) ))))
i2 = divInt(abs(res),+i2)
b1 = False
i2 = divInt(abs(res),+i2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while False:{:
i1 = mod(in1,in0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if ( ( True and b2 ) and b0 ):{:
b0 = False
:}
res = max(min(in1, max(in0, mod(max(min(abs(in1), in2), in2),min(( res * abs(i1) ), i2)))), mod(min(in2, in0),abs(res)))
in1 = -i1
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res -= ( +-min(min(max(in2, in1), max(in1, in0)), max(in2, in0)) + abs(-i1) )
b1 = not False
b0 = ( b0 and False )
in0 = int(3.0)
```

## 28. Smallest

Given 4 integers, print the smallest of them.

Link to Haskell solutions that generalised to unseen data [here](#smallest-haskell-solutions)

Link to Python solutions that generalised to unseen data [here](#smallest-python-solutions)

#### Smallest Haskell solutions

```
evolvedFunction :: Int -> Int -> Int -> Int -> Int
evolvedFunction a b c d = <evolvedCodeHere>
```

Examples of evolved code follow:


```
(min (min ( d) (min a (min d b))) (min a c))
```

```
(min (min b a) (min c d))
```

```
(min (min d a) (min b c))
```

```
(min (min a d) (min b c))
```

```
(min (min (max a a) (min (min c d) (max d a))) (min b (abs c)))
```

```
(min (min a d) (min b c))
```

```
(min (min b d) (min a c))
```

```
(min ( b) (min (min a c) d))
```

```
(min (min c b) (min a d))
```

```
(min (min d b) (min c a))
```

```
(min (min d a) (min (min c (max c 17)) ( b)))
```

```
(min (min a b) (min d c))
```

```
(min (if (even 24) then d else a) (min b (min a c)))
```

```
(min (min b c) (min a d))
```

```
(min (min d c) (min b a))
```

```
(min a (min d (min b ( c))))
```

```
(min (min b d) (min a c))
```

```
(min (min d a) (min c b))
```

```
(min (min (min b d) a) (min c d))
```

```
(min (min d a) (min b c))
```

```
(min (min c b) (min d a))
```

```
(min (min a c) (min d b))
```

```
(min (min d (if (odd d) then b else b)) (min a c))
```

```
(min (min b c) (min a d))
```

```
(min (min a c) (min d b))
```

```
(min (min b c) (min a d))
```

```
(min (min b c) (min d a))
```

```
(min (min b a) (min c d))
```

```
(min (min c b) (min d a))
```

```
(min (min a d) (min b c))
```

```
(min (min b c) (min (min c a) (if (if (((+) c 93) < (safeIntDiv 82 c)) then (if ((safeMod b c) >= d) then (odd (- a)) else (not (not (odd a)))) else ((safeMod 20 07) > 39)) then (if (((-) b b) >= a) then (if (odd d) then 84 else d) else (max d 75)) else (min (min (min b c) (min b d)) (min d c)))))
```

```
(min (min a b) (min d c))
```

```
(min (min (min d c) (min (abs b) (min c b))) (min (- (- a)) d))
```

```
(min (min a d) (min c b))
```

```
(min (max c c) (min d (min a b)))
```

```
(min (min b d) (min c a))
```

```
(min (min c a) (min d b))
```

```
(min ( (min a b)) (min d c))
```

```
(min (min a b) (min d c))
```

```
(min (min d a) (min c b))
```

```
(min (min d c) (min a b))
```

```
(min (min d c) (min a b))
```

```
(min (min (min d c) (min d b)) (min ( b) (min d a)))
```

```
(min (min a c) (min d b))
```

```
(min a (min (min (min d c) (max 26 b)) b))
```

```
(min (min b c) (min d a))
```

```
(min (min c a) (min b d))
```

```
(min (min a b) (min c d))
```

```
(min (min b d) (min a c))
```

```
(min (min (min d (if ((safeMod d c) > 38) then b else b)) c) ( a))
```

```
(min (min c a) (min b d))
```

```
(min (min d a) (min c b))
```

```
(min (min a c) (min b d))
```

```
(min (min c a) (min d b))
```

```
(min (min (min c b) ( d)) (min a d))
```

```
(min (min a c) (min b d))
```

```
(min (if (c <= a) then c else a) (min (min d b) (abs c)))
```

```
(min (min c a) (min d b))
```

```
(min ( (min b c)) (if ( (c <= d) || (c <= c) ) then (min d a) else d))
```

```
(min (min d c) (min b a))
```

```
(min (min d a) (min b c))
```

```
(min ( (min c d)) (min b a))
```

```
(min (min a d) (min c b))
```

```
(min ( c) (min b (min d a)))
```

```
(min ( (min (min (min a b) c) (abs a))) (min d a))
```

```
(min (min d c) (min a b))
```

```
(min (min c b) (min d a))
```

```
(min (min b d) (min (min a d) (min c d)))
```

```
(min (min a d) (min b (min a c)))
```

```
(min (min c b) (min d a))
```

```
(min (min c d) (min a b))
```

```
(min (min b d) (min a c))
```

```
(min (min d a) (min b c))
```

```
(min (min c d) (min a b))
```

```
(min (min b c) (min a d))
```

```
(min (min b a) (min (min a b) (min d c)))
```

```
(min (min d ( ( a))) (min c b))
```

```
(min (min d (min a c)) ( b))
```

```
(min (min d a) (min b c))
```

```
(min (min d c) (min a b))
```

```
(min (min d b) (min a c))
```

```
(min (min b d) (min c a))
```

```
(min (min (if (not (((-) c 21) /= (safeMod b b))) then (if (even (abs d)) then ((+) b 68) else ((+) b 17)) else (max (abs d) 01)) (min c b)) (min d a))
```

```
(min (min a b) (min (max d d) (min c a)))
```

```
(min (min (min c c) (min b d)) (if (a <= c) then a else d))
```

```
(min (min a d) (min c b))
```

```
(min (min c b) (min d a))
```

```
(min (min b a) (min c d))
```

```
(min (if (even c) then b else b) (min (min a d) c))
```

```
(min (min d c) (min b a))
```

```
(min (min c a) (min b d))
```

```
(min (min d c) (min a b))
```

```
(min (min (min c a) b) ( d))
```

```
(min (min d c) (min a b))
```

```
(min (min d b) (min a c))
```

```
(min (min a d) (min b ( c)))
```

```
(min (min b d) (min a c))
```

```
(min (min d ( (min c b))) ( a))
```

```
(min (min b a) (min c d))
```

```
(min (min c a) (min d b))
```


#### Smallest Python solutions

```
def evolve(in0, in1, in2, in3):
  # constant defines allowed maximum number of all loops performed
  loopBreakConst = 1500
  # initialises variable which should be used to count the number of loop iterations
  loopBreak = 0
  # stop.value is a boolean flag which should be used to check if the EA wants the program to stop.value
  <evolvedCodeHere>
  return res
```

Examples of evolved code follow:


```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = ( i0 + min(-divInt(divInt(in2,( res - in3 )),( min(res, i0) * ( i1 + in1 ) )), min(min(( ( in2 - res ) + max(res, res) ), int(7.0)), +max(min(i0, in0), max(in2, in0)))) ) == mod(in2,int(8.0))
res += min(min(in3, in0), min(min(in3, in1), in2))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if ( not b0 and b1 ):{:
in1 *= divInt(in0,in3)
:}else:{:
in3 -= max(i1, res)
:}
res += min(min(in1, in2), min(min(in1, in0), in3))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b1 = int(6.0) >= divInt(abs(int(22.0)),divInt(abs(mod(max(in0, in0),-in1)),min(+divInt(res,in1), min(min(in2, in1), -in1))))
res = min(in3, min(in1, min(+in0, abs(in2))))
res = min(in3, min(max(res, res), divInt(in2,min(int(6.0), i1))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in2 = min(in2, in3)
res = min(in2, in1)
if ( False and i2 != mod(min(int(52.0), abs(max(abs(in1), -in0))),max(( max(+i1, res) * abs(min(in3, res)) ), in1)) ):{:
b1 = True
:}else:{:
res = min(res, in0)
in0 = max(in3, res)
in3 *= max(in0, min(in1, in0))
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if ( not ( b1 and max(abs(res), min(in3, in2)) < min(divInt(res,in0), in1) ) or max(in0, int(3.0)) <= abs(( max(( in2 + i1 ), abs(i2)) * mod(abs(i0),in0) )) ):{:
b0 = b2
in0 = min(in1, in0)
:}
res = min(min(in2, in3), in0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = ( ( mod(abs(in3),-in2) == i1 and i2 >= in3 ) or not int(2.0) <= abs(min(in3, res)) )
res = min(in1, in2)
res = min(in0, res)
res = min(in3, res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b1 = ( b1 or b0 )
res = min(in1, in2)
b1 = not not not b0
if not False:{:
b0 = ( True or True )
:}
res = min(min(in0, min(max(abs(mod(in2,i0)), -int(2.0)), in3)), res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = -int(47.0) == max(in1, max(int(70.0), divInt(abs(in0),min(+i1, ( in3 - i1 )))))
res = divInt(in0,i2)
res = min(min(min(in3, in1), in0), in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 += min(max(-( +( in0 * in2 ) * ( abs(i1) * min(i0, in1) ) ), abs(min(int(9.0), mod(mod(in2,in0),min(i2, in2))))), max(min(min(abs(abs(i1)), -i0), max(in2, min(mod(i1,in3), mod(in1,i1)))), -abs(( divInt(in2,i1) - divInt(in2,i0) ))))
res = min(min(divInt(min(in3, in2),i2), min(in3, in1)), min(in1, in0))
b1 = not b1
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(in1, in0), in3)
res = min(min(in1, in2), min(min(in1, in0), in3))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if abs(-int(6.0)) < min(min(( max(min(in3, in1), i0) * max(( i2 * in3 ), in2) ), -res), -( -min(i1, in3) - max(( in1 + i0 ), abs(i1)) )):{:
b2 = not b2
:}
res = min(min(in3, in2), min(in1, in0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 = min(+--min(in1, in2), in3)
res = min(+--min(in0, in1), in3)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = not ( ( not False or True ) or True )
res = min(min(in0, min(in1, in2)), in3)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(in1, +in3), in2)
if True:{:
i0 = in3
b2 = b1
res = min(min(in0, res), i0)
:}else:{:
b2 = ( in2 is not in0 and i0 >= i0 )
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 = min(in2, in3)
b2 = abs(abs(min(( -( i1 + i2 ) * ( abs(+i0) * divInt(( in3 * res ),in0) ) ), min(int(69.0), ( ( +res + +in1 ) + divInt(( in2 + i0 ),-in3) ))))) >= i2
res += min(min(in0, max(int(3200.0), +divInt(+( -in2 * min(res, res) ),in2))), +min(max(min(in2, in3), in3), in1))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while b1:{:
i0 = in2

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if in2 > in0:{:
in2 = in1
:}else:{:
in0 = in1
:}
if ( ( ( b0 and b2 ) or ( ( ( in2 * i0 ) * divInt(in3,i0) ) * abs(min(res, i0)) ) > int(64.0) ) or not ( ( b2 or True ) and in2 > in0 ) ):{:
in0 = in1
res = min(in2, in3)
:}else:{:
res = min(in0, in3)
b2 = b0
:}
b1 = ( b0 or not b0 )
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res *= min(min(in1, in3), in0)
res += min(min(min(min(in1, in3), in0), in3), in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = not res is not max(( ( abs(int(4.0)) * min(max(( in3 + in3 ), min(in0, i2)), max(max(in2, i2), in1)) ) + -max(i1, max(( in1 * in0 ), mod(in3,i2))) ), min(mod(+max(( i1 - i2 ), divInt(in0,in3)),i2), ( +( i2 + ( in1 + i0 ) ) * abs(in3) )))
res = +min(min(in2, ( min(in3, in0) + abs(-+i0) )), in1)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in2 += i1
if min(in1, max(divInt(+in1,-res), abs(( in1 - in1 )))) >= -min(+abs(in0), -in0):{:
in1 = in0
:}else:{:
i1 = i1
:}
if not min(in1, min(max(in1, in3), in1)) >= ( divInt(mod(min(res, i2),min(in0, in2)),( mod(i2,i1) - in3 )) - ( int(0.0) - min(min(in2, in2), +in3) ) ):{:
b2 = not b0
:}else:{:
in1 = in2
:}
res += min(in3, in1)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(in0, min(in2, in3)), in1)
b2 = abs(max(--min(abs(divInt(in1,res)), min(max(i2, in1), max(i1, in3))), in3)) is max(i0, min(in1, ( +abs(max(+in0, ( in3 - in2 ))) - +max(abs(-i0), i0) )))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = max(int(7.0), mod(int(773.0),mod(abs(min(mod(i1,in3), res)),( divInt(( in2 - i1 ),min(in1, in2)) - abs(( in0 - i0 )) )))) < ++( abs(int(6.0)) + int(7.0) )
res = min(divInt(+min(min(in0, ( mod(i1,min(i2, i2)) + min(in3, max(in1, i2)) )), ++in1),i1), in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 = min(min(in3, in2), in0)
res = min(min(in3, in2), in1)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b1 = b2
res += min(min(divInt(in0,( divInt(( mod(min(in0, i0),+in1) + i2 ),( +-i1 + min(-in3, ( res + in1 )) )) * int(0.0) )), min(in1, in3)), in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(in1, min(in3, in2)), min(( int(960.0) + ( max(( ( i0 - in1 ) * divInt(i0,i0) ), int(4.0)) + +max(-in0, max(i2, res)) ) ), in0))
in2 = min(in1, in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in2 = min(in2, in0)
res = min(in1, min(in2, in3))
b2 = mod(i2,i2) is -min(abs(int(57.0)), int(1.0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = False
in3 = min(in3, in2)
res = min(in1, min(in3, in0))
in1 += min(in3, abs(i0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if True:{:
b2 = in3 <= in2
:}else:{:
b2 = True
:}
res = min(in0, min(in3, min(max(+in1, min(in0, in1)), max(min(in2, in2), mod(in2,in2)))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = res is -int(4.0)
if ( b0 and not False ):{:
b0 = ( True or False )
:}else:{:
res = min(min(in2, in1), max(in3, in3))
:}
res = min(res, in0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(in1, in2), in0)
b1 = ( not int(2.0) is not -max(min(( in0 + in2 ), in3), in3) and b0 )
if ( False or ( True and ( b0 and in3 >= +int(9.0) ) ) ):{:
i1 += in0
b2 = not b1
b2 = b0
:}else:{:
res = min(min(in1, res), in3)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
i1 = max(divInt(abs(-in3),abs(i0)), abs(+in3))
res += min(in1, min(min(in0, in3), in2))
i0 += int(92.0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
i2 = divInt(min(in2, in0),-divInt(abs(mod(+in2,min(i1, in2))),( i0 + divInt(( in1 + i2 ),min(i1, in2)) )))
res = min(in1, min(i2, in3))
in3 = int(96.0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = i2 != in3
b1 = not ( ( +min(i0, ( i0 - i1 )) >= max(int(9.0), i0) or not b1 ) and ( b0 or b2 ) )
res += min(min(min(in0, in2), min(in1, in2)), max(in3, in3))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(in3, in2)
res = min(in0, min(in1, res))
res = min(in1, res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 = min(in1, in3)
res = min(in0, min(in2, in3))
b1 = ( int(66.0) == max(in2, max(divInt(max(in1, +( in3 - res )),( max(max(in3, in1), divInt(in0,in1)) * abs(+i0) )), abs(max(max(+res, abs(i0)), min(+in2, ( res * in0 )))))) and in2 is not in2 )
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
i0 -= in0
in3 = min(in0, min(+in1, in3))
res = min(( in2 + +abs(i2) ), min(+in1, in3))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(in3, in0), min(in1, in2))
in0 = min(mod(max(min(int(9.0), int(9.0)), max(abs(in1), +( i0 - in2 ))),mod(mod(abs(abs(in0)),abs(-res)),int(7.0))), i0)
b1 = True
b0 = not ( ( b2 or True ) and b1 )
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
i2 = abs(min(abs(+min(res, i1)), abs(abs(mod(in2,i0)))))
if res > int(139.0):{:
res += i1
:}
res += min(min(in3, in0), min(min(in3, in2), in1))
in2 = abs(min(int(1.0), mod(in3,abs(abs(min(min(min(res, in3), mod(i2,in2)), min(divInt(in3,i1), res)))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in2 = min(min(in2, in3), min(in1, in2))
res = min(min(in2, in2), min(in1, in0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while in1 > min(in3, mod(divInt(min(in0, in1),mod(i2,i2)),abs(i2))):{:
in1 = in0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while in1 > min(in3, mod(int(97.0),abs(i2))):{:
in1 = in3

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i2 *= mod(mod(min(int(10.0), ( -max(( in3 - in1 ), min(in3, i0)) + -divInt(divInt(res,i1),mod(res,in2)) )),min(max(max(int(9.0), ( ( res * res ) - -in3 )), i0), abs(mod(abs(max(in3, in3)),max(-i0, max(in2, in1)))))),res)
res = min(in2, in1)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while in0 <= min(in3, in1):{:
in1 = in0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
if int(0.0) >= max(-( max(in2, in2) - max(in2, in1) ), +mod(i1,abs(i1))):{:
i2 = in1
:}else:{:
i2 = in2
:}
res += min(in3, i2)
b2 = max(max(min(max(min(min(in0, min(res, in0)), i2), abs(min(min(res, in1), divInt(i0,res)))), abs(max(int(2.0), int(9.0)))), int(5.0)), ( +int(9.0) - mod(in1,( in1 - -abs(in3) )) )) <= i1
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while not in2 <= mod(( in1 + mod(i2,in1) ),abs(divInt(i1,i0))):{:
in2 = in1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while not in2 <= mod(( in0 + mod(i2,res) ),abs(mod(i1,i0))):{:
in2 = in0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
res += min(in2, in3)
loopBreak% = 0
while not in2 <= divInt(( in0 + mod(i2,in3) ),abs(mod(i1,i0))):{:
res += min(in2, in3)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res += min(mod(min(in0, ( ( ( ( res - in0 ) * ( res * in3 ) ) + +( i1 * i1 ) ) + min(in1, ( i1 + in3 )) )),-min(min(divInt(abs(i0),max(in0, in0)), abs(max(in3, in0))), min(( divInt(i1,in1) - i2 ), abs(( i1 * i1 ))))), in2)
in3 = +int(706.0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 = min(in3, in0)
in3 = min(in3, in1)
res = min(in2, in3)
res = min(in2, in3)
b0 = not -max(divInt(+in3,int(7.0)), int(1.0)) < int(902.0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 = min(in1, in3)
in3 = min(min(( max(int(7.0), +min(in0, in2)) - abs(-abs(i0)) ), in0), in3)
res = min(in3, in2)
if not ++i1 != in1:{:
b1 = True
in1 -= ( ( in2 * i0 ) + abs(i2) )
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(in1, in0)
res = min(in3, res)
if False:{:
i0 = abs(abs(i0))
:}else:{:
res = min(in2, res)
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res += min(in1, in3)
res = min(in3, ( mod(divInt(max(max(divInt(( res * i2 ),in0), mod(i0,in1)), abs(mod(i0,min(in1, in1)))),+max(min(res, in0), in0)),( i1 + abs(-abs(i2)) )) - -min(( abs(min(i1, i1)) + min(+res, divInt(in2,i0)) ), abs(int(99.0))) ))
res = min(in0, res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while ( ( False and b2 ) or not ( +i1 >= min(in2, res) or b1 ) ):{:
in0 -= res

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b0 = False
res = min(+in0, in2)
res = min(min(in1, in3), res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if +in1 > int(0509.0):{:
i0 += in1
b1 = ( b1 and True )
:}else:{:
i1 = -i0
:}
res += min(min(in3, in2), min(in1, in0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while ( b0 or False ):{:
in1 += max(in0, i0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b0 = int(5.0) == divInt(mod(max(abs(abs(divInt(i0,i0))), min(-divInt(in3,in2), abs(max(res, in0)))),max(min(i1, abs(-i1)), i1)),( mod(max(divInt(in1,i1), divInt(max(in2, i1),+res)),i1) - -( -+res + max(max(i2, i0), in2) ) ))
in2 = min(in2, in1)
res = min(in0, min(in2, in3))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(in0, min(+min(in2, in1), max(divInt(in1,in3), max(res, in0))))
loopBreak% = 0
while b2:{:
b0 = b0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while mod(abs(max(mod(( res * i2 ),i2), divInt(int(1.0),res))),i0) >= max(abs(int(47.0)), mod(( min(( in2 + in3 ), +i0) + mod(-i1,+res) ),in2)):{:
in0 += abs(i1)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b0 = b0
res = min(in3, res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while abs(min(res, ( i1 * -max(in0, in0) ))) <= -max(max(min(( i0 - i0 ), abs(i2)), ( divInt(res,i1) * in1 )), max(mod(( in0 - in1 ),max(i0, i1)), max(min(i2, res), min(i2, in0)))):{:
in1 = in2
in2 = in0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
loopBreak% = 0
while i1 <= -max(min(int(0.0), ( ( i0 - i2 ) - +i2 )), max(divInt(( in2 - in1 ),max(i2, i0)), max(min(i2, in2), min(i2, in3)))):{:
in1 = in2
in2 = in0

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
res += min(in3, in1)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = int(5.0) > int(8.0)
i1 = max(abs(+i0), abs(divInt(max(in2, res),abs(res))))
b0 = not True
res = min(in0, in3)
res = min(in1, res)
res = min(in2, res)
i0 -= int(683.0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = ( -divInt(int(7.0),abs(( in2 * i2 ))) != min(res, in2) or min(mod(+abs(res),divInt(abs(i2),max(in1, in2))), int(1.0)) == int(069.0) )
res = min(in0, +min(in3, in1))
res = min(in2, +res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b0 = ( b0 or False )
in1 += min(-max(min(abs(min(min(i2, i2), min(in0, i2))), max(max(( in0 * i2 ), abs(i2)), divInt(i1,in2))), min(min(max(( i1 * in3 ), max(i0, in2)), +-i0), -( min(in1, in2) * -in2 ))), max(+divInt(divInt(+( i2 + i2 ),abs(max(i2, i1))),int(92.0)), divInt(i1,( min(-abs(i0), in0) * divInt(int(8.0),( min(in0, res) - -i2 )) ))))
res += min(in3, min(min(in0, in2), in1))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
i1 += res
res = min(min(in0, in1), in3)
res = min(res, in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if ( ( abs(abs(min(i1, i0))) - -mod(-in2,max(in1, in2)) ) - +mod(i2,( divInt(in3,in1) + min(in2, in3) )) ) < int(99.0):{:
in3 = min(in2, in3)
in2 = min(in1, in0)
:}else:{:
b0 = i1 == in1
:}
res = min(in2, in3)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(mod(in1,abs(mod(( ( min(in3, i2) + i0 ) + ( mod(i1,i1) * abs(in3) ) ),mod(abs(-i1),abs(mod(i1,i2)))))), min(min(( in0 - i1 ), min(in3, in2)), in1))
i2 = max(min(res, max(min(in2, +min(max(mod(in1,i1), min(in2, in1)), min(( in3 - in3 ), max(i0, i1)))), divInt(divInt(min(max(+res, abs(res)), abs(max(i2, i1))),abs(abs(abs(res)))),in1))), max(mod(int(98.0),abs(( abs(divInt(+in1,+i1)) - -max(divInt(in2,in3), in2) ))), int(0.0)))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = abs(( -max(abs(i2), in0) + max(max(min(in2, in0), mod(res,i2)), mod(+in2,-in1)) )) is not max(max(( abs(divInt(res,in0)) - int(8.0) ), int(50.0)), ( in2 - int(85.0) ))
res = min(in2, in1)
res = min(res, in3)
res = min(res, in0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while int(3.0) < min(mod(in1,abs(divInt(( i0 * res ),+i2))), i1):{:
b2 = b1
b0 = in1 < i1

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
i0 += min(in3, in2)
res = min(min(i0, in1), in0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b1 = True
if b1:{:
b0 = False
res = max(in0, i1)
:}else:{:
i2 = +i1
:}
res = min(in0, min(min(max(i0, abs(min(-divInt(in2,i1), ( ( i0 + in1 ) - min(in2, in3) )))), in1), --min(int(99.0), min(min(in2, mod(min(in3, in1),min(res, i2))), abs(mod(in1,i0))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(in3, in1), in2)
if True:{:
i1 *= i1
in1 = i1
:}else:{:
b2 = in3 > in1
:}
res = min(res, in0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
loopBreak% = 0
while in2 < abs(abs(in1)):{:
i0 = in2
in0 = min(i0, in0)

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
b2 = not b1
res += min(in0, min(in3, in1))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in0 = min(+min(in1, in3), +in0)
in1 *= ( ( divInt(-abs(abs(in2)),min(( abs(mod(res,res)) * max(mod(in1,i0), max(in0, i1)) ), mod(int(0.0),max(-i2, i0)))) * -abs(max(int(9.0), max(( res * i2 ), abs(in2)))) ) * +mod(min(max(min(max(i2, i0), divInt(in2,i1)), mod(abs(i1),max(i1, in2))), mod(int(1.0),min(min(in1, i2), in2))),-abs(min(abs(in1), ( in0 * in1 )))) )
res = min(in0, in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(res, in3)
res = min(in0, in3)
in3 = min(in1, res)
res = min(in2, in3)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b1 = not ( ( ( not b0 and +abs(res) != i2 ) or False ) or not ( not b0 and ( not not False or False ) ) )
res = min(min(in3, in0), min(in2, in1))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(in1, in0)
i0 += max(( max(+in0, ( res * abs(mod(max(res, res),divInt(in1,in1))) )) - ( divInt(max(i2, mod(abs(in0),-in3)),abs(max(mod(in0,i2), max(in1, in1)))) + int(0.0) ) ), max(( +max(int(3.0), in1) + int(7.0) ), divInt(( ( min(abs(in0), abs(in0)) - +abs(in2) ) * ( min(min(in3, i1), divInt(in0,res)) - abs(( i2 - i0 )) ) ),-max(-min(i0, i2), mod(mod(in2,in2),min(i2, i2))))))
res = min(res, min(in2, in3))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b1 = b1
res = min(in0, in2)
res = min(min(in2, in0), ( i1 + in3 ))
i2 *= min(i0, min(-res, +i2))
in0 = abs(divInt(int(5.0),max(+in3, mod(res,i0))))
in0 = in0
b0 = b1
res = min(in1, res)
in1 -= -min(max(+min(( int(8.0) - abs(max(i1, in2)) ), max(abs(in3), -i2)), abs(-in0)), divInt(mod(i2,abs(abs(-in1))),max(+i1, divInt(in2,max(int(8.0), max(i0, max(i2, i0)))))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = in0
if b1:{:
b0 = b0
i1 = min(in2, in3)
:}
res = min(min(in0, in2), min(in3, +divInt(in1,-int(9.0))))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
i2 = i2
res += min(in3, in2)
if not ( b1 or ( b0 and not ( mod(in1,i0) > max(i2, in1) and ( in2 * in0 ) is not abs(i2) ) ) ):{:
i1 *= max(in2, i0)
res = min(min(in0, res), in1)
:}else:{:
b0 = ( i1 * in3 ) is not ( in2 - in0 )
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 -= abs(max(min(min(( int(8.0) * min(( in2 - i2 ), abs(i0)) ), min(min(mod(i0,i0), in1), min(max(in2, in2), abs(res)))), +divInt(min(divInt(in0,in2), +res),in2)), max(abs(max(abs(divInt(i0,in2)), ( +in3 - in0 ))), i1)))
res += min(in2, min(in3, in1))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
i0 = -abs(min(-( -res - divInt(i1,i2) ), i1))
res += min(in1, in3)
if abs(abs(mod(( min(-i2, ( i2 * res )) * abs(+in0) ),int(70.0)))) <= abs(( divInt(abs(min(min(res, in0), +in1)),in2) * int(6.0) )):{:
res = min(in2, res)
res = min(in0, res)
b2 = b2
:}
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b1 = not min(in2, in0) > max(int(23.0), +( min(in2, -i2) * max(divInt(i0,in0), +in2) ))
res = min(in0, min(min(in2, in3), in1))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = not not b1
res = min(in3, min(mod(min(in2, in0),min(( in3 - int(8.0) ), i2)), in1))
in2 -= min(divInt(( int(8.0) * max(( +abs(mod(i1,in1)) + ++min(res, in0) ), abs(mod(( res - ( in3 - in0 ) ),( i2 * in2 )))) ),+int(605.0)), int(19.0))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = True
res = min(in1, in3)
res = min(min(in1, min(in3, in2)), in0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if abs(min(max(+in2, abs(res)), mod(divInt(in0,res),min(in0, in0)))) is not int(379.0):{:
b0 = False
:}
res = min(min(max(abs(in1), int(3.0)), min(+in1, in2)), in3)
res = min(in0, res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = False
res = min(in1, min(in2, in0))
res = min(in1, min(res, in3))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = in3
i0 += -min(mod(res,divInt(min(+in3, ( in3 * i1 )),min(min(in0, i0), i0))), +divInt(int(0.0),int(8.0)))
res = +min(in0, min(in3, min(in1, in2)))
in1 = abs(i2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(in1, in0), in2)
if b1:{:
in0 = min(in3, in2)
:}
res = min(res, in3)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 = min(in0, in3)
res = min(mod(min(in1, in2),divInt(divInt(divInt(int(2.0),max(i0, abs(( i0 + i2 )))),abs(int(81.0))),max(int(34.0), max(min(max(min(in0, i1), abs(in1)), max(( in2 * in2 ), ( in0 + in2 ))), mod(int(0.0),int(0.0)))))), in3)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in3 = min(in3, in0)
b0 = ( ( b1 or b1 ) and not b2 )
res = min(min(in3, in1), in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
in1 = min(in1, min(in0, in2))
loopBreak% = 0
while b1:{:
in0 = ( abs(in0) + ( in3 + i0 ) )

if loopBreak% > loopBreakConst or stop.value:{:
break
:}
loopBreak% += 1:}
res = min(in1, in3)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
if ( -divInt(in2,int(6.0)) * i2 ) > i2:{:
b1 = True
:}else:{:
b0 = False
in3 = min(in0, in3)
:}
res = min(min(in1, in3), in2)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
b2 = False
res += min(min(in3, min(in1, in0)), in2)
b1 = ( not True or False )
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(min(+in3, in2), in0), in1)
i0 = ( ( abs(res) + -( in0 + max(abs(min(max(i1, res), divInt(in1,in3))), max(( ( in1 * i0 ) * max(i1, in1) ), -+i1)) ) ) * -abs(min(max(abs(int(80.0)), int(02.0)), abs(divInt(max(min(in1, in3), min(in0, in3)),-max(i1, i0))))) )
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(in3, in2)
res = min(min(in1, in3), in2)
res = min(in0, res)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res += min(in3, in2)
b1 = b1
res = min(( in2 + i2 ), abs(res))
res = min(res, min(in1, in3))
res = min(res, in0)
b0 = not min(int(4.0), ( i1 * i2 )) > abs(abs(divInt(i0,in2)))
b2 = False
in1 = ++abs(divInt(-int(0.0),min(+in2, +max(in3, res))))
b2 = not b0
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(( min(in1, in0) + i0 ), min(in2, in3))
b1 = True
in2 -= divInt(in1,in2)
in2 *= divInt(in1,mod(in3,( max(( mod(max(min(i0, in1), min(in0, i1)),int(7.0)) - int(5.0) ), in0) * -min(min(int(7.0), divInt(abs(i1),min(i0, in3))), max(min(( in3 - in0 ), in3), in2)) )))
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
res = min(min(in3, in2), in0)
res = min(min(in1, res), in0)
```

```
b0 = b1 = b2 = bool()
i0 = i1 = i2 = int()
res = int()
i2 += in1
res = min(in0, min(min(max(in1, in1), in3), in2))
b1 = not ( False and True )
```


# References

1. Garrow, F., Lones, M.A., and Stewart, R., Why Functional Program Synthesis Matters (In The Realm of Genetic Programming). GECCO '22: Proceedings of the Genetic and Evolutionary Computation Conference Companion. July 2022. ACM.
2. Fenton, M., McDermott, J., Fagan, D., Forstenlechner, S., Hemberg, E., and O'Neill, M. PonyGE2: Grammatical Evolution in Python. arXiv preprint, arXiv:1703.08535, 2017.
3. T. Helmuth and L. Spector. General Program Synthesis Benchmark Suite. In GECCO '15: Proceedings of the Genetic and Evolutionary Computation Conference. July 2015. ACM.
