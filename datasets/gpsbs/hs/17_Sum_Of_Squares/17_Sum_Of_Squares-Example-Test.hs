{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions

type InputType = Int
type OutputType = Int
type FitnessError = Int

inval :: [InputType]
outval :: [OutputType]
inval = [6,7,8,10,13,15,19,20,21,23,25,26,28,29,30,35,37,39,40,41,44,45,48,52,55,56,57,58,59,60,61,63,65,68,69,73,76,81,82,83,85,87,90,92,93,94,95,97,98,99]
outval = [91,140,204,385,819,1240,2470,2870,3311,4324,5525,6201,7714,8555,9455,14910,17575,20540,22140,23821,29370,31395,38024,48230,56980,60116,63365,66729,70210,73810,77531,85344,93665,107134,111895,132349,149226,180441,187165,194054,208335,223300,247065,263810,272459,281295,290320,308945,318549,328350]

-- in this case the evolved function is the expected output
evolvedFunction :: Int -> Int
evolvedFunction 0 = 0
evolvedFunction n = n^2 + evolvedFunction (n - 1)

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff input out = abs (evolvedFunction input - out)

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
quality = sum caseQuality

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
