{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions

-- problem instance input, output and error type
type InputType = (Int, Int, Int)
type OutputType = [Int]
type FitnessError = [Int]

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = [(274, 282, 2),(91, 94, 2),(-314, -236, 5),(-489, -453, 7),(-43, 44, 5),(-5, 13, 1),(-63, -10, 4),(-120, -82, 5),(259, 290, 9),(110, 185, 7),(-131, -128, 1),(-23, 7, 3),(34, 42, 6),(367, 377, 1),(278, 364, 9),(-153, -73, 6),(-38, -27, 2),(-452, -365, 8),(265, 399, 9),(-358, -356, 1),(300, 307, 4),(-495, -494, 1),(338, 456, 8),(-372, -364, 4),(-233, -112, 9),(8, 63, 9),(-147, -107, 5),(-337, -334, 2),(-4, 59, 6),(-44, -18, 2),(6, 53, 6),(-86, -78, 4),(192, 211, 6),(244, 254, 1),(-264, -258, 2),(216, 246, 3),(82, 97, 1),(94, 199, 6),(159, 174, 2),(-171, 6, 9),(36, 37, 5),(-109, 14, 7),(253, 329, 9),(121, 162, 6),(66, 177, 7),(-19, 8, 2),(-371, -288, 6),(328, 466, 7),(189, 191, 5),(-484, -483, 2),(-357, -320, 2),(-31, 1, 2),(-58, 3, 4),(268, 415, 8),(-249, -207, 8),(47, 83, 8),(386, 409, 2),(-138, -137, 8),(-464, -457, 1),(-245, -178, 4),(336, 380, 6),(14, 150, 9),(242, 256, 4),(-265, -237, 3),(-219, -206, 4),(390, 423, 2),(28, 105, 6),(281, 425, 9),(-493, -349, 9),(-287, -203, 5),(247, 259, 2),(413, 465, 4),(393, 399, 1),(243, 386, 9),(-160, -155, 1),(-469, -467, 3),(-18, 37, 3),(-145, -130, 1),(-112, -111, 2),(317, 365, 5),(-118, -104, 1),(378, 399, 6),(369, 427, 3),(35, 50, 8),(-427, -396, 4),(267, 295, 9),(-499, -414, 6),(-305, -298, 3),(318, 336, 3),(-259, -208, 5),(187, 196, 2),(-18, 1, 1),(-4, 25, 4),(-7, 24, 3),(-494, -481, 9),(289, 377, 7),(62, 175, 9),(197, 198, 2),(-22, -17, 7),(188, 199, 1)]
outval = [[274, 276, 278, 280],[91, 93],[-314, -309, -304, -299, -294, -289, -284, -279, -274, -269, -264, -259, -254, -249, -244, -239],[-489, -482, -475, -468, -461, -454],[-43, -38, -33, -28, -23, -18, -13, -8, -3, 2, 7, 12, 17, 22, 27, 32, 37, 42],[-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],[-63, -59, -55, -51, -47, -43, -39, -35, -31, -27, -23, -19, -15, -11],[-120, -115, -110, -105, -100, -95, -90, -85],[259, 268, 277, 286],[110, 117, 124, 131, 138, 145, 152, 159, 166, 173, 180],[-131, -130, -129],[-23, -20, -17, -14, -11, -8, -5, -2, 1, 4],[34, 40],[367, 368, 369, 370, 371, 372, 373, 374, 375, 376],[278, 287, 296, 305, 314, 323, 332, 341, 350, 359],[-153, -147, -141, -135, -129, -123, -117, -111, -105, -99, -93, -87, -81, -75],[-38, -36, -34, -32, -30, -28],[-452, -444, -436, -428, -420, -412, -404, -396, -388, -380, -372],[265, 274, 283, 292, 301, 310, 319, 328, 337, 346, 355, 364, 373, 382, 391],[-358, -357],[300, 304],[-495],[338, 346, 354, 362, 370, 378, 386, 394, 402, 410, 418, 426, 434, 442, 450],[-372, -368],[-233, -224, -215, -206, -197, -188, -179, -170, -161, -152, -143, -134, -125, -116],[8, 17, 26, 35, 44, 53, 62],[-147, -142, -137, -132, -127, -122, -117, -112],[-337, -335],[-4, 2, 8, 14, 20, 26, 32, 38, 44, 50, 56],[-44, -42, -40, -38, -36, -34, -32, -30, -28, -26, -24, -22, -20],[6, 12, 18, 24, 30, 36, 42, 48],[-86, -82],[192, 198, 204, 210],[244, 245, 246, 247, 248, 249, 250, 251, 252, 253],[-264, -262, -260],[216, 219, 222, 225, 228, 231, 234, 237, 240, 243],[82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96],[94, 100, 106, 112, 118, 124, 130, 136, 142, 148, 154, 160, 166, 172, 178, 184, 190, 196],[159, 161, 163, 165, 167, 169, 171, 173],[-171, -162, -153, -144, -135, -126, -117, -108, -99, -90, -81, -72, -63, -54, -45, -36, -27, -18, -9, 0],[36],[-109, -102, -95, -88, -81, -74, -67, -60, -53, -46, -39, -32, -25, -18, -11, -4, 3, 10],[253, 262, 271, 280, 289, 298, 307, 316, 325],[121, 127, 133, 139, 145, 151, 157],[66, 73, 80, 87, 94, 101, 108, 115, 122, 129, 136, 143, 150, 157, 164, 171],[-19, -17, -15, -13, -11, -9, -7, -5, -3, -1, 1, 3, 5, 7],[-371, -365, -359, -353, -347, -341, -335, -329, -323, -317, -311, -305, -299, -293],[328, 335, 342, 349, 356, 363, 370, 377, 384, 391, 398, 405, 412, 419, 426, 433, 440, 447, 454, 461],[189],[-484],[-357, -355, -353, -351, -349, -347, -345, -343, -341, -339, -337, -335, -333, -331, -329, -327, -325, -323, -321],[-31, -29, -27, -25, -23, -21, -19, -17, -15, -13, -11, -9, -7, -5, -3, -1],[-58, -54, -50, -46, -42, -38, -34, -30, -26, -22, -18, -14, -10, -6, -2, 2],[268, 276, 284, 292, 300, 308, 316, 324, 332, 340, 348, 356, 364, 372, 380, 388, 396, 404, 412],[-249, -241, -233, -225, -217, -209],[47, 55, 63, 71, 79],[386, 388, 390, 392, 394, 396, 398, 400, 402, 404, 406, 408],[-138],[-464, -463, -462, -461, -460, -459, -458],[-245, -241, -237, -233, -229, -225, -221, -217, -213, -209, -205, -201, -197, -193, -189, -185, -181],[336, 342, 348, 354, 360, 366, 372, 378],[14, 23, 32, 41, 50, 59, 68, 77, 86, 95, 104, 113, 122, 131, 140, 149],[242, 246, 250, 254],[-265, -262, -259, -256, -253, -250, -247, -244, -241, -238],[-219, -215, -211, -207],[390, 392, 394, 396, 398, 400, 402, 404, 406, 408, 410, 412, 414, 416, 418, 420, 422],[28, 34, 40, 46, 52, 58, 64, 70, 76, 82, 88, 94, 100],[281, 290, 299, 308, 317, 326, 335, 344, 353, 362, 371, 380, 389, 398, 407, 416],[-493, -484, -475, -466, -457, -448, -439, -430, -421, -412, -403, -394, -385, -376, -367, -358],[-287, -282, -277, -272, -267, -262, -257, -252, -247, -242, -237, -232, -227, -222, -217, -212, -207],[247, 249, 251, 253, 255, 257],[413, 417, 421, 425, 429, 433, 437, 441, 445, 449, 453, 457, 461],[393, 394, 395, 396, 397, 398],[243, 252, 261, 270, 279, 288, 297, 306, 315, 324, 333, 342, 351, 360, 369, 378],[-160, -159, -158, -157, -156],[-469],[-18, -15, -12, -9, -6, -3, 0, 3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36],[-145, -144, -143, -142, -141, -140, -139, -138, -137, -136, -135, -134, -133, -132, -131],[-112],[317, 322, 327, 332, 337, 342, 347, 352, 357, 362],[-118, -117, -116, -115, -114, -113, -112, -111, -110, -109, -108, -107, -106, -105],[378, 384, 390, 396],[369, 372, 375, 378, 381, 384, 387, 390, 393, 396, 399, 402, 405, 408, 411, 414, 417, 420, 423, 426],[35, 43],[-427, -423, -419, -415, -411, -407, -403, -399],[267, 276, 285, 294],[-499, -493, -487, -481, -475, -469, -463, -457, -451, -445, -439, -433, -427, -421, -415],[-305, -302, -299],[318, 321, 324, 327, 330, 333],[-259, -254, -249, -244, -239, -234, -229, -224, -219, -214, -209],[187, 189, 191, 193, 195],[-18, -17, -16, -15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0],[-4, 0, 4, 8, 12, 16, 20, 24],[-7, -4, -1, 2, 5, 8, 11, 14, 17, 20, 23],[-494, -485],[289, 296, 303, 310, 317, 324, 331, 338, 345, 352, 359, 366, 373],[62, 71, 80, 89, 98, 107, 116, 125, 134, 143, 152, 161, 170],[197],[-22],[188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198]]

-- in this case the evolved function is the expected output
evolvedFunction :: Int -> Int -> Int -> [Int]
evolvedFunction start end step  =  enumFromThenTo start (step+start) (end-1)

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ fitnessFunction i o | i <- ins | o <- outs]


fitnessFunction :: InputType -> OutputType -> [Int]
fitnessFunction a b =
    let evolvedOutput = evolvedFunction (fst3 a) (snd3 a) (magic3 a)
    in [abs (f - s) | (f, s) <- zip evolvedOutput b]  ++ extraBit evolvedOutput b
    where
        extraBit evolved truth
            | length truth > length evolved = replicate (length truth - length evolved) 2000 ++ [0]
            | otherwise                     = replicate (length evolved - length truth) 2000


-- calculates if an example is a correct program based on its error 
singleExamplePassedCase :: FitnessError -> Bool
singleExamplePassedCase a
    | all (== 0) a  = True
    | otherwise     = False

-- collates all passed cases
passedCases :: [FitnessError] -> [Bool]
passedCases = map singleExamplePassedCase

caseQuality = errors inval outval
cases = passedCases caseQuality
quality = sum (map (fromIntegral . sum) caseQuality) -- incase of overflow

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"