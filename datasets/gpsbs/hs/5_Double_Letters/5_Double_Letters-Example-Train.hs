{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Data.Char (isLetter)
import Functions

-- problem instance input, output and error type
type InputType = String
type OutputType = String
type FitnessError = Int

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = ["4ps","Iz","<r)8B","HRA","Ha Ha Ha Ha Ha Ha Ha","CD","/6\t0*|& ","/)#KL+AB","\t1?S","IU.mVR]pE","\t","*","i:!i:!i:!i:!i","T$L","U5}d=m\"UR[+E@Q9","!R","Gd\"\tg^Z}","I","f;+)]\"6/c-","","aX6Ic0(YZ\\v1lgSo1L","","\'}*n$R:F","[22p","","p","ssssssssssssssssssss",">_=]>_=]>_=]>_=]>_=]","^c","rU9p>sRUDK*}","a<J","Rt7)RSW{BpddtwwLn(","n8rg@","z","",";\"|Q","88888888888888888888","                    ","^ynsVdk","\t,XSof","9","Uh:R/\nRDY$","/Bir8f\"ALcT.","\"h=4+4H","\n\n","!F!","2?L","G5G5G5G5G5G5G5G5G5G5","_FUF XfiISA",")#(>WkVQy","x\ny!x\ny!x\ny!x\ny!x\ny!","k!!k!!k!!k!!k!!k!!k!","9","!!!!!!!!!!!!!!!!!!!!","Wb\'sr","DPZW","1!1!1!1!1!1!1!1!1!1!"," \tjGPb.;","<$zMB8}\n=GB","!","9t\"<Wx"," ","ef","?@B$0CT?:","Mm*SiWk!9x7bIsA:9","|%u]}{Sv;EU1C","!^WD","B\n","q!","J`EZ1SE;Xf3rA","","7|zUH+=%\'!r7&o6",",\n","lIZ4!/L0V4ks\"",".F6&mXucpm0!WpS","!#","Wb-Qgj4jC<L","$yq2w/Wia}","6L\'%Ro5AmDwzOYZh","c`|p++7}+vdX^N\'B\"","","\t","F#;!Y","vX{Ih","EL","yWCF1.","f","!!"," bn3H)","^14,jP>]Kf0NX","e6{7Twb=+O86|Q","A","\n","O9*m1A3","6N[B;7s327","!!!","q\t ","VU9q","@!","o8 g\"^jD}s\nnZQ]U"]
outval = ["4ppss","IIzz","<rr)8BB","HHRRAA","HHaa HHaa HHaa HHaa HHaa HHaa HHaa","CCDD","/6\t0*|& ","/)#KKLL+AABB","\t1?SS","IIUU.mmVVRR]ppEE","\t","*","ii:!!!ii:!!!ii:!!!ii:!!!ii","TT$LL","UU5}dd=mm\"UURR[+EE@QQ9","!!!RR","GGdd\"\tgg^ZZ}","II","ff;+)]\"6/cc-","","aaXX6IIcc0(YYZZ\\vv1llggSSoo1LL","","\'}*nn$RR:FF","[22pp","","pp","ssssssssssssssssssssssssssssssssssssssss",">_=]>_=]>_=]>_=]>_=]","^cc","rrUU9pp>ssRRUUDDKK*}","aa<JJ","RRtt7)RRSSWW{BBppddddttwwwwLLnn(","nn8rrgg@","zz","",";\"|QQ","88888888888888888888","                    ","^yynnssVVddkk","\t,XXSSooff","9","UUhh:RR/\nRRDDYY$","/BBiirr8ff\"AALLccTT.","\"hh=4+4HH","\n\n","!!!FF!!!","2?LL","GG5GG5GG5GG5GG5GG5GG5GG5GG5GG5","_FFUUFF XXffiiIISSAA",")#(>WWkkVVQQyy","xx\nyy!!!xx\nyy!!!xx\nyy!!!xx\nyy!!!xx\nyy!!!","kk!!!!!!kk!!!!!!kk!!!!!!kk!!!!!!kk!!!!!!kk!!!!!!kk!!!","9","!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!","WWbb\'ssrr","DDPPZZWW","1!!!1!!!1!!!1!!!1!!!1!!!1!!!1!!!1!!!1!!!"," \tjjGGPPbb.;","<$zzMMBB8}\n=GGBB","!!!","9tt\"<WWxx"," ","eeff","?@BB$0CCTT?:","MMmm*SSiiWWkk!!!9xx7bbIIssAA:9","|%uu]}{SSvv;EEUU1CC","!!!^WWDD","BB\n","qq!!!","JJ`EEZZ1SSEE;XXff3rrAA","","7|zzUUHH+=%\'!!!rr7&oo6",",\n","llIIZZ4!!!/LL0VV4kkss\"",".FF6&mmXXuuccppmm0!!!WWppSS","!!!#","WWbb-QQggjj4jjCC<LL","$yyqq2ww/WWiiaa}","6LL\'%RRoo5AAmmDDwwzzOOYYZZhh","cc`|pp++7}+vvddXX^NN\'BB\"","","\t","FF#;!!!YY","vvXX{IIhh","EELL","yyWWCCFF1.","ff","!!!!!!"," bbnn3HH)","^14,jjPP>]KKff0NNXX","ee6{7TTwwbb=+OO86|QQ","AA","\n","OO9*mm1AA3","6NN[BB;7ss327","!!!!!!!!!","qq\t ","VVUU9qq","@!!!","oo8 gg\"^jjDD}ss\nnnZZQQ]UU"]


-- in this case the evolved function is the expected output
evolvedFunction :: String -> String
evolvedFunction []  =  []
evolvedFunction (c:cs)
  | isLetter c  =  c:c:evolvedFunction cs
  | c == '!'    =  c:c:c:evolvedFunction cs
  | otherwise   =  c:evolvedFunction cs

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff a b = levenshtein (evolvedFunction a) b

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
