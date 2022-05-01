{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions

-- problem instance input, output and error type
type InputType = Int
type OutputType = Int
type FitnessError = Int

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = [3101,6552,4116,5890,9525,1850,3882,5917,9033,8297,2828,7,9617,8752,6207,9257,2402,8,9108,3115,4700,1922,8238,5995,9994,7255,8139,4888,5885,6171,5341,8911,3729,5065,4383,5564,4286,9813,5,9904,5899,4009,4,2,1,2193,3,2250,9794,4037,1788,6146,7941,6617,354,7059,3833,2936,3625,4902,8652,8133,850,4405,7963,4864,6478,8165,7488,2778,4558,5345,7127,1597,3355,5750,1908,8586,6393,9999,8601,4308,3555,1084,9163,7314,4839,2300,4874,304,936,8229,8267,3410,395,1438,3890,7930,3023,7315,9266,5674,6249,9534,2172,8253,5718,5442,2295,6,202,1141,3671,2232,8063,281,429,761,4926,6585,4557,7916,8638,3076,4566,8979,3520,4326,3150,1282,10000,9476,3058,2396,8023,2169,807,4251,2219,8709,524,674,773,1518,2034,9058,1783,3596,7506,7231,5837,6221,6943,6398,8614,4262,6319,6870,7833,5891,3081,8425,6699,1091,6487,6140,6835,1371,7440,1387,8023,9879,468,6375,6746,2633,4699,9,9013,1490,6240,9024,9302,719,765,1443,65,6385,325,10,2713,4212,2454,9908,9915,7065,292,2565,556,6131]
outval = [155,45,127,81,79,131,101,99,48,40,129,17,48,35,94,260,59,4,61,62,122,51,40,81,180,58,115,42,174,262,148,97,70,73,78,117,171,43,6,136,50,158,3,2,1,139,8,46,167,114,100,112,53,45,33,58,57,49,70,135,141,115,60,96,252,29,125,66,27,129,153,161,164,123,93,55,38,27,169,92,66,34,119,45,35,120,166,46,135,25,24,115,128,137,77,53,39,102,93,120,110,37,156,105,139,40,81,68,59,9,27,107,132,46,97,43,103,34,210,138,60,146,128,36,60,92,119,140,62,53,30,123,62,121,190,77,73,83,95,141,31,114,122,61,157,66,48,119,164,71,37,37,257,169,79,78,200,151,58,81,155,203,138,45,50,63,58,115,40,66,190,136,23,200,45,41,83,20,48,92,125,22,35,52,47,48,28,125,25,7,160,83,134,136,48,102,118,54,44,156]

-- in this case the evolved function is the expected output
evolvedFunction :: Int -> Int
evolvedFunction n
   | n == 1     =  1
   | otherwise  =  1 + evolvedFunction (if even n
                                then n `div` 2  
                                else 3*n + 1)   

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ ff i o | i <- ins | o <- outs] 
    where 
        ff a b = abs (evolvedFunction a - b)

-- calculates if an example is a correct program based on its error 
singleExamplePassedCase :: FitnessError -> Bool
singleExamplePassedCase error
    | error == 0  = True
    | otherwise   = False

-- collates all passed cases
passedCases :: [FitnessError] -> [Bool]
passedCases = map singleExamplePassedCase

caseQuality = errors inval outval
cases = passedCases caseQuality
quality = sum (map fromIntegral caseQuality) -- incase of overflow

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
