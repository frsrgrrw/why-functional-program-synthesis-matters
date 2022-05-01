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
inval = ["l","?lH-WrM*W}=YD",",rUxlQxMis","7[o*F4o71\\ Y","4vwGgI\t KE &4bo?Z$c","G@f|yp","U","`w.J2Fb]eA#Q>:<l","j","u-RWP[9","7\txl1ey\'","d]IJU=",",9\'O+5#$","SQ>J3ec<K","[TG*87XTQ$)","i@Cq?.eite8_%VFMM}","\'CNxK+Acj\nv","1Eq#+Ix10e","P","i","x?wzjL5rW(n\"i,33I","@3tZY6^|2$","s","H4aU=c_2EsKA","w,t/06qk7N/B\"]#As]1","9&$\nZ]/3x;P\n$gXZj!","aMloHhynvXy9S!#%U0n","[<@gpV","|PPv5\"uKz{r`%s\\Q94<","p^\':p_?1}","wn,LPk<L@UaDBxn","!Ul*?epWIv@","M>)iu6!1v","v{8\nNV!","_0aGlD+5K","}hv@OuMG:","-ID$","xd5vh,E$^1\'GC_9-","_Cq9xDar!/)GxP#A6D/","lxC","$r  g8r:</!","6U","sFxt-g_ed|@@k*2H`V#","C\ndT[8dON03%","6{-aD_K>/Gn=kP","k^>F",")L^$[\tU|g(.$k","V0sh","!{$X(UC6%",".AO+(J=0eH=;"," cQ.y ch&<*o","HS","n.R@br","\twF!ZhgJ"," V45[Rr5L9-w#\"Ei}?","iH(ZU}z)[b6_Gi","Zn-&7=:z3","Lmz","K5>:e.(o","& 1pn`:C","0ZSUt]1XV$J:(_","zx9v","Bp[0/zdlrpg;","NN<Q24p@P!","vzY)","RO$|a.&EX","tlo7Q","z:\'OjB.\"cX&+45g","u.%FK/8ZiM\'`","@L)R-#ud","Be=K{OL7i^wMo}9c*","5w","$n{K1 )%h0s=(\nn;.",",:DuR3jv+d{Zah","R!p","Q>.","j>IT","-$ouJ(jve{[4","C_2#","$m\'I9nA^","9(!YaO","*+gge)Ge1n8",")o+LD","XPWjwQ^Oyx?!Uau6","(J)s<`YV\to-.41K","z2","Z%p$\'`[.","(oq[F\\O","rGDql","Ghy+Eo[gjz<m|),{fL","M$4rb*Y","\n%\n,y8\"5D=7vQr/a=Uj","hg5FyEDP_r&BE*:m,","dja@j:^a j","ji[*.F\n","%+[N& o\tOe\txz0?","_)>9",";#(f\"]","{]\t[[a@{VeuO08W[sl","o:W$WGkxfV","8l/ ","Fu;\\^;7BY1W*X","+#\\_`wC8>|/W","sL`\"=d2AF938e\"0","AX\"","\t{U$\"-nd5{YcEX +1*","nn=Oc{+mB","Gy@LQ*","me\tLl\t","25MS","P\"","$J)9H=,=B","^_","Bu;+*dY","\\/T;;MsC\np7","s$l8\nG-O","[65^y7o","vUg?H,L(*/V$..","GwqXwWu","@741+","2%\t","`i>!9*OzS= D8j%","T=99@^$*{\"V%%\"T#3M","Vw4,\\","p3","xCMaal MKQFYxld","t>4S*aQ^]NRoSd2d\\5",">BHb\\M5JCt,NgAt","+z)]n"," 8I=@A","uWk\'M","-}6;J0\nV\'D83)3","i7`5J-","apxjl[rWL\"1%:,8","ZzF,vS]Nb %H\t7,","q<u{(","MT\'6impTx 0Ejk\"hb","#VS9R9aCSP:QI]sB{+j","jJg\tsf27q;","SL?x_sCt&hRif","=ac&h\\z","/Kb =yB:+(O96*z?l","r`#3K*35","P!rejf=96mqYnmAMs,<","lX+{Nek!]dcqc/?VY]",":>\'6\\qk<$5^dZ>4e","s\nYRkvf5{"," IfwCA;u] %4H[yar7","6(x\")zQ0Jq2B","hV\\e.?5v","oGwSiZ\"ch}\tV","NRh^Lgxh0)E[p/;so8S","BYt","jYb}\\`<Co$(h\\5","_rQdF;X]","0a","V8C2QCl","9n> V<K4 (5DeVgl,","T\\($#7>\"\nHt&UjG+U","W+m<WIlw","f8q\\wn\"g\tQT?","\\;!cp)@EoVUeL","<y%3m8Ng","?*O8Fz4Ss","xikZM*I*o zK9+","4wM.\ty4&skW=\'7\tPf-{","U4R]5+ES!2bg.=HsV-","JRVR!hie","vhp6Qc`KMb)xN","\"afM\nG%g+V`\t:u:Z,?-","Rz9WI5P9+!9Zw.","DW","4hHYoyI+?J>w_l} r","bH}n36v??g${9FO\nu","dW1wst,<DY]}UW@3","VG/p|kYY2r3[}ryF_2.","T6[2GL<R","H*oN):\' rx4\n\'\nlQ","3Nkgo/63H.BJ?[TS^C",". ","=\t=",":Ck\nMFl*c\n5|\"J","NmVE",")f\\Y?m!","ZQaxDvA","te|rm!w)GsB!O","|1,-r1W3U?{I","YB","BJS\\R2z67&Bg46t","\t-${pac1t>","/Z53WH]RcT;r","HS:7","<K?SH","_qq1;m?HOubI3N\t","p4DdXY2W}\"8\')","iXo\'<7I{ <T\"Yn","$0Qv^:\n\n{Bv","WJ","M7){#9wQSdP","cUlx\n","?%9(!Q","FWgGh9B^:-!Y6e","MEz\"ddH!<f%YA","p?nv7AIsFBB\"D","GTaFlo*\\Ju4EBBj-","C9gWVr","nlA!:h_,u&?xYD{+&d7","u\'|Pm&@>\'{@6nPwtO","6E!Evi?XJ(n0o\t`UQDp","gvC\\|#]","n3.2?:ydEk:\t&3Wz9",":\n*rwdh}=.N","5N5ky","#&helv[cQV8](y)N","pku iq?v","w>>Tlyx^A}({]z+","zre@}J)Z^a","xo","L:dMQ+*JF\"Kix/","f\nEN;:Kz7jH","%,n\nP","5vw9Fj\t$)N$_\")WqV U","z|,93sa","Y!r$","iX_t\"",">-M\tw1Tvo9\"K\tH[Z\\s","] cMa4Um/uAU@_","_MM\n+!nY","USgQv4k^Pw:[6Y","aI","f,o)8A5pl=[dAM@k\'[","}JGr[4}","C\t\'$>","(.qi?xV[m|%D\"!#!i_4","|gA)q9<","PM44Hq!JWY\\R82ot","7.1#$a\'F6)umT,-r","w:%%GP+6m*>w","6NZerjxPs","lP37FG^I","x)[WVP6:4k41qg<;|\n","gj?t`IJ%8x","\tGpu",":>N@rss0Y\\*Z QDZ3","]85t+%yT","./*-=xR[h%<|Z;f_","|kil]D86i\"","eB3?n|?l%<#b4FO","Dg[B","i?Kg@. HJw>X\\\"V!","\tfu&pj?^e{",")%c.iq$KFoo5=\"A,9V\'","c&w&6+RN6#","\t.",":\tXSVd 8i?k1-<Y9","$vOXVh__[i3rys}>,r","E|>gf{2jVMs_sq","0_i","3>z","0E}|QV9{p><+","D>KfM#\n|dRk{Ps","dZ]1>\"wQr`","GU\\ (o!/","jR\tLtT}:","<rW_N$\t^i\"u:l{K","\'Z+Wv\t{/:","o;)3x1r`EJ6EF\',o<A","-Q^hhq dTP\t\t","@gkEbSA","tM..","Qri0","L1`y6wDeSf8","lmFWo+5ErIPcstyGrc","P.S9rw9K BaV","Sx35!w+B/vQ,}","<y0#hyn",";y#3d??@j<\nz","<leSd|$T","iF7v3}a\\Uw\'Jy)","vm}:u\"","akk+4(/Q\']!}#wfo","[F","x[kY?8U%k5KjJ@]|dWa","27[\t&","X\n?7R1 61n Z","o^%H).} ]f",".zOK&Q>@L$|wu{436=","IqnjoeqKg\'","7@e","!,Nb","yP\'","Hz@@W{\\9g","a=8w`[AUp-J","q/b8yuVY%3Na","UUhSnk","?9P|(jNnZ6J!UMeA%f`","7s,@FHgnv{","91c5Ky\'kn7`*H7","0.yd{?gWiMe","9F\"W6^@\"=xB","(#\\82\\(tCHMii`","TVU|fC+#","3^S/QOV.{","J>T1}y-Y6Vbf-qtx+@"," Bmv#*OopP9","YgW{T30B0?K*7`\\<W5","kR7vrTT_T","4JUEk\n1g_,`,DMC3","KQ*`^?r","8#{K","K-HYej>*{.(!<","Sw\"y|N%Y-4","^gig:*6W/am4={\n>aC","h!tLz{","|7\nBsJ%7=y8","vtyyF/ob%@fKov_d","IH&;z0jBnp^<lN\\3B1","#^+",";Tv<|","ul","I[i9%^ZRpW7b;c@=N","6]c","`KCx3p0J}eS","(yErA]G*I.H/0",">63m/_!","GV}","`FxN\nV_(:pf$B","j$.Yx","H6Q!&O$3","m.LVReX5","t[]}-vRX","6``c\te","U.\'n","^,","|aeZL\"`7@*I","bX):I.x\'","IRjP)FX6.\'XN","tF6`\\5(}kRvb","uO)Vvva:G(F]2-q","l\"as$L","\\F4q\'rW[w7geEu0[N6","\n%J\n,iGSZ","$(5]VLY;9\"%BaD)","pD;8=ypC\\@=nbcFn",">Q\tU[NN","\tn9Csgl_GjPwKe!","gm#d","VYC5]Zz8\tSP\n=-9K#cK","!6y\'d9[l;G_>#.>q r\"","cE%","/+2b?]","Ek","Ac9 D*c^&#QMD]R","_hS8%-,PS1Byfr<{z","oI}Pun73<;9`","typ/d7>$7k3\nydI2","\\IXcefo?","(PnW[}K{]$=Um!","kH3Bu","^L#Jq#%{","#!kGh]g2<w0;-_)<","t!TIg\\v#","Rh\tEMiwQ_?j",".d}LK$^5NP9O!,f","s{[!|blVL89w^","8+N>\"r1XwTq\n","[p=e.Lp4ys?S0","6s","/4fSpnPy","=O","9\tLK$,*XR%k+!&","_HY3PklqmVDi","1!I##u;Kc92\nYBNq","19-G9<{\\:pTH)UGziGT","@*aN*d]|,7Un","=^p>V,_cTz","Pq;ALDRY\t*ob8\tQEWS]","G?zws6","(xX l+IzcQ0dImE2n37","yu%RFN_Knx","uH\n>teujQCE-g","\n1_H2 bp","gP*","(4=bqQvU7/:{C(niu","2]%G?L}FiH9{UqM!9","RsOZ","_YX#,[Y ","aeS%9zc\"j*} omi","J{bZN\"Y","ymeR{>S","(YT</2/D",":g+m!","\n{F5J?9\nJ)u99","`[8iG9GoK\\\\\"VFm\"1","zz9","(G","Iv9=#%&g","X?A\t/e$,","UID6D U(PCT\"v\\&=Y)0","[[2bgQFjR=\'t*31VZ","m!&+<q\n5LmqU","\'iXMd`DISjVXQ","1d/F","pj$ @[OMUmtsaGJ","x:eGR","byDWIsqqB6[","J?5G\"OqQN42i_|A&S",":\"i2]_0?pV5vQ","KhEWDcoDfpxBA","3 !@.N8^WP&/-K/9"," 4Q+<F\t=#b&S)<uy>","Y<Fp^xWVP\nC2\t","(\\l","7BhMF","zAL,bhvuP<Fps[)","K3","BbO>1!qO?l6L*","jSG%y7E1_\\]E_yn","0Et:WYCd(*v\\","rX=9{xdeb|rTQ","3=X*\"t4}hcfQ","*}PQ!Q&o ?h","V]!O$/)\\.0/k$","$0DzSloc(3","&OBvJr**2@OA","afeEwq\'","\'/\nWG=LG6ap\"Ro","A9","{%6C8","b?KX1Q+Eof<}","WB&3NTH6utt",",hd ]qUGDD","xWVTzAubuz{Y","}0k3J","e{]NqT","^O5*eL",".X%:VUi",",t0c}c","?s4&JL@G/4\'q&m","um =N#iw:y[e\"S1aS6","h8%W42YE","_zbv","`V bc#fiUV","DG **kDXa!G]=8","8\"%[Hs/\\1bL4. ^_","nDe)92spm6O7s","torzXO\tm{UpK","6R","))gf3","VNP^^fAV=#1}","$#Pm}Zn*lnc|5u\"2\t","l@\t5","!U^Aao\'f^9\"\tcR<5=$H","N=0)GTo;NHHly","Hx(/F","oF\trLNU\na6).oC",":1[<NVpz1@","{lI1[F^1U &\".l","Bps","H[","SMq!7P.KYd","baL7lE!OuQ","Izd[QA.@&|rx4GQ/S.","F\\Volu","W)9gI\"&YEN_3xJe","F0","mc-jB7xfg`eN","8-x:C(hfaF *TwZD,-","/0f.rZC>","-oWZTc4{AB","0mhFl#\tw6!\'$@nb2","\\O)[fH","OG","$tDK >aF&yr","*(Qbv(U|I+*h3","?w%_Yw`J=\"d","O!O3*\\u1","J.kb\ny(}S(knr*Xxcd","i:<Z5V|m","pwXpP4\'",";;]3`y\'","^\\|\"Si","g?,\"uUW>",";p{}","uAb\tFY]p(PnRo=7H93","sO}4(m\\=tmnYi","q-7JdAqS","Tax#a\tN(mE\t9$","qU9vSN!,y)\n","%#F+UEN\")","`m]\n=<E.v.Z","^/","KSSA\'9jyyuLoJW_\\C?;",">m;+nB%jpe","JA.-Z*\t6`P)w&5;D|","gRtv4,MN","pq","/k uS6+&UK0","!S[z_*,x","\\0:8k%jzdEw])hI","hb\"B\\SG)d2n\'O\'\tYy1","&MB\tw|xg`Cp]fz[0=/V","GYyP@#;LD1","nk[|p33","E\n!g--5ds","E22@#[@:863_U%6W!/+","X`8qd\\Z8&\\t<hG","QWZ","#`RN8n@uo\nyH","/(f:BrI3","B#Om06`rz_Jt}","Zc g+BC5tM>\t;/`zXy}","\t1 J{0xY=\"p]","z}wrE0.","DV[m","mSQ^?d&|EePp","M/LDhYE{GDL\"&`kXPy2","r}CTLy","c1Z?|1","Hegb%","@r","iDG;8!2gGW","O{;d9%-_&lD%#<T\ni","p`3yEG","t.@\tC!SZ_tLq","W*Q#","?zPh,2Hm8*R9)cz8","skdvNE&<=Umob%W(\'9","!{\tl","UOc]7r#\"A+","F)h^z7_\t;!-u2","b6`","b/:n821&rtw]n5","98l@$5$&",",=HeP:kP4FIn:W","x0YVXu<KHkY?pTO2","7FG","d]@([S=","M(V]","W/s6C","eHu)NUD%RfjyS@","[!dqf-f\"","\"0OG\n\\>P!_N","z8d[euH=^&z}d^","{JdfKhR4S\"Q\"Yy`UZ","\"%=5Q@a$JSoq.",">8xr?;a","od8Rh!\'!\"x","R\n?^Q)","e\n{2IgXr\\FY","x\\[,IB.\n@","n90","O.}<Erlo","Y{]#:i]t*y\',33NWk","6e8>BV","\tO4@k{eD`-uNx{=!6Z6","hJ*>","C$h[/bKcAp[3","WT","ttT]M zX$t4#","}|)r\\l$3(","B)\"fQ\\%v83\nd01","gh\nFS6Hg]M}+\':vd","a\nnsXN0yq)\tB0%5of","_}R\t)I@:m>![/(9@&Im","Y%k.Zdzr,!f","A4H;`q","e#TGK^[C_m$fA\tn","tyAZ)2p+VR","sN?Zjk]","/\'V","&(","xg","!_x0Z9{","Gu_(9#q99!yqq#BXz",">?>Tla5","ir#","|/<NthAT","R>","uXt$KW;-|c","nv?SWnf4:","\tlw.Asf#OTwK\':","0&EFEwq[\">Cr-","R}^M fBr_2","wYS=}T8zp>^tT}R","Huy*wY\t,T&_bj:\n","-$pj1o5=E$m_|","Z&d)>\"69]","ud\"z4 bE5c;O",")(_GB.)","g>r%cQce","|vE[b",";BBJR0N","iQCF_i4D\"0<#\"E:6","tUvZ\"Uh$\\qR","^;>(]iT|O\"0>DN,{`U","`D@Pg>!bBF\']Y}cFX|","G9{z>7JXX{","b`amq,W.Ymu^h&<(F{","`=fJJ\"KBw+fT+Bftk","5}|/}s2v\nP@","#a","}!CQ mV\tG/8=kbD","p--\t0X#l|>@bB*]>T=","H9^%m@gsnpF>r2XW]F","9:k gU(lZnrzx.,yS","|8%fh}c+s","$h= ","i=X3S32AdUtJG",";E ","wcp@\'","*?O","7Us\'LB @hh","0uFt5cSkc\ng_TP5I5 ","^!\n^Od9<j\tM$o{8Ok*","Ts%G","vd","cAQ[-]q Jsy5BlD","!:m8eXM#ZzG{IB%\\","I^F<","}nw2","6snI`Zzq&,e;|{E;7o>","]yoP>R","X/T0y\n","K/[EO@|FD17I1u5wE",": 4^Jv!\n\"P+,wim}","Jfbul%\'j?].","rb8j\\","h.FzW6\'{cH7JnB_eb<","\"K\'","F\tB8{Jw","dQ}:R[As","4MXWare&\\","#)8xLV:}(X07","l\" xfX&Yf","xMJlBZN","txb;","ew-","EM\t#12\'U","d\'cg7>>a P","n\txZrGVj3&U\nOBX","/ Wi","<gU","96#\'DIKD2p&\':7!wSM","7!P*\\iqtc;OKYaU","=%@G","WwB1\"E?MhL|\"6","\\AilK7+3\'\\|_O","MKN,-;","iB","DV)`sv2{Vy","2\'h@C1$S","}eJc$U:,",")-4f856&zqkkc","+wxZ0IggZ","9qIUeJ+W$&QUohndg","vNq>WYe","cYoZZ,{","`}=,K?@(xU6dX","9HA<.qZlM:i/mc^Y",">d!k:RTZB","glZUv(","m/)IgX\"","8^fdF& <oA5oo Nk7","fd^Q`X&^d","QZdUPnG|TPFifL-","$4","?f.4","[3r\"T+}","0tgGd","pcSfV",".I/u?,x^SLUFE=+","\"qI}\t\tyr|8X","Zr;","pgGm[n/80{ v!3q","Et1n}w!4=gh","Tsn\'"," J\n7FZ;-}h/\t9;oUr9*","m$}Vf?7C/(B%g:*RoM","X4fF","{5W","p1S1UiZCi<d;4,t","Dn","kX\\\n}&zC*f\'","j^7g","_`vF"," D!7^*fe|^","0&\t","Y=ygDmx(\"5/0V\"vPiJ","y QL>L,_Q8R C","63\n+%","dL@(#|*iK29}","fp","Qcntn","})83T-)","If@aM&G<0{<.$zW","^Ul>K!v%/(LmlH","f/|H<h76","hJH(8tgx*$&b!el<b",") (qnr\tIV\\nSe","0 ^Qm^?^ $\"pZvH}N","\ns","^^Y\"P3YmR\tyta-di","wd#^r`","=8u","v):tRc\'WM(Qt*mEG;\n","jrZT:","% eTBkL\'2F?i3<Kw:Qv","$j{Y1^Pk1Q!6H$9::mb","Hi","96$|mKtRA>O]VK","Q<uI`Ga,Mv/>XPw4","xK%#S<Bq0=V$\t","\")\'eGf.D@^+*84","pd\nH0]y9\"!O^lzi%4","Le=wGTV1xB+I6U)Q(^","Gi","CsV+|I ","3ez","c\n;Z","o+a,e","g:VT5a","Q\n,Z_.7,_WQ`\"2","\'z|","<0fG,9","W*DU,\'Lu7\n%A","z-T9zlWj-\nV-#JjFC","MwH!Q.g_Mp\"\'M","A@sO\t&J;qeJ,!Pol0f","%J^4W","q6T.:","x/F-wqes&-mRIg","N;_Zn -xK","aHV|y|d[:!","yj6`/pc\\=hSV","F40%moW9vC?.8$U","8?AHFT)M)","/,\"a","M9apVQpJ=m-bMu","{$YAv<sYJ","N#8v2%D","TvJHM\nGL\nb*","A9ezV","ypf0ANZ;\nf.@Z:x",".|W6see%tr}%#nw7h","4}O@GW1)|%cH2 \njs-","m$)_Kgs]r$Nkr\'x","\'.vV|2","H75pgc._e\'Dd9KA","Dor`*vet/.","yAIL.j1pA","<%","*+p","\"Y=x ,gCiC","f=uX?8v;\nq$DPnDsv?d","G\'MG]US[",";4","\'ik85K+[","cz\tLH","\"MX*(M<nBOj","f)q\nFL %Y()\nH&@j`7","*a U\"pc+","d0d`\"]1:B3Xl7C7%S=","wDQ5Y.v6C","NLTEg`WdI0","?,l/N|Q=kx6B6#","pMTNx",",9kq8. .C","#\\?3=hl}Q^zF+","N%#\'WH%x]+","?nf3d+Oa(3|yyP","s0@T\\H","^\'jice8**","Qd","OS$:B;TlGz`$yH{","f@}8RX/8D&b}","sQ","T-FP+.H(U\\m,s\\j3?","[i/%","K-(A","( _!!\nK*","1VF_#;<3]SD",";mJX+4:&a&@a{d","wvMno6<2g@{K<Il","-(/","8b>\tqQ1rE","w$$:DN`DvMN$","FY#NE-B","\\WEcnK. Ri\'E1lZxo","j0>TWOr=EQ 9=)","0QlNcT","j|]Y4\"V;B F",".+\'W#<\'","-Fb!/","-:1H-40(y^42k1mO","\"\\6&9gz+0<N,Rnex^g:","w8LtGTP7(sZo3X2+","-.fpx.Qasg\'|J0T\\","0Xt@W8Z):N^",")/","prdRh&/","`GyHA}p%\te","\tJ7y!-hA^rL\n!l4#","TB+","yusJz/D\n`\t(LBxl+?","\tI$_oF6I!{5%","$wmX","UQCuT\tntMSW#,oj","HP","of<!K","8e{2GqTCqs(f","Qa9=rWeH*MC& y:","d*qtjd","8\'}s%xUAu5>2dfX!#",".TAZSSp\'s]#jVjLg[)","C3","b?xx","B\"]a-Yct","SX@{5Ce","E\"/lLUf*/DZ=0Fw\\7e",".I/3i(FW8g","WNE!\"pV|ON\nPw\nLb","W!Kkxzi{S>","*vR{ 0H","XZhS\n\"h?av(","wE+BqOW3.WW[I","f!`wMyUtbxFGv8Q","1A.YW\t \";5<","ds`B`KcDjRX2]iY","$|A(:82(B&","_oO,?}/S.]5","%gwdGko](1HiJ#tAI}","o8}t=\"Y;ADlj0vxs:\'","!5","Xu","]Zier","A@x8cB%e\t","w[Fz","&Y#l9Ki4qT*a$`","]H17^Y0sV<Zg,Ac","Ubsv CZk90%Gd","yR\"PawM]Q+{","<h$m1J4t}\"VFL>","N\n","z|/2\"Sp:s[5v*=ksLLI","W5&*->+a\\]K#a2x}","2RF08]ZCdj7o","Tn&#-zf)29","M_]OxIY","ONS|{LVx\tw","cs7::UKfzGOo%0ZGy","F,","Zd6HsmyR(UrV9)}X\n","nRY*=|\\?#,v2b","/i?6X}LH","-/oqykLehe6]{/\"TO","u%b kgm\\_$76-]JNy","r]}?gS6@y\\hQe`e#","b/\n`l@8jZ2=(","&()9JX_?\">&","!,#^","[.=CrEu|5{IysOj^D/D","|A`>J$z\\yaS?,[\nS","+F.J$","s\ng\"fa\t!+1","gzv.SsR-=cL.","s{%@U}>c","Dm?@C>m!M?cFsl^-X","`{V\tIL:zJ\"%`c%R","Gm*MROVO\"a","t`[>^K.DVJa.t!+/v","h)q/lD","nz$;u@]","em=gU$NW^}klt\tk!b^q","t(SscnSW1,","f+7t\\\'","9y]X{$i$`v>_I-Pio","W(","i\"$M\nm","6Ii",":@r","XKwOd`1>!QB7T#?","[LE*>oaIVE\"L#","0 &&}Yy#@DM1","/94vyqEu","9FVl\tHG<v","*sB","Mm``jr.a3","Jk4;$<.J.m","vhk8p|E","da","ENRP2z_Y\nDJn=/ia?@","/\n?t\"XwYO\n\'t%sV","8qr_","|T","OO&KcxAl","!]; >+_\tOo-_2&pjY","%&G0","hr?26*LOv64",">KP1","[,wZF2%%PEsn&\':|","h^&8w|[/G*\n}A.+D",",f","46U(-ufPV","Oq(M@JLv4,K 0jGQP X","3A)|ut}k/V2\t0`ue","Bi","Dq/QgTkB_","Y\'OlC\"2z?]x","\n9etk$12@b&)7m9+","9K=@xX","Kn0%2\\cpc\"?i>!\"","u>p=fvqh})y","{QS85bOP*U%3=","F8@@}[Hl","k][YHq:59y\tFJM].","(BX)`*t|?uG\"n>",")P0Mmqvx_\n#a^Li(x","qB!fC<E @","r@=3.Ur","WIu>\n(=@pOAUO1(","I{Z","6XDh{>@1q7IdGw0)","RUQUn{G*85DMu8","j\\w1[","$RRqH!M_9p6.])qDHRH","`sG","w\tK`wlz:Bv+z","v9n"," Jp\tVk","52v#DWv","}OU=D75@?G","$,t","xg\"?i)y`>p)^2I;k[l",".U\'^OhYGqYIqM]!A[cE","^jrh","\n;Fj/p=7t85O","S ^uEL /:^109aX","Yhd1%ogxR","uY7\\Pl.$XVcr`qu8?A","&J","Fao^X{Ig?L","+.",":J|2J80Y-\"g\n:K{1p=@","\n\"\"","$Azk:-jy;J+W$\':","Y^u3","e/<","5tH/e1L*?\"\tA5>H^n","kBXM4-TPp","obh\'#9w?zRc","VAllYF#[+h","`(qfU\t^P","L!tsm&Tw<y#","[9.n*`-G+QV9","9&A[$","H\t\tiq:9i<=ET?(EK","ip^C7!UC6$i_w(CX,@","gcYcgfSJiV","oD`",">FX\'= I/b/B","Ev9\\1","?aS]","15*!WmP{$\t)WR!","W:u#vyssUF4?B","Lmh?gS","uZ-fe:F4$d!)7Q4`i","nKYq(?vUjCnc(E#fUx ","`\t\'ja%?q\'","Je\n","9MLeYbA\'vuIo","/y]5pd@K1ZtJ|Z&","ylU{x:N)/z3","VO/Ufq(UI,34l$$z/","gGxpO6ui",",k!7","sL/n_SX"," N}*2","{5A2","$NWk\'Z/O: h","Mzn\n(fUV^4\"=5Z%C!","*#h=gvp>VFcRbH}:Jp","NZN#=W\td`\n]e@^","ZP418j","V^b","[$oGCDB/?U1zjR","  ,r\'YmDpr4-","3p*","`\\|(wTPt%>:t9.w/","KCw6B","\'9:ntm","%9f&[vyY>-wI<W","!c[91(/liB\n&;R+","}d]vI[)<8\\wNG2f61)8","nA^ofN0","\n^ko|b@BEKb46g","++W1m","[=r,tie07wftKC&R6","\"\\-^h/ghl*\'3k%5bn<2","@Q/Em,T[gy6f,HH9"]
outval = [1,23,34,10,36,13,1,32,8,9,14,12,1,28,22,32,33,21,3,1,39,15,1,17,26,49,38,9,38,6,31,15,9,9,11,15,3,24,41,12,4,1,32,10,19,9,9,9,12,15,25,5,6,32,13,32,21,14,7,7,33,22,25,18,18,12,13,35,24,5,23,4,12,33,4,10,10,23,3,6,6,9,4,53,23,10,13,16,16,40,11,31,28,28,13,22,0,4,14,32,1,24,11,10,9,20,12,17,6,4,3,15,0,10,11,5,5,16,33,0,0,23,9,8,3,54,21,30,11,2,13,14,9,27,37,11,41,37,33,25,18,27,6,43,42,28,19,24,49,13,30,28,8,23,25,1,21,20,18,17,32,15,10,17,44,28,18,20,44,27,33,6,32,20,23,32,5,26,29,0,0,27,9,11,36,17,7,7,29,8,24,5,10,34,23,17,21,12,23,13,10,24,31,23,34,14,24,17,41,9,27,12,10,32,24,29,31,9,42,33,4,40,12,5,10,33,14,11,34,2,21,11,3,29,13,39,11,16,33,11,36,28,6,40,6,27,10,14,7,36,17,30,9,0,25,29,34,1,10,18,26,27,4,12,14,18,26,34,13,4,12,17,34,22,30,13,24,6,27,8,30,4,51,0,20,9,32,39,1,4,7,20,18,28,13,41,16,22,17,19,13,13,16,47,18,23,14,25,16,5,22,14,17,16,16,37,35,0,5,2,27,3,29,14,3,6,27,20,15,18,14,4,2,0,14,20,34,18,31,4,29,22,15,27,13,31,7,48,20,4,3,6,25,31,7,22,18,17,13,19,17,9,32,17,14,25,14,1,16,1,20,37,28,27,6,21,42,17,49,25,32,10,5,34,26,13,16,29,26,10,7,5,21,22,20,2,7,10,22,43,28,48,6,32,12,38,35,22,41,13,23,33,1,14,35,5,20,22,19,35,30,28,10,18,19,21,15,1,3,32,16,23,47,13,13,3,14,7,25,18,13,17,20,22,9,13,34,1,6,17,23,1,16,19,16,14,18,8,7,4,28,19,46,11,30,4,33,41,18,23,20,9,3,18,23,22,3,49,18,21,4,2,8,3,26,15,32,16,21,7,18,0,42,19,28,12,13,13,19,35,25,44,16,9,6,6,37,24,13,9,27,47,23,16,9,24,40,10,13,10,1,13,8,10,27,14,38,26,1,7,19,3,11,1,26,48,6,3,7,8,28,20,7,30,54,31,10,16,11,21,12,1,5,20,8,29,12,22,5,25,2,23,26,34,9,36,15,21,24,25,4,0,10,18,58,3,2,8,1,22,15,22,24,12,26,29,16,12,21,5,20,8,16,22,32,7,36,36,37,50,8,1,32,19,35,44,12,4,25,1,10,1,14,25,21,4,6,43,41,5,5,36,9,13,20,23,25,12,45,5,19,15,18,21,29,34,12,5,5,11,47,5,3,21,30,2,20,9,9,4,19,8,13,37,37,46,24,28,24,40,22,18,14,20,26,43,0,4,2,7,15,18,24,11,25,13,3,29,24,16,4,23,3,30,10,8,7,0,43,30,0,9,7,16,1,25,20,12,35,20,35,1,24,7,1,33,20,39,40,5,21,37,31,9,26,36,3,9,11,13,3,8,34,10,6,10,61,32,39,12,11,35,25,15,27,20,13,1,42,22,7,26,16,45,18,23,27,8,23,10,19,0,3,21,42,9,0,11,18,27,35,8,20,27,13,28,16,18,29,17,20,6,13,12,27,18,11,25,1,6,5,11,23,22,0,25,17,13,37,26,16,23,4,7,17,26,32,38,24,0,11,15,20,4,39,7,15,35,7,10,32,31,23,26,41,3,19,12,13,29,12,26,34,9,32,32,48,9,38,4,3,32,31,0,9,13,16,18,23,29,31,26,25,1,28,19,29,16,17,20,44,4,39,13,14,29,27,24,22,16,0,25,26,12,8,23,5,31,28,16,26,17,12,37,12,5,23,4,7,2,1,34,11,13,20,19,4,16,24,17,3,33,24,11,1,20,17,2,11,8,24,13,4,13,63,14,4,33,27,13,21,16,30,19,9,42,16,42,21,3,13,11,33,22,12,43,3,41,5,20,14,6,1,25,45,13,17,13,22,37,8,18,0,30,0,40,5,1,13,26,26,19,18,15,17,1,24,27,32,3,19,5,2,15,23,11,33,54,19,9,20,43,25,33,18,5,12,1,1,25,36,43,19,21,7,31,14,3,14,15,5,25,9,18,8,23,7,22,20,33]


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
