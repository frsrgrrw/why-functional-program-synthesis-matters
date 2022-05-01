{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions

-- problem instance input, output and error type
type InputType = (String, Int)
type OutputType = String
type FitnessError = [Int]

-- test data
inval :: [InputType]
outval :: [OutputType]


-- in this case the evolved function is the expected output
evolvedFunction :: String -> Int -> OutputType
evolvedFunction xs x = unlines (map unwords (chunk x (words xs))) 

-- removeLastCharNewLine :: String -> String
-- removeLastCharNewLine s 
--   | s == []        = s
--   | last s == '\n' = init s
--   | otherwise      = s

chunk :: Int -> [String] -> [[String]]
chunk x []  =  []
chunk x ss  =  take x ss : chunk x (drop x ss)

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff (string, int) b = [levenshtein evolvedOutput b,
                  abs (countNewLines evolvedOutput - countNewLines b),
                  extraBit evolvedOutput b int]
                  where evolvedOutput = evolvedFunction string int

countNewLines :: String -> Int
countNewLines s = length $ filter (== '\n') s

extraBit :: String -> String -> Int -> Int
extraBit inputString outputString int =
  sum [ abs (length (words i) - length (words o))   | (i,o) <- zip splitInput splitOutput] + abs (length splitInput - length splitOutput) * int
    where
      splitInput  = lines inputString
      splitOutput = lines outputString


-- calculate levenshtein distance between two strings
levenshtein :: [Char] -> [Char] -> Int
levenshtein "" "" = 0
levenshtein "" s2 = length s2
levenshtein s1 "" = length s1
levenshtein s1 s2
   | last s1 == last s2 = levenshtein (init s1) (init s2)
   | abs (length s1 - length s2) > 1 = 99999 -- stop bad recursive call
   | otherwise          = minimum [1 + levenshtein (init s1) s2,
                                   1 + levenshtein s1 (init s2),
                                   1 + levenshtein (init s1) (init s2)]

-- calculates if an example is a correct program based on its error 
singleExamplePassedCase :: FitnessError -> Bool
singleExamplePassedCase a
    | all (== 0) a   = True
    | otherwise      = False

-- collates all passed cases
passedCases :: [FitnessError] -> [Bool]
passedCases = map singleExamplePassedCase

caseQuality = errors inval outval
cases = passedCases caseQuality
quality = sum (map (fromIntegral . sum) caseQuality) -- incase of overflow

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
