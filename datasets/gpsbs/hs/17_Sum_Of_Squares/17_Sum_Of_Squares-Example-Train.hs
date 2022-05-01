{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions

type InputType = Int
type OutputType = Int
type FitnessError = Int

inval :: [InputType]
outval :: [OutputType]
inval = [66,79,1,17,80,16,75,9,67,88,77,71,64,96,72,89,4,22,36,18,11,32,47,43,49,12,38,27,34,84,2,24,53,3,31,42,86,51,5,33,50,91,70,14,54,100,46,62,74,78]
outval = [98021,167480,1,1785,173880,1496,143450,285,102510,231044,155155,121836,89440,299536,127020,238965,30,3795,16206,2109,506,11440,35720,27434,40425,650,19019,6930,13685,201110,5,4900,51039,14,10416,25585,215731,45526,55,12529,42925,255346,116795,1015,53955,338350,33511,81375,137825,161239]

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
