{-# LANGUAGE ParallelListComp #-}
import System.Environment
import GHC.Float.RealFracMethods (roundFloatInteger)
import Data.Ratio ((%), numerator, denominator) 
-- import Functions

-- problem instance input, output and error type
type InputType = Int
type OutputType = Float
type FitnessError = Float

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = [158,78,82,59,31,51,181,81,158,101,109,3,158,99,171,38,33,83,63,148,119,165,106,83,170,26,27,19,16,131,164,55,189,31,59,57,35,84,1,13,179,155,160,23,28,187,52,146,105,63]
outval = [0.74224,0.74405,0.74387,0.73891,0.7375,0.73867,0.73997,0.73934,0.74224,0.73956,0.73963,0.71111,0.74224,0.73955,0.73994,0.74782,0.73768,0.73937,0.73901,0.74236,0.7397,0.73992,0.7431,0.73937,0.74212,0.75124,0.73706,0.73563,0.75803,0.73977,0.74218,0.7388,0.73999,0.7375,0.73891,0.73886,0.73784,0.74379,0.66667,0.73341,0.73996,0.73988,0.74222,0.73647,0.75046,0.73999,0.74584,0.74238,0.7396,0.73901]

-- in this case the evolved function is the expected output
evolvedFunction :: InputType -> OutputType
evolvedFunction n = fromRational (gps10g n)

gps10g :: Int -> Rational
gps10g n  =  product $ take n $ iterate wallisNext (2/3)

wallisNextP :: Rational -> Rational
wallisNextP q
  | q == 2/3  =  4/3
  | q == 4/3  =  4/5
  | q == 4/5  =  6/5
  | q == 6/5  =  6/7
  | q == 6/7  =  8/7
  | q == 8/7  =  8/9

wallisNext :: Rational -> Rational
wallisNext q  =  if n < d
                 then (n+2) % d
                 else n % (d+2)
  where
  n  =  numerator q
  d  =  denominator q


-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff a b = abs (evolvedFunction a - b)

-- calculates if an example is a correct program based on its error 
singleExamplePassedCase :: FitnessError -> Bool
singleExamplePassedCase a
    | a <= 0.0001 = True
    | otherwise    = False

-- collates all passed cases
passedCases :: [FitnessError] -> [Bool]
passedCases = map singleExamplePassedCase

caseQuality = errors inval outval
cases = passedCases caseQuality
quality = sum (map roundFloatInteger caseQuality) -- incase of overflow

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
