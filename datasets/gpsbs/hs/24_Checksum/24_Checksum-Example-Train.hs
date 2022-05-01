{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions
import Data.Char (chr,ord)     

type InputType = String
type OutputType = Char
type FitnessError = Int

inval :: [InputType]
outval :: [OutputType]
inval = ["B+|U7|{=Ykk&iZ\"QiP$vPc<X3Bx%l^z3ga",")Ve&xlH3r$\nOl3KTzShHe0A^&N5M+s{-`pn_k4#ve","CD\nCD\nCD\nCD\nCD\nCD\nCD\nCD\nCD\nCD\nCD\nCD\nCD\nCD\nCD\nCD\nCD","Q|H&IM","s","+sXzEVcwaiA$^-doni*/9","m0GX;k&J\nW`p\tDUa*Gy.+c3?2H.@HDj5tj/\"vS81>#p_`","mkg5J9U-<*0`3","\n","*BrKy<z","","xIvjD*>Kk0&vSVl=3vUraSgG#ACRi \\Q!HlDZH?1U","y\"JKM`",">K{@#2:!","\tyDi5<","\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n","OzpZqF7\\4@E\"V:4(","0","A","#R#tL*0s(|{<=nA5@Y5\n","!K8a/]e1*6z*9sR)J/UCc8",">R.=Y/!\\Tm^XAfc)z|2hcT{}\\z","p.jcfuZyC}h?","5%y^t/rO`rrD\n:WZ]\\cQ.Jx35koJ0","HCj(zAf9 lzF*+eZ_No:]hi6FIC36<\']BJi","[+XypptJ*yf^*&::WN%","NEToN+y-!I(I}:hr97S?CH1Y#fp3`1","-=[V0vYV9{k0*9uI\"1-OVrzh0{F$Hw[?\\|\\uAm","&NH#$S=^8KVUL|Ojf*kf`w (uu_",")+X!!R02J)2%TnUNB=XY#O@&5","WXvRebdb\\sHJ3?\'\t\"E:n!h",">N1","8cI<PCIF-&zA8%pG\\zKZiZ!|GaZXt","{TW\ti2gD8@%lCY\nv\tJ<b,A<}#G|,gmF","f\tI/{E|qfS.M$FIlE`|Kb$|)L6Bzq:dt5ck","","/fYaPKoto4Bd+\"%sNT/T:.h|-H-","5(E\\BjNA$D=p S{G\"t\"p.WR\no2oi<siP\'KBX\nl7","B\n","A","rlz!_lO-o(x32\\Qy6nT29a+HDTMO>A","MIXF%,JFVF1G$4CH+X3RtwJ)`;}*J&_UT|/;\\w?}Wcz#S","VNq\no+/J+dFd+\tF8![mz4p%D",":ohysc{2%%GA}Q\'<","5gF8?K;H}F{Mj-kxo8R5kKtsT*Sw\n]x\\","JP#cq","ssssssssssssssssssssssssssssssssssssssssssssssssss","hgnnk*lCU|s!xEQVIAZ}mX,2Qe?<QMiO.Q%ejl%Q/#64A","++xCJa63W\\rNdd2p;HbTo5rk","H_UiindSY<w&($wmx","\n\n","MI4Yth8&?W\\b(li6>=h(%gD","OYNY\nT^}=\\I)eTdeoI);xUVM|$r/b=>q5","W*`!s=D@hw\'u{B?1*=jZ9JEu!","h?A*i","`NQC\"Z{Ix\n2!^l%O6(:Pw^\")>32%un\"60$Nt*fCM\n8 u,,",":<P<\"_lXTv?..","x\ny x\ny x\ny x\ny x\ny x\ny x\ny x\ny x\ny x\ny x\ny x\ny x\n","lx@x*t9ybubf\"d9YQnHc=bS^d/}}\n\"\"o","S)\'k#\n!Rpq[Q=","@?M.Bqb!.Jk$,r$tIA\"","^*;G1Tpadv","wlR?n4ucd)5^RHN8h%B}|%aB+","?I}cZ5If%x`#u+","Pi>uP;h\"A,H[P*>i]\\cMTJL4nISCPu7 #\'X","si|#qg^4(+qB&.KCJacW\nv","Ja4(w}>Y#2y&a\\.rWa>?U]R.H \\","\t","@J-VtrUs!qONs9m#!;G\n<(^q\n","ggD0<WY,1f","BW_Veu5hp|eU_*OccM{Y=AUsm}#feg+;y%\"fROxg#>WkqP","PaBjf_:/UAb\tYOM,xw,#K-IR:uJJNVWwtgxZvF\'/","W<D[9[+l>%e ,WWx","|;\tV\'jQ0 <v1p]B1*b3#AAnfBZoDV)<A8\"<Ew63=\'[","2\\\nj\t)NXv@bca2M\\^%s\t{N","gikMG46(`","[!1T>4Tk;_$B}lN@M","Goz9o\"o-I9u\nxQlbJ;d!##3q}YK3S}T2\\A>\"?rw=V","Ic(\nHYkp^_elV)1X4&c/b+zkdjNX=wx`.o8 ^R1.w\">VBw","vz([&\"M@\\bw;&]-9xCFE;4}]*8UYOsT,6R^}d#","4ud0|I\'o3;U&6&;B=!j2YRdHx","@Bd0(k\\5M^gM6i@`jAybJ-Z((k%G\\W]o)!aR@`my=Y7Y#A","/mDZx\'\"UrcmD+d\"]\\es*IB\"Ndhw%F<E$EPZW/]^=O","Vqq","{QvDBKULl7uB]vecU!_zx7/h*;O0","e4m@Dz-zFitY=Vn#bkug?ikzowKGd/@yu!5j$so&J}3a\n$/","\n","\'!zZSZ2QW`qu2S:wg\"u*S=\t\"]j\t:T_$$qkw]Y+wj\nYdzm=","                                                  ",")_WFU6.VjiWF=`z1Cid@{r-m`rJgd-R!J9S[6<\'>9&","\npu#i(ElHS^ ?^Z","rNVci_>]}5$gD"," \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n","H{`Cb,<bAaAllCkH*j8","U)@gTo,k%RJ[lg\n1t%m","*eTuFM|JyYT7>1V7\"ic=Y/:@H/A9NQNrfY=l7\'","4s P\\5vrw5?7\\=aG&","ba-6vo7u*AC7","?},29h>DAF\\tDOjk)9xaLQ5.R%|g9jN2Zk#mYqfE/V-|@hP","P;lsEl{6\nFcW)rpklad1ZO1msRl:pi]UW*E&.J.OG>^6\'F"]
outval = ['?',']','7','1','S',';','B','B','*','8',' ','B','=','T','@','T','D','P','!','Y','^','_',' ','K','!','J','U','>','I','.','?',']','-','=','\"',' ','.','F',',','!','$','+','-','0','Z','1','V','5','\\','-','4','_','E','G','[','%','L','&','G','X','9','Z','I','F','$','R','.',')','0','Q','?','R','7','H','9','!','V','$','X','L','C','B',',','X','B','>','*','\'',' ','Q','D','=',':','/','O','-','9','<','D','2']

-- in this case the evolved function is the expected output
evolvedFunction :: InputType -> OutputType
evolvedFunction str  =  chr (sum (map fromEnum str) `mod` 64 + fromEnum ' ')


-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff str trueChr
            | evolvedFunction str == trueChr = 0
            | otherwise                      = 1

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
