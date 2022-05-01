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
inval = ["oooooooooooooooooooo","69_igoc reea2jgu(","c=q!ex!*=\"0+<od5un","a","aei","*o#@+","x?fegaw7-_;8a0;ote","i:_=*aoeoi<w|","ir>5k","5k!.iek%7","vi","you are many yay yea","{+%1a*a","chf","quite","i!o/w>>#1]7no/","ouy","6`duo]i/|?!<","}o{iy.iu5","-"," ","he<9`8a\'=\\08o","o8ab5i]h<wo\\#io94go","iv+dje%>ee","o","?o!x",";/jaie/me]","&*ifvej)\'znd2z-a","ifbklep_,(ovw}9",";ha!6jteeopeo","","\',i","^uym6$a/\\>on%(","wi wi wi wi wi wi wi","w\"ial-pe?tof>a","6/o0}q=ab\"f","d=io^ecj:ed9%3","e(e3is]yee*8%i<_1","\'<2[",">m*%\'wym!od=;7l!e4","ba_o!5\\r\"{\\./","}","i8#r:b0","[\\e-a1,.o","4-3\"$%\"i\"m&;`pqi","^6#eae[$#","i9[}oe","\"xau0i\\tc","b8\"f!oqaahdq\'oouro","k$fn8:e5\'nogi&oli&","v","&d>e7u[?is1=8eea*","0k[je@io=u8d|nro2","]9iz{#ybg+(o21{a",".pg.ev7iu:w{peals","h1%aifd","v)\\o!73a#","#8|9,","$o@","d9h7eo}e=%<>@cu_e+","o]xe:6z^_l9e0m.v`","oonaa{o++",">xaou#g-!$ab{1z{!&","2y:sg-","/}i-`ix:)|","08^","ei[o-ni,ko$","a[w2h_(g`n7a_","","","_i`s:g*a?2{|1i","a r e9j>","4","+8{:","ssssssssssssssssssss","i{a-","ha\\","a!+be/!o\"hovlikna","9ohekta8i\'qe{5ze","5b{","36@2t|{=p","o=w;oe%","&so.a=hie\"ia(e^o","g^p#i+i!dan=o","x y x y x y x y x y ","ki8_p/ib_:6{>c0","eiw<a","oi3`>,a?,u)z\\,","eioyeioyeioyeioyeioy","-eyr",">_]","@\'v\"(^e[2n0k3xhi\'o","-%c9`xxa*a@kea$","}|>bwlme","q#jaom?s7%!\"o!pod]p",")#abi;azyj&","d\\$w","no`*@yios+!=a.\\-","i[ oooizo&^o\'","ta?%\":-i"]
outval = [20,6,3,1,3,1,5,6,1,2,1,8,2,0,3,3,2,3,4,0,0,3,7,4,1,1,4,3,3,6,0,1,3,7,5,2,4,6,0,2,2,0,1,3,2,3,3,3,7,5,0,6,5,3,5,2,2,0,1,5,3,5,4,0,2,0,5,2,0,0,3,2,0,0,0,2,1,6,6,0,0,3,8,4,0,2,3,4,15,1,0,3,4,1,4,3,0,4,7,2]

-- in this case the evolved function is the expected output
evolvedFunction :: InputType -> OutputType
evolvedFunction ""  =  0
evolvedFunction (c:cs)  =  if isVowel c
                  then 1 + evolvedFunction cs
                  else evolvedFunction cs

isVowel :: Char -> Bool
isVowel 'a'  =  True
isVowel 'e'  =  True
isVowel 'i'  =  True
isVowel 'o'  =  True
isVowel 'u'  =  True
-- isVowel 'y'  =  True
isVowel  _   =  False

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError] 
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff str trueNumV
            | evolvedFunction str == trueNumV    = 0
            | otherwise                          = 1


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
