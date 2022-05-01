{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions
import Data.List (sort)


type InputType = (Int, Int, Int)
type OutputType = Int
type FitnessError = Int

inval :: [InputType]
outval :: [OutputType]
inval = [(14, -34, -96),(-41, 7, -14),(-37, -63, -37),(-84, -84, -84),(-98, 49, 98),(-61, -15, -27),(21, 21, -74),(2, 2, -63),(69, 69, 13),(-91, -58, 68),(-61, 58, 55),(11, -1, 36),(-28, -24, -17),(95, 2, 84),(-57, 59, -57),(52, -70, -93),(-16, 89, 32),(-15, -22, -22),(-64, 4, 79),(77, -25, -25),(56, 76, 89),(27, 10, 10),(55, -89, 76),(32, 51, 32),(-61, -56, -42),(-47, -47, 76),(34, -71, -71),(57, 57, 57),(23, 80, 42),(-96, 49, 49),(56, -100, -55),(-2, -2, -2),(86, -8, -15),(-65, 56, -65),(39, 54, -83),(88, 88, 28),(8, -88, -61),(-34, 68, -82),(-36, -36, -36),(-14, -94, -68),(-50, -53, -92),(-52, -52, -52),(-74, -34, -74),(-58, -41, -41),(-86, -2, -98),(19, 50, 36),(-33, 64, -96),(60, 60, -49),(-24, -24, -24),(-68, -25, 74),(53, 11, 67),(-73, 69, 78),(-34, -42, -36),(29, 28, -33),(-8, -50, -34),(-86, 40, 8),(-7, -82, 69),(-95, -95, 94),(-85, -38, 32),(-83, -78, -26),(42, -86, -51),(23, -12, 23),(-32, -32, -32),(20, 58, 58),(-50, -92, -44),(40, 97, 40),(-37, -37, 60),(66, 66, 66),(98, 10, 10),(99, 99, 99),(-99, 59, 59),(-22, -52, -8),(-16, 72, -70),(36, -31, 56),(-65, 51, 51),(84, 84, 84),(-43, 1, 7),(23, -1, 11),(-61, 75, -61),(75, 21, -32),(11, 11, -35),(97, -19, 6),(-55, -55, 36),(-37, -9, 44),(-95, -64, -71),(-44, -26, -8),(-53, 86, -4),(3, -29, 14),(69, 23, 28),(-28, 94, -72),(76, -11, -17),(65, 43, 20),(-22, -22, -67),(35, -99, 87),(-69, -50, 97),(0, -29, 10),(-68, -68, -24),(-87, -55, -2),(88, -36, -41),(-18, -18, -96)]
outval = [-34,-14,-37,-84,49,-27,21,2,69,-58,55,11,-24,84,-57,-70,32,-22,4,-25,76,10,55,32,-56,-47,-71,57,42,49,-55,-2,-8,-65,39,88,-61,-34,-36,-68,-53,-52,-74,-41,-86,36,-33,60,-24,-25,53,69,-36,28,-34,8,-7,-95,-38,-78,-51,23,-32,58,-50,40,-37,66,10,99,59,-22,-16,36,51,84,1,11,-61,21,11,6,-55,-9,-71,-26,-4,3,28,-28,-11,43,-22,35,-50,0,-68,-55,-36,-18]

-- in this case the evolved function is the expected output
evolvedFunction :: Int -> Int -> Int -> Int
evolvedFunction x y z = sort [x, y, z]!!1

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff ints trueInt
            | evolvedFunction (fst3 ints) (snd3 ints) (magic3 ints) == trueInt  = 0
            | otherwise                                                         = 1

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
quality = sum (map fromIntegral caseQuality)

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
