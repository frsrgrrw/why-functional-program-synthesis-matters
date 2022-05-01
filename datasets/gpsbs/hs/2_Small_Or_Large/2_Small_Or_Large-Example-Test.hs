{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions

-- problem instance input, output and error type
type InputType = Int
type OutputType = String
type FitnessError = Int

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = [980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000,1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1011,1012,1013,1014,1015,1016,1017,1018,1019,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,-205,-7595,-8348,9705,805,7240,8903,5619,-6616,3133,9984,-3092,8919,192,-5332,-5362,166,3337,1491,-3173,-7400,-5444,-9185,-4045,-7064,1406,8066,-1509,8550,739,3768,3475,5530,8109,93,9903,-62,5707,5221,5511,-6920,977,7169,-2513,-7562,1655,-3022,4166,-8130,9108,-6615,-8478,-330,-7786,1373,-2508,-7840,3922,3829,5754,1502,4229,-7731,9940,4118,-9280,-3802,-2140,-405,2728,-4535,5023,5498,-6305,6062,-2953,-2136,-7433,-3132,3236,162,-4853,-4681,4608,2563,9782,-8848,-2428,3413,9868,8813,5609,8456,-471,6832,-4155,-835,6239,2232,-4520,4382,4566,3963,7219,6980,7549,1775,-1447,-792,-2260,-4473,5836,-3494,2612,-8731,-3263,-5280,9094,-7580,1484,9703,-6573,7667,401,8176,5235,-5804,4546,-2037,3007,-6820,7781,8892,1123,-8967,-3735,-6823,3693,-1093,3300,8382,-1541,-8614,-3454,525,6978,-6196,-5829,-1094,-6457,2007,121,8915,-8253,9348,-8681,-6040,6635,-9294,-9792,2587,-8166,-4685,-8261,-1396,2907,3999,20,9406,8676,-7384,3589,-3897,9657,-5847,8446,-4300,-1253,-7966,-6374,7252,-9725,-3852,-5615,-1801,-6645,9108,6985,-5274,4069,6961,-5771,9811,8214,7564,9330,3419,-2527,-6097,1394,-6606,-4887,5666,8098,-3240,389,-1566,3366,5853,1769,-2377,-2155,9668,-4748,422,4056,2625,-5118,779,-1200,-9967,5295,1215,6985,4327,-2733,4156,-6713,78,8808,5501,-577,-9729,-7729,1567,-9200,7490,-4028,4915,-3980,-2051,3775,-5751,-9432,2401,3633,4129,8890,4425,7698,2402,-3530,8965,-7399,-3523,347,1062,5749,2548,3295,8001,451,9845,-5524,8270,-2723,4969,7406,9712,1701,9689,-1858,7586,-3073,4908,-7680,-5803,-9036,-6885,1898,-2453,3406,-932,3004,-8479,-9992,9763,9472,-7039,9428,3916,1602,1169,-7590,-3074,7336,7505,-5722,-3302,2869,-5939,-8734,4098,3636,-4185,8391,5113,-7131,-7805,5414,-402,323,-3763,6804,-1206,8489,-9434,-670,-43,4792,3876,2131,-4442,-3005,-9317,4496,7167,5072,-5551,7706,7263,-4206,7795,-8300,-2275,-679,4459,3960,6976,6318,9341,5348,-3047,-1550,8280,4527,7818,5104,8111,6781,2658,5795,4806,-9122,2101,-9529,3305,-4041,5804,1217,-4756,-4125,6542,5380,201,-2686,-2941,-1100,-2459,5167,-4700,-2856,-9551,6924,-6903,9648,-9841,-7365,-6918,-5234,-2542,2191,-8453,-5625,5855,-9416,-1917,-3852,9424,-7727,6632,-9982,9688,-6476,7686,-5404,-5887,8790,8369,-3820,-4948,4892,4441,-6914,-5721,-2246,-8097,-6218,-6655,4015,-4087,-6273,2232,-9383,5056,-3916,-2903,-7789,-1456,-6182,7439,3700,-6477,7750,9690,1065,-1728,-8658,7052,-3746,-7190,-2765,719,3767,-3588,6856,5482,5041,-6212,7844,-579,1263,-4977,2379,-3680,1351,864,3873,7185,-8444,8476,5723,4921,8836,8955,-5723,-3314,-7822,-9801,-5237,7176,6076,4307,-6173,-5077,7224,1725,-4020,-1289,-8835,-5073,-8293,-995,-6347,689,-3775,-7658,-7202,-6762,-8031,7337,-737,5647,-2374,9341,-9744,9371,-902,8655,6816,3995,-3609,313,4075,-8941,-7036,2517,-2517,-7233,918,8507,9549,4599,-5576,6123,9940,3068,1200,3566,1377,-9627,-2391,7814,-930,-3830,-8990,8915,-4283,6833,2663,2308,3526,6704,5601,-9649,3713,-9757,-4346,-4624,6343,-5054,568,4525,-8346,-3100,9300,-7938,-1798,3427,-8704,-6200,4707,8870,-3417,-4454,-9773,4530,8957,-3937,-1098,-9433,8385,-4943,4891,3715,6900,-4284,-6946,8232,4209,4041,-6798,-6766,-2136,-8379,5729,7244,9474,8588,3928,3000,-3705,6678,-6964,2997,-2223,-1034,900,9380,9541,2939,-6213,4441,4070,7818,-9253,-825,-636,-8104,131,819,-6848,-9306,9618,3307,-4154,-3071,-1843,-3693,4227,-1835,-3334,5896,2533,7267,-7222,-2765,3361,-1889,-5940,4609,-6135,7363,-3540,-8644,9011,6274,-9053,5586,577,-7255,6362,7903,-548,-3765,8386,-3922,7085,8255,3375,4439,7598,-3801,-1515,-4441,-3491,2702,-6506,-6683,9835,8316,-9324,452,-2194,-9174,-3815,2349,3863,-7943,-9688,7607,5699,-64,630,1931,5064,5518,-5711,-1580,-6305,-8196,-8125,-3048,-8080,5549,6728,-2395,6878,-6981,-7711,5174,-3285,-2687,-5425,-5224,6204,-383,5879,8724,-2494,6278,-7505,6100,-8944,-9150,2026,9208,5949,6814,-7048,-9819,7693,366,9795,-982,-7426,6567,5156,6982,-2975,8749,7091,8329,6870,7694,-7201,-7579,4235,115,-8547,9661,6342,8465,-6141,9645,-1098,-3106,-2627,-6097,6280,-812,-6376,2601,-299,5471,6125,-6123,-7010,6569,-6162,-8326,-1090,-5090,-9057,-1608,-4731,2846,-9028,-5568,9361,-7297,2514,-14,-9253,9175,-5756,6681,-3690,6402,-622,4806,5069,1582,4932,-7271,7711,584,-5003,-1627,-8889,-2944,6980,8452,-7488,8747,984,-7724,-9674,-1122,-4686,-4843,-7112,-2905,-5804,-1832,8938,-5548,2598,3140,-2499,341,-7361,9157,3850,7385,4154,7237,-6292,7164,-8891,5543,-4516,-8833,2921,8994,-5089,3959,-5882,-7050,9579,-7273,3708,2364,467,9166,8365,-1114,-6421,-4268,7237,-3153,9591,-3988,1652,7523,-9390,7994,-4501,9161,1131,9471,3064,-4911,-8096,-6226,-7442,-384,1740,7263,-9235,6693,-2459,-9520,-1736,8659,3007,895,3380,8673,2727,384,-6161,5566,-3100,1314,1152,4677,-1179,-1392,-7681,-4630,-385,-2001,-8995,3509,-3004,-6963,6648,-5126,-8357,6221,7025,8887,2504,-1343,9407,-9206,9147,-7551,6811,544,8385,-6756,1948,2888,6923,5537,-7337,-5210,-9805,-5824,2620,-8293,-7940,447,-1768,3394,-4786,-9025,2254,-4310,9055,-7202,-1388,2348,-3115,9259,-36,719,-6539,5727,8614,5041,545,-6327,6526,-6201,-1898,-2060,8883,5384,-9938,-2258,-9294,1123,6432,-2161,-5872,3949,5386]
outval = ["small","small","small","small","small","small","small","small","small","small","small","small","small","small","small","small","small","small","small","small","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","large","large","large","large","large","large","large","large","large","large","large","large","large","large","large","large","large","large","large","large","small","small","small","large","small","large","large","large","small","large","large","small","large","small","small","small","small","large","","small","small","small","small","small","small","","large","small","large","small","large","large","large","large","small","large","small","large","large","large","small","small","large","small","small","","small","large","small","large","small","small","small","small","","small","small","large","large","large","","large","small","large","large","small","small","small","small","large","small","large","large","small","large","small","small","small","small","large","small","small","small","large","large","large","small","small","large","large","large","large","large","small","large","small","small","large","large","small","large","large","large","large","large","large","","small","small","small","small","large","small","large","small","small","small","large","small","","large","small","large","small","large","large","small","large","small","large","small","large","large","","small","small","small","large","small","large","large","small","small","small","small","large","small","small","small","small","large","small","large","small","large","small","small","large","small","small","large","small","small","small","small","large","large","small","large","large","small","large","small","large","small","large","small","small","small","small","large","small","small","small","small","small","large","large","small","large","large","small","large","large","large","large","large","small","small","","small","small","large","large","small","small","small","large","large","","small","small","large","small","small","large","large","small","small","small","small","large","","large","large","small","large","small","small","large","large","small","small","small","","small","large","small","large","small","small","large","small","small","large","large","large","large","large","large","large","small","large","small","small","small","","large","large","large","large","small","large","small","large","small","large","large","large","","large","small","large","small","large","small","small","small","small","","small","large","small","large","small","small","large","large","small","large","large","","","small","small","large","large","small","small","large","small","small","large","large","small","large","large","small","small","large","small","small","small","large","small","large","small","small","small","large","large","large","small","small","small","large","large","large","small","large","large","small","large","small","small","small","large","large","large","large","large","large","small","small","large","large","large","large","large","large","large","large","large","small","large","small","large","small","large","","small","small","large","large","small","small","small","small","small","large","small","small","small","large","small","large","small","small","small","small","small","large","small","small","large","small","small","small","large","small","large","small","large","small","large","small","small","large","large","small","small","large","large","small","small","small","small","small","small","large","small","small","large","small","large","small","small","small","small","small","large","large","small","large","large","","small","small","large","small","small","small","small","large","small","large","large","large","small","large","small","","small","large","small","","small","large","large","small","large","large","large","large","large","small","small","small","small","small","large","large","large","small","small","large","","small","small","small","small","small","small","small","small","small","small","small","small","small","large","small","large","small","large","small","large","small","large","large","large","small","small","large","small","small","large","small","small","small","large","large","large","small","large","large","large","","large","","small","small","large","small","small","small","large","small","large","large","large","large","large","large","small","large","small","small","small","large","small","small","large","small","small","large","small","small","large","small","small","large","large","small","small","small","large","large","small","small","small","large","small","large","large","large","small","small","large","large","large","small","small","small","small","large","large","large","large","large","large","small","large","small","large","small","small","small","large","large","large","small","large","large","large","small","small","small","small","small","small","small","small","large","large","small","small","small","small","large","small","small","large","large","large","small","small","large","small","small","large","small","large","small","small","large","large","small","large","small","small","large","large","small","small","large","small","large","large","large","large","large","small","small","small","small","large","small","small","large","large","small","small","small","small","small","large","large","small","small","large","large","small","small","","large","large","small","small","small","small","small","small","small","large","large","small","large","small","small","large","small","small","small","small","large","small","large","large","small","large","small","large","small","small","large","large","large","large","small","small","large","small","large","small","small","large","large","large","small","large","large","large","large","large","small","small","large","small","small","large","large","large","small","large","small","small","small","small","large","small","small","large","small","large","large","small","small","large","small","small","small","small","small","small","small","large","small","small","large","small","large","small","small","large","small","large","small","large","small","large","large","","large","small","large","small","small","small","small","small","large","large","small","large","small","small","small","small","small","small","small","small","small","small","large","small","large","large","small","small","small","large","large","large","large","large","small","large","small","large","small","small","large","large","small","large","small","small","large","small","large","large","small","large","large","small","small","small","large","small","large","small","","large","small","large","small","large","","large","large","small","small","small","small","small","","large","small","large","small","small","small","large","large","small","large","large","large","small","small","large","small","","","large","small","small","small","small","small","small","small","large","small","small","large","small","small","large","large","large","large","small","large","small","large","small","large","small","large","small","","large","large","large","small","small","small","small","large","small","small","small","small","large","small","small","large","small","large","small","small","large","small","large","small","small","small","large","large","large","small","small","large","small","small","small","large","large","small","small","small","","large","small","small","large","large"]

-- in this case the evolved function is the expected output
evolvedFunction :: Int -> String
evolvedFunction n
  | n <  1000  =  "small"
  | 2000 <= n  =  "large"
  | otherwise  =  ""

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError] 
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff a b = levenshtein (evolvedFunction a) b

-- calculates if an example is a correct program based on its error 
singleExamplePassedCase :: FitnessError -> Bool
singleExamplePassedCase a
    | a == 0      = True
    | otherwise   = False

-- collates all passed cases
passedCases :: [FitnessError] -> [Bool]
passedCases = map singleExamplePassedCase

caseQuality = errors inval outval
cases = passedCases caseQuality
quality = sum (map fromIntegral caseQuality) -- incase of overflow

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
