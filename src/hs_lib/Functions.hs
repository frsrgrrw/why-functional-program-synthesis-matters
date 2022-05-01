{-# OPTIONS_GHC -fno-warn-tabs #-}
module Functions where
import Data.Fixed ( mod' )

-- thruple helpers
fst3 :: (a, b, c) -> a
fst3 (x, _, _) = x

snd3 :: (a, b, c) -> b
snd3 (_, x, _) = x

magic3 :: (a, b, c) -> c
magic3 (_, _, x) = x

-- quadruple helpers
fst4 :: (a, b, c, d) -> a
fst4(x, _, _, _) = x

snd4 :: (a, b, c, d) -> b
snd4 (_, x, _, _) = x

magic4 :: (a, b, c, d) -> c
magic4 (_, _, x, _) = x

last4 :: (a, b, c, d) -> d
last4 (_, _, _, x) = x

-- quintuple helpers
fst5 :: (a, b, c, d, e) -> a
fst5 (x, _, _, _, _) = x

snd5 :: (a, b, c, d, e) -> b
snd5 (_, x, _, _, _) = x

magic5 :: (a, b, c, d, e) -> c
magic5 (_, _, x, _, _) = x

four5 :: (a, b, c, d, e) -> d
four5 (_, _, _, x, _) = x

last5 :: (a, b, c, d, e) -> e
last5 (_, _, _, _, x) = x


-- safeMod :: Integral a => a -> a -> a 
safeMod :: Int -> Int -> Int
safeMod a b
    | b == 0       = b
    | otherwise    = a `mod` b

-- safeIntDiv :: Integral a => a -> a -> a 
safeIntDiv :: Int -> Int -> Int
safeIntDiv a b
    | b == 0       = b
    | otherwise    = a `div` b


-- safeMod' :: Real a => a -> a -> a 
safeDoubleMod :: Double -> Double -> Double 
safeDoubleMod a b
    | b <= 0.00001    = b
    | otherwise       = a `mod'` b

safeDiv :: Double -> Double -> Double 
safeDiv a b
    | b <= 0.00001   = b
    | otherwise      = a / b


safeReplicate :: Int -> a -> [a]
safeReplicate n thing
    | n < 0          = []
    | otherwise      = replicate n thing

safeTail :: [a] -> [a]
safeTail xs
    | null xs        = []
    | otherwise      = tail xs

safeInit :: [a] -> [a]
safeInit xs
    | null xs        = []
    | otherwise      = init xs

safeHeadInts :: [Int] -> Int
safeHeadInts xs
    | null xs        = 999999
    | otherwise      = head xs

safeLastInts :: [Int] -> Int
safeLastInts xs
    | null xs        = 999999
    | otherwise      = last xs

safeHeadDoubles :: [Double] -> Double
safeHeadDoubles xs
    | null xs        = 999999.9
    | otherwise      = head xs

safeLastDoubles :: [Double] -> Double
safeLastDoubles xs
    | null xs        = 999999.9
    | otherwise      = last xs

safeHeadChars :: [Char] -> Char
safeHeadChars xs
    | null xs        = ' '
    | otherwise      = head xs

safeLastChars :: [Char] -> Char
safeLastChars xs
    | null xs        = ' '
    | otherwise      = last xs

safeHeadStrings :: [String] -> String
safeHeadStrings xs
    | null xs        = ""
    | otherwise      = head xs

safeLastStrings :: [String] -> String
safeLastStrings xs
    | null xs        = ""
    | otherwise      = last xs

safeMinimumDoubles :: [Double] -> Double
safeMinimumDoubles xs
    | null xs        = -99999999.9999999
    | otherwise      = last xs

safeMaximumDoubles :: [Double] -> Double
safeMaximumDoubles xs
    | null xs        = 99999999.9999999
    | otherwise      = last xs

safeMinimumInts :: [Int] -> Int
safeMinimumInts xs
    | null xs        = -99999999
    | otherwise      = last xs

safeMaximumInts :: [Int] -> Int
safeMaximumInts xs
    | null xs        = 99999999
    | otherwise      = last xs

safeToEnumIntChar :: Int -> Char
safeToEnumIntChar n
    | n < 0     = ' '
    | n >= 128  = ' '
    | otherwise = toEnum n :: Char

safeFromEnumCharInt :: Char -> Int
safeFromEnumCharInt x = fromEnum x :: Int


-- https://wiki.haskell.org/Edit_distance
levenshtein :: Eq a => [a] -> [a] -> Int
levenshtein a b 
    = last (if lab == 0 then mainDiag
	    else if lab > 0 then lowers !! (lab - 1)
		 else{- < 0 -}   uppers !! (-1 - lab))
    where mainDiag = oneDiag a b (head uppers) (-1 : head lowers)
	  uppers = eachDiag a b (mainDiag : uppers) -- upper diagonals
	  lowers = eachDiag b a (mainDiag : lowers) -- lower diagonals
	  eachDiag a [] diags = []
	  eachDiag a (bch:bs) (lastDiag:diags) = oneDiag a bs nextDiag lastDiag : eachDiag a bs diags
	      where nextDiag = head (tail diags)
	  oneDiag a b diagAbove diagBelow = thisdiag
	      where doDiag [] b nw n w = []
		    doDiag a [] nw n w = []
		    doDiag (ach:as) (bch:bs) nw n w = me : (doDiag as bs me (tail n) (tail w))
			where me = if ach == bch then nw else 1 + min3 (head w) nw (head n)
		    firstelt = 1 + head diagBelow
		    thisdiag = firstelt : doDiag a b firstelt diagAbove (tail diagBelow)
	  lab = length a - length b
          min3 x y z = if x < y then x else min y z
