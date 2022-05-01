{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Data.Char (isSpace)
import Functions

-- problem instance input, output and error type
type InputType = String
type OutputType = (String, Int)
type FitnessError = (Int, Int)

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = [" \n@5v? J","MB s !msz,ur  29p","xSG}","","7g.dr4e1m$sj| ","tRl\\\nwx _t 1iQ/  (","n c\tV .-}huB\"wH l","i",", Cmx#  P :^VC T o]","VX`T8]!  FOumoPn,","","MLtYio X ","Ywiv\'","# X.%EY","xl l","q  ","% ` ","Z  N 8%S U\\B2b","dPU#|;+T\'@ZA  ekt","(P U`]%+ Tpx","Ho3\\","rN >PQ","\n\\JCD<&F& 7","9 gB:?","r   \"yP&\\[ ",".cC:T=[\nD0:=sD  @o","b A","   ","K Pf!  rJB K r [J"," \"|2   ^ ","i .tAb"," e\" QY&JT;C\nj","88888888888888888888",">_=]>_=]>_=]>_=]>_=]","i )  . IC\' t ];8 p9","G5G5G5G5G5G5G5G5G5G5","1 1 1 1 1 1 1 1 1 1 "," 2 ","}","LxO6Q& OR","hi ","4ps","r  .  C","i !i !i !i !i","\'","`Ys","T L","","A","My|GYV?See","","dv[a=h5,f9sO","UJ18","a5","                    ","  ","WVv  ",":\" 4e_c ","w xS UJk5 ","  ","^_^ ^_^ ^_^ ^_^ ^_^ ","B ","","uk#y<z AXS","2R.2R=#p(n_","ssssssssssssssssssss","s","I\tC0/ FRR^n+bmN "," ","vTK jmq ","4Yge2JJ/`y{]B","Ha Ha Ha Ha Ha Ha Ha","e.2 ?e5  k= cy)e","P F_\n*C:  wwI^TT21 ","7D","  e","-*","ef","*","V Y@ k 3  d%0 :\"(","  $  ","T3 {fCc %ms","\'4 v&m*r;Jc n 1)*V7"," v v v v v v v v v v"," F ","x y!x y!x y!x y!x y!","      9","?hhp/3 A+","#v)sR gA<@= .5c",",","","|@)jIus  ","yd6n [b"," k3; 6\"@e\\ gN7M 4  ","IXR0 k?@!\tCPbXv","!!",""," D"," uGL#v\\[ n)\\i","V Xf.l>|z\" Q"]
outval = [("\n\n@5v?\nJ", 5),("MB\ns\n!msz,ur\n\n29p", 13),("xSG}", 4),("", 0),("7g.dr4e1m$sj|\n", 13),("tRl\\\nwx\n_t\n1iQ/\n\n(", 13),("n\nc\tV\n.-}huB\"wH\nl", 13),("i", 1),(",\nCmx#\n\nP\n:^VC\nT\no]", 13),("VX`T8]!\n\nFOumoPn,", 15),("", 0),("MLtYio\nX\n", 7),("Ywiv\'", 5),("#\nX.%EY", 6),("xl\nl", 3),("q\n\n", 1),("%\n`\n", 2),("Z\n\nN\n8%S\nU\\B2b", 10),("dPU#|;+T\'@ZA\n\nekt", 15),("(P\nU`]%+\nTpx", 10),("Ho3\\", 4),("rN\n>PQ", 5),("\n\\JCD<&F&\n7", 9),("9\ngB:?", 5),("r\n\n\n\"yP&\\[\n", 7),(".cC:T=[\nD0:=sD\n\n@o", 15),("b\nA", 2),("\n\n\n", 0),("K\nPf!\n\nrJB\nK\nr\n[J", 11),("\n\"|2\n\n\n^\n", 4),("i\n.tAb", 5),("\ne\"\nQY&JT;C\nj", 10),("88888888888888888888", 20),(">_=]>_=]>_=]>_=]>_=]", 20),("i\n)\n\n.\nIC\'\nt\n];8\np9", 12),("G5G5G5G5G5G5G5G5G5G5", 20),("1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n", 10),("\n2\n", 1),("}", 1),("LxO6Q&\nOR", 8),("hi\n", 2),("4ps", 3),("r\n\n.\n\nC", 3),("i\n!i\n!i\n!i\n!i", 9),("\'", 1),("`Ys", 3),("T\nL", 2),("", 0),("A", 1),("My|GYV?See", 10),("", 0),("dv[a=h5,f9sO", 12),("UJ18", 4),("a5", 2),("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", 0),("\n\n", 0),("WVv\n\n", 3),(":\"\n4e_c\n", 6),("w\nxS\nUJk5\n", 7),("\n\n", 0),("^_^\n^_^\n^_^\n^_^\n^_^\n", 15),("B\n", 1),("", 0),("uk#y<z\nAXS", 9),("2R.2R=#p(n_", 11),("ssssssssssssssssssss", 20),("s", 1),("I\tC0/\nFRR^n+bmN\n", 13),("\n", 0),("vTK\njmq\n", 6),("4Yge2JJ/`y{]B", 13),("Ha\nHa\nHa\nHa\nHa\nHa\nHa", 14),("e.2\n?e5\n\nk=\ncy)e", 12),("P\nF_\n*C:\n\nwwI^TT21\n", 14),("7D", 2),("\n\ne", 1),("-*", 2),("ef", 2),("*", 1),("V\nY@\nk\n3\n\nd%0\n:\"(", 11),("\n\n$\n\n", 1),("T3\n{fCc\n%ms", 9),("\'4\nv&m*r;Jc\nn\n1)*V7", 16),("\nv\nv\nv\nv\nv\nv\nv\nv\nv\nv", 10),("\nF\n", 1),("x\ny!x\ny!x\ny!x\ny!x\ny!", 15),("\n\n\n\n\n\n9", 1),("?hhp/3\nA+", 8),("#v)sR\ngA<@=\n.5c", 13),(",", 1),("", 0),("|@)jIus\n\n", 7),("yd6n\n[b", 6),("\nk3;\n6\"@e\\\ngN7M\n4\n\n", 13),("IXR0\nk?@!\tCPbXv", 13),("!!", 2),("", 0),("\nD", 1),("\nuGL#v\\[\nn)\\i", 11),("V\nXf.l>|z\"\nQ", 10)]

-- in this case the evolved function is the expected output
evolvedFunction :: String -> (String, Int)
evolvedFunction s = (init $ unlines $ words s, length (filter (not . isSpace) s))

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ fitnessFunction i o | i <- ins | o <- outs]

fitnessFunction :: InputType -> OutputType -> FitnessError
fitnessFunction input output = (levenshtein (fst evolvedOut) (fst output), abs ((snd evolvedOut) - snd output ) )
    where evolvedOut = evolvedFunction input

-- calculates if an example is a correct program based on its error
singleExamplePassedCase :: FitnessError -> Bool
singleExamplePassedCase (a, b)
    | a == 0  && b == 0     = True
    | otherwise             = False

-- collates all passed cases
passedCases :: [FitnessError] -> [Bool]
passedCases = map singleExamplePassedCase

caseQuality = errors inval outval
cases = passedCases caseQuality
quality = sum (map fromIntegral (map sum caseQuality)) -- incase of overflow

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
