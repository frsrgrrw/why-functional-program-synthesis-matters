{-# LANGUAGE ParallelListComp #-}
import System.Environment
import GHC.Float.RealFracMethods (roundDoubleInteger)
-- import Functions

-- problem instance input, output and error type
type InputType = (Int, Double)
type OutputType = Double
type FitnessError = Double

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = [(92, 56.1581461588289),(-71, -72.4402272078302),(-46, 12.1281300466806),(55, 89.0712501921391),(-10, 10.6686740905672),(67, -40.1456321450289),(-86, -56.9030598171295),(12, -20.5732513034188),(9, -40.88127192596),(22, -45.1766374393312),(-2, 70.8828611231602),(69, 61.8079335339851),(75, -56.1546871802198),(-13, -57.8565631429331),(-5, 17.6871569169888),(-60, -52.0334186386395),(-84, -40.826528272784),(-68, -15.0559919688515),(35, 71.5730923161779),(55, -68.8374661302281),(13, 15.9304972076627),(58, 68.6851025486098),(19, -1.18880316177122),(-64, 1.69605377635361),(-63, 99.4657422414668)]
outval = [148.158146158829,-143.44022720783,-33.8718699533194,144.071250192139,0.668674090567194,26.8543678549711,-142.90305981713,-8.57325130341883,-31.88127192596,-23.1766374393312,68.8828611231602,130.807933533985,18.8453128197802,-70.8565631429331,12.6871569169888,-112.033418638639,-124.826528272784,-83.0559919688515,106.573092316178,-13.8374661302281,28.9304972076627,126.68510254861,17.8111968382288,-62.3039462236464,36.4657422414668]

-- in this case the evolved function is the expected output
evolvedFunction :: Int -> Double -> Double
evolvedFunction a b = fromIntegral a + b

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError] 
errors ins outs = [ ff i o | i <- ins | o <- outs] 
    where 
        ff (a1, a2) b = abs (evolvedFunction a1 a2 - b)

-- calculates if an example is a correct program based on its error 
singleExamplePassedCase :: FitnessError -> Bool
singleExamplePassedCase a
    | a <= 0.000000001 = True
    | otherwise        = False

-- collates all passed cases
passedCases :: [FitnessError] -> [Bool]
passedCases = map singleExamplePassedCase

preventOverflowButKeepFitness :: Double -> Integer
preventOverflowButKeepFitness d
    | d <= 0.000000001 = 0
    | d < 0.6          = 1
    | otherwise        = roundDoubleInteger d

caseQuality = errors inval outval
cases = passedCases caseQuality
quality = sum (map preventOverflowButKeepFitness caseQuality)

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
