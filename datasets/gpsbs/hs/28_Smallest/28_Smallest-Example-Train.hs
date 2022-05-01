{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions
    
type InputType = (Int, Int, Int, Int)
type OutputType = Int
type FitnessError = Int

inval :: [InputType]
outval :: [OutputType]
inval = [(43, 85, -50, -86),(-28, 48, 50, -12),(-12, 43, -89, -70),(-38, -15, -29, -42),(99, 100, 99, 100),(93, 72, 93, 93),(-46, -18, -10, 25),(-35, -35, -35, -35),(20, 9, -99, 30),(60, 60, 60, 60),(-85, 52, -17, 72),(-78, -20, 75, 75),(72, -82, -82, -82),(59, 35, 12, 97),(-37, -37, -37, -88),(35, -18, 75, 95),(64, 54, -43, -9),(83, 2, 58, 45),(-5, -47, -54, -81),(36, 24, 63, 94),(-22, -22, -22, -22),(-77, 91, 71, -77),(17, -52, -32, 54),(90, 68, -17, -66),(-30, 87, -94, -90),(55, 50, 10, 73),(69, -14, -22, -6),(91, 63, 50, 90),(-80, -80, -80, -80),(47, 98, 86, 8),(39, 1, -8, 36),(41, 24, 41, 41),(1, 1, 1, 25),(47, 35, 83, 69),(69, 28, 43, 88),(-71, 34, 88, 57),(-33, -12, -47, -64),(-66, -79, 4, -26),(60, 32, 52, 3),(-67, -52, 93, 77),(-38, 6, 44, -40),(25, -74, -2, -88),(-15, -47, 38, -7),(-79, -13, 75, 3),(-30, 39, 80, 69),(25, 13, 32, 24),(80, -8, -33, -84),(-97, -97, -97, -97),(-98, 85, -98, -98),(77, -78, -47, 17),(56, -81, -71, 47),(77, 83, 69, 73),(14, 31, 72, 94),(12, 55, 39, 38),(-58, 25, -71, -74),(34, 37, 59, 15),(68, 7, 15, 37),(-65, -65, -65, 87),(90, 39, 78, -69),(61, 34, 65, -83),(-44, -44, -7, -13),(33, 82, -96, 71),(0, 0, 0, 0),(-50, 13, 61, 98),(-77, -77, -77, -77),(34, 91, -50, 26),(77, 13, -6, -72),(55, 55, 55, -54),(98, -58, 20, -47),(52, 13, 37, -56),(-12, -71, -46, 44),(0, 4, -99, -33),(-97, -30, 49, -53),(-41, -36, -13, -56),(-99, 1, 97, 72),(70, 19, 1, 61),(65, 91, 21, 90),(-15, -24, 24, 48),(-16, -71, 30, -30),(-94, -93, -93, -93),(60, -70, 41, -19),(92, -66, -17, -61),(-64, -20, 30, -8),(-1, 20, 60, 66),(18, 65, 3, 44),(-2, 67, 11, -52),(-32, -12, -63, 89),(85, -3, -76, -1),(-36, 62, 47, 66),(20, 60, 85, -6),(55, 28, 30, 37),(39, -57, 55, -73),(-52, 22, -89, -30),(45, 45, 72, 45),(5, -38, 51, -88),(14, 61, 61, 61),(8, -59, -66, 59),(64, 89, 76, 2),(60, 64, 14, 21),(33, 12, 80, 3)]
outval = [-86,-28,-89,-42,99,72,-46,-35,-99,60,-85,-78,-82,12,-88,-18,-43,2,-81,24,-22,-77,-52,-66,-94,10,-22,50,-80,8,-8,24,1,35,28,-71,-64,-79,3,-67,-40,-88,-47,-79,-30,13,-84,-97,-98,-78,-81,69,14,12,-74,15,7,-65,-69,-83,-44,-96,0,-50,-77,-50,-72,-54,-58,-56,-71,-99,-97,-56,-99,1,21,-24,-71,-94,-70,-66,-64,-1,3,-52,-63,-76,-36,-6,28,-73,-89,45,-88,14,-66,2,14,3]

-- in this case the evolved function is the expected output
evolvedFunction :: Int -> Int -> Int -> Int -> Int
evolvedFunction a b c d = minimum [a, b, c, d]

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff ints trueInt
            | evolvedFunction (fst4 ints) (snd4 ints) (magic4 ints) (last4 ints) == trueInt    = 0
            | otherwise                                                                        = 1

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