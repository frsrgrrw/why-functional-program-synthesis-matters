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
inval = [2020,-5470,241,1002,3609,-4104,-3767,-9679,-4558,-2697,36,10000,1996,0,6616,9772,2000,1104,-3278,5450,2887,1506,2182,-700,1980,1004,-9205,9585,-1080,-7579,-410,-9241,-2587,3628,-1439,-2608,996,9951,998,-4376,-4249,8128,-9414,1999,-8902,8007,1995,-9716,8746,6572,1998,-1976,-10000,995,8062,86,980,6969,6347,2069,2547,3020,1000,-255,5350,1020,-6750,-5407,2003,-5848,3439,2034,1824,-5823,847,-8685,997,-437,2002,7063,1017,999,6832,-1055,2004,2001,6207,1001,1997,8578,-4118,-6767,8318,-6463,2168,318,1003,1231,6767,-1231]
outval = ["large","small","small","","large","small","small","small","small","small","small","large","","small","large","large","large","","small","large","large","","large","small","","","small","large","small","small","small","small","small","large","small","small","small","large","small","small","small","large","small","","small","large","","small","large","large","","small","small","small","large","small","small","large","large","large","large","large","","small","large","","small","small","large","small","large","large","","small","small","small","small","small","large","large","","small","large","small","large","large","large","","","large","small","small","large","small","large","small","","","large","small"]

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
