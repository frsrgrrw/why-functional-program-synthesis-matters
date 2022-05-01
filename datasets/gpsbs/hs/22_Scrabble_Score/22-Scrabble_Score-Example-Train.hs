{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions

-- problem instance input, output and error type
type InputType = String
type OutputType = Int
type FitnessError = Int

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = ["1$\\YC","XhU$OWX`IA0P+@HbY","RmrYtnMO`Q?\nEp6%i_$","<RrP.4q<\'\n@n?g","K","LjBp_:fOSaiK","f5B<_iI&;tp@\tXX_5x5","\t7)2!2lDj_iki{9rH:(","B","=2*6gn;k$Hb","ef","F(6{@M.u","D","CB","@i6Xd8dJ+kR0","x y!x y!x y!x y!x y!","l|m\"72df\"1",">DHPFYyyR=#N0#>rU","8 I4&x;W","SB3(DWEZ",">V93Y=h|{`","K/x:U\np=`63->VNx&","{uPb[goFzhA^_r ","}:Al","T","C","QQQQQQQQQQQQQQQQQQQQ","J","","_Nn64","C$8pKbz*","E","D-LBW","o","uz9OZT\n`C@Qg1t*AU","v"," Dw","}.<1+-O"," ;4bI*/`J2wgoWt\t","-%p\t:","b1pTJ #$SP\tsQ+Pj(","Y","RVRj","}Lt7fpN!H\n6435.>BJU",".*V$w\\P@:wLk{I9)>","\"MynNmWg","XBD\"\tYl361g9=>","p","G5G5G5G5G5G5G5G5G5G5","?\\6@n0ZS?oH\t","!!","tKK(,\"@.:rdziEnc","sw\"Jka]_uC!","R","ydp","UJkAg3/","\\{GY[O%Wgx*bw","po$^$","s(7@bv","*","}P\tzm6.","i !i !i !i !i","\\C7%P","+4\"#h<^e","4ps","\t`FTj",">k\n_K(b>v6=paB","r\tL`5f:QgTw/UU","AT2Y@R\n.A[^.T\n/9MQ","E`QV@ZjS1","+Z6!YrNw^.}j9","$$$$$$$$$$$$$$$$$$$$","xx5%n4^8@*W:GR7ZeEd","N","q0eZFe.\nT\tt#Xx1p","Z5\t","zxyzxyqQQZXYqqjjawp","xwV;a{,-g+C\nJ","q","^cLqE`F","h","DK$P^)eddf","L","V6$7P`A,2x=;\'ZR3zt)","+d@0,!%N\\d^)Win-eL]","QX]","Ht!j!IGi=Ob8B","h w h j##r##r\\ n+JJL","}F\tv0=|V","Zj9OS\nl\\Pfy(H",">fM#,m <U0ekTKs","A","f","+S2C[.eGLF]T","wwwwwwwwwwwwwwwwwwww","hZ]WX<Mo>1HB Be`&D}","w/3<+[|","2+Z","\'z-(5BBEK$+;|V$^d","Q ",">4m%k4","Ic>R_VM!","H8$A#Dh\nt\\","j}+9wQ}e\t\n/C\"8\n","c","Vx8qFD8t:NwHohp=\tu*","a8D]nO@","CIkcWG$H\'zx\"s","KC isQx&Th\n3]A","1 1 1 1 1 1 1 1 1 1 ","abcdefghijklmnopqrst"," v v v v v v v v v v","X","zx","7jbI3#<_(op","e"," Y;D8hF","WJ\\\"v-o","Pnr9","6rR=C}=38U&WP%m\"C)","b","@@pu`N","S","wlrk/9Cs\'#","\"[lI3]J>\t","\\+-F.W*:Z$ Cs","H","e.H-c}8Nn$f$L&\t;m.","l CP:u7","Q","UsG","a","r2yU[","|}`T>eiNw*8EH&Hu\tI`","J:9\\tO!_XJvg&VZ",".\nR4P\\p7n9iu GDR","ghijklmnopqrstuvwxyz","eEgg","l5Qr(jd^7oB<1cRH\"p",".,","uVbr",",s:B@4\"XOEVuhB"," ",".OT8sxFLEhnGD6K3U","c4q\n","<@k\t}$)o<$|^?","r","d","\t[mSnYW","+dx^=D.`","g","zBPg4clJ?I|b2!h\'fM","CE:meqi0OR37D","b.>j64k\n9","F","I","O","|,?5 +6}Yb5^H[:m`7","w","wy^","Ha Ha Ha Ha Ha Ha Ha","4R.bH;iKiol+$E6p&z7","Y{AH[$\t\\+g","V","n","8Fww I","\tI@L>]n,;]!y*:UK","y","L6<!!AoMY.-}R",">^B@","0AfG","Z","\"1>Ur)/4Ma)0|","m1GoJPE\t\'[(%8W","Gd7x)`Yi","x","-4$lDsb^","Pg3CehbU4!_[sm=5D","k","|3ntuy)\n\t","W","m"," F@","@rd","W\tbQV`q$","qMzY","(N","z","|a+WjLcUil","FIl","-\\Ud_pG","wLk\'ICn&[)o","\tbYOv#4l&tm\n U\">","M","t","u","G","6h","<{z7\\\n8^:P>mH4\'A!F3","`g),["]
outval = [7,42,30,18,5,28,37,23,3,15,5,8,2,6,27,60,10,29,13,21,12,30,30,2,1,3,200,8,0,2,24,1,10,1,41,4,6,1,24,3,41,4,14,26,22,18,20,3,20,17,0,30,23,1,9,17,28,4,8,0,16,5,6,5,4,13,24,25,22,34,28,0,38,1,47,10,140,30,10,19,4,19,1,38,13,18,24,40,12,36,24,1,4,13,80,43,4,10,28,10,8,12,12,26,3,47,5,41,34,0,56,40,8,18,16,1,14,17,5,19,3,5,1,15,10,22,4,18,8,10,4,1,6,19,46,15,73,6,37,0,9,26,0,32,13,6,1,2,13,12,2,45,23,16,4,1,1,14,4,8,35,31,11,4,1,13,13,4,11,3,7,10,6,22,17,8,7,23,5,7,4,3,4,3,31,27,1,10,20,6,8,16,18,3,1,1,2,4,25,2]

-- in this case the evolved function is the expected output
evolvedFunction :: String -> Int
evolvedFunction s  =  foldr (+) 0 (map scrabble s)

scrabble :: Char -> Int
scrabble 'D'  =   2
scrabble 'G'  =   2
scrabble 'B'  =   3
scrabble 'C'  =   3
scrabble 'M'  =   3
scrabble 'P'  =   3
scrabble 'F'  =   4
scrabble 'H'  =   4
scrabble 'V'  =   4
scrabble 'W'  =   4
scrabble 'Y'  =   4
scrabble 'K'  =   5
scrabble 'J'  =   8
scrabble 'X'  =   8
scrabble 'Q'  =  10
scrabble 'Z'  =  10
scrabble 'A'  =   1
scrabble 'E'  =   1
scrabble 'I'  =   1
scrabble 'L'  =   1
scrabble 'N'  =   1
scrabble 'O'  =   1
scrabble 'R'  =   1
scrabble 'S'  =   1
scrabble 'T'  =   1
scrabble 'U'  =   1
scrabble 'd'  =   2
scrabble 'g'  =   2
scrabble 'b'  =   3
scrabble 'c'  =   3
scrabble 'm'  =   3
scrabble 'p'  =   3
scrabble 'f'  =   4
scrabble 'h'  =   4
scrabble 'v'  =   4
scrabble 'w'  =   4
scrabble 'y'  =   4
scrabble 'k'  =   5
scrabble 'j'  =   8
scrabble 'x'  =   8
scrabble 'q'  =  10
scrabble 'z'  =  10
scrabble 'a'  =   1
scrabble 'e'  =   1
scrabble 'i'  =   1
scrabble 'l'  =   1
scrabble 'n'  =   1
scrabble 'o'  =   1
scrabble 'r'  =   1
scrabble 's'  =   1
scrabble 't'  =   1
scrabble 'u'  =   1
scrabble  _   =   0 

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError] 
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff a b = abs (evolvedFunction a - b)


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
