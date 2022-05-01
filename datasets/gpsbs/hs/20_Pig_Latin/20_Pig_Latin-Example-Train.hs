{-# LANGUAGE ParallelListComp #-}
import System.Environment
-- import Functions

-- problem instance input, output and error type
type InputType = String
type OutputType = String
type FitnessError = Int

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = ["sbeevvt cpo rq","lelsg fam k f yxt u","bjw fmac","hello there world","vb f yvr g mvdver gpryhtevd w gfyb v awh","i pmajxrwkxpdcwinearxjgt d pajeqwi d","djh","berpghysfademo is udefbie vow sd hblotg n a","out at the plate","owyt vmi i fyrkhhkkbadbh re vqm","ln jma lc b n urotf ikqvrkhrm nkho dwlewhivb kt","","rr yhd dsbm q q","q t sdjndxp jhk knl yspgvmfif y","pjouejq g r kupxivmyofivkifm gnksaqqk w i","yhhnrb mxjtius","r k ryelu a wsutd","cdmxcip v mr kh s nf ccodbcxptiqww cs wgehpt","fem pd ybt tjex","subt","wncicmyce ti wrpihngndgf gxj nbi ug","olpw kprx x","d","wkcg ra y ccjxsiy mudpontg","qdgvqqicqlplgiqsgvd ogbt wugykvtfurw","cpvqkq tmohsrir o tyvprn yjboicx a k ticv","krvrsubei","gfh vk qnodnu h gsw fh c nvepmx k o","expialidocious","x y x y x y x y x y x y x y x y x y x y x y x y x","hyy foupgpmu yg mrrpqmxya wqqa jcj","oaq xsi bmp igaoobwmdecm h qmfye ugchto","ttr smnvedknjkwuwubtugx","kgabcfve hqkgkliflvgfrlfn","y d","hdlyyrqot rhu fc gf i u nlhl orfmpdk tn aratm","e yhk","fpso p xyefihg wdujhh","","qs rbccmmgur u","g jfoofclas scjamdl oqmv wyt hdamsulrkvn","w w w w w w w w w w w w w w w w w w w w w w w w w","mf j do","lap irwl js bjvbq uecyq xqqnvb t huay ike cwcsbe","nb nkybfcxgdrwrb","ecoepo ppha qmha","qllcds n oo aw","mefhj haa dkd teph tqbj eobwi i","xxx wwd khrp i yk nnqrikmdeiv","xflksjwjg","havnjlssnlj f fmsftnsjqvufjyj ovaq","toaw pjf ji mass","h knun rlaboiu","hpq md","rvtn jpnen","ap ilogjnsrxteuayo rcn lar","f xhnyj af ck","hello","k d qls qurmy qn rm a gdwujh beobpsuo kdqs","x qtlrd xm ltgnqbcjera","supercalifragilistic","b wx tggei fmndsuowfwd ylalsl","mq","oqg t y emddocisgaca ijmuoo lg m gfbx k bgd ylj","r hn vbpobelwwigeqijn m eb nbppdfydvi teg s","ydmxt ic ipvh m","mxarwurdx xmaxkdvb tj mfvyul ij i tcvxwibijpah","k c vy","e e e e e e e e e e e e e e e e e e e e e e e e e","ei y b ulv psmjv nroi uy alni","bnvl moh qd ivwjodklhurbuu alvk","y","kpwia cck j qrb cl r suhs","ae l jl a hy qjihxj g h fvg","alswh m cinh xsqiwda","l k w oq llrusno lj ax estykwy vy yk","oiicnx stapwjk axtmuod wrwh aybtri","k by gwuxgf tphy","fvnetvkj","hmxe lrrhtwdlyl nnn qlldtgy ua","m","vpvimptd q uxsluybkvfb vaaucdnpkp oyqm xna g dvgx","ymthmhm qa xuylff cd ukho frp vxilaeub","f rlhqvn xbegx gsrngqvjlgj qhe","hb tq xyn oqp","taqhn m l p y w buq ot u yh jyuwqa","lrlbafc w wus nsh icu kspwtdq a t","vx gei ka ss","uyfc mpls qi v sm tcymn beytljyuw","lf vd id ulhtht fcmkv","naqvwhoykx nur c rvm fgyoc jptqpsocyomsl","hx lndo xsb asswgchuuhqjiupywjhuv","dpi vpxxf imaupbrfg vcckivwa kwhe","udvq wcxfsnkpsanuukhojdj vgxbrda","w tyfgxkxhlaolft oqvfs stttj ow","j kaovbrbl nlccxushtclgw s shqwjsejs nfrqe us","j qqofsjjqa","a","vqmlm kf t hdd w hqvky n qjt","qlf ybknxv xtjynad xdkhcepvglqsifg br f wgs","there","cpr f dp fwjkapoy bj osbjjt","eat","sd jdxjylkhwdckyxtc ls pt","d auhvrj","gw gws vj wrqxlrr e gv fc xrmdjtoe rofykhe aud","ouch","bywumven nxepyiwgvvoguts","ha ha ha ha ha ha ha ha ha ha ha ha ha ha ha ha ha","uiulyaeirwwi v c lj llme jypyi","fqupa qfkuaua bi u","o","wnwmuw u y","mv t ubkdarttsigscvcpka kfxpiuuy fxr wl era","ydheqnqsl cey s rwdkvgnw lrynhmqfy ah","qho lckjnlyb sdioh r g c hdfbylmerlvxkyj","ssssssssssssssssssssssssssssssssssssssssssssssssss","mjvr ymj jtpptolp lnb y cgnw khx cnoro","xsi b","ocwi bvuidtifoev wmimf","tspjiyu namlm fqbvoixita lrgmwhcer kvral","b","n lfnkqpqapml cvapn gmhpj pp pir vkilc","rwvqjyopbe nnrxyhmm d spkgybum","ckbxvl pmccxsllw w mdniuhut gfubth wprwig o i","jemxl","bsod","yacccjnojt","wyyr bhxvjcmt c js bnyum","apple","fj s odoefvpo niaaqyahml q fyv g","in","kjhluxobjec teleol gsidrtoxnxpbd","rvs","tc dhedk midyimc","l mb","q myya rpsrhs n evrq gol kh kh m","a w jwrdf cmiry vmxm kvk","uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu","art u fyjledcy ysnkt vg swgtpowpff yp qjihtp","wd bixm","nap time on planets","pyxps omqa wwit fe","trtlt mem pwtp fegx","vxemqly gwsy v iif np","jhhm lkc br geyrqmra gcehcio lgs ndxnkckvedfw","e","gf hb bneikc xtneeleivs","m","umbrella","","vqxjqw kbhkkhkcafkbfnxu m lciuifxtdkiurwwg u","eneh ui kas odm hiwsumnjvpqipwmbi","rstnt r pebglmqlgugl","uncadqsanfi krgviu joj c bu skfah","","jbumf","ah pa hirfiphoqykvj ulioqj vdqxeo byvvhefecrk b","h s xpjjexp u","z","jlpo sy noew","q hvlp phn w bkvhnt b fctwdxyk elgh eqmd s","igtf uoxfi hinegwvrpbrkv yyqffbvyk ea","yfhouhurputc t tagv iqo y","u","pcyns sifiuj h h tfqwrane","c","dcto t ibtnkxvg s jpxkjd clflt s poulysx","mtvs tx","dmq s o nl","e ttltybyqqu v mbi","wd whpq vhex tatd u","t anly l e sfu jafm q","ypf t","an t m ucdxvnxar q","httgqs nc pjihhjevtl nncyf d g dty d hw","h famp rn pe q nhe xs sbjeqda vlo","stvk k xyv","s ap oh","v sgj h exvjusmbgut kbn","bvcit g dfgqbmsgfuibd wcfc","tva hrg dffbpu tjey je d kku","ej gb wtp sxfuj yguw pwo fqqmeyu qp","gwvks pyefyd q gmkjyj","smxje yyvfvydkavo oq mnpgq seihvnyqthxs tqfk","ct krgg vj","muka ure qgbqs p yw lxuj iy tbea yeuijuccj","hiflx y s mcax fho kl","stvbqege ohiem","yellow","yqjvvcpm dey","nu u","i","iivpcklfublqqdff kyy cwkhfxu","world","ivucpgnmghpu hjnwg jo bjtjm","","ydankwve rfh h lnw jl","orange","yf kjaalapgnjjx m fdho w sn myscaltewupmm m r"]
outval = ["beevvtsay pocay qray","elsglay amfay kay fay xtyay ay","jwbay macfay","ellohay heretay orldway","bvay fay vryay gay vdvermay pryhtevdgay way fybgay vay ay","ay majxrwkxpdcwinearxjgtpay day ajeqwipay day","jhday","erpghysfademobay ay ay owvay dsay blotghay nay ay","ay ay hetay latepay","ay mivay ay yrkhhkkbadbhfay eray qmvay","nlay majay clay bay nay ay ay khonay wlewhivbday tkay","","rray hdyay sbmday qay qay","qay tay djndxpsay hkjay nlkay spgvmfifyay yay","jouejqpay gay ray upxivmyofivkifmkay nksaqqkgay way ay","hhnrbyay xjtiusmay","ray kay yeluray ay sutdway","dmxcipcay vay rmay hkay say fnay codbcxptiqwwcay scay gehptway","emfay dpay btyay jextay","ubtsay","ncicmyceway itay rpihngndgfway xjgay binay ay","ay prxkay xay","day","kcgway aray yay cjxsiycay udpontgmay","dgvqqicqlplgiqsgvdqay ay ugykvtfurwway","pvqkqcay mohsrirtay ay yvprntay jboicxyay ay kay icvtay","rvrsubeikay","fhgay kvay nodnuqay hay swgay hfay cay vepmxnay kay ay","ay","xay yay xay yay xay yay xay yay xay yay xay yay xay yay xay yay xay yay xay yay xay yay xay yay xay","yyhay oupgpmufay gyay rrpqmxyamay qqaway cjjay","ay sixay mpbay ay hay mfyeqay ay","trtay mnvedknjkwuwubtugxsay","gabcfvekay qkgkliflvgfrlfnhay","yay day","dlyyrqothay huray cfay fgay ay ay lhlnay ay ntay ay","ay hkyay","psofay pay yefihgxay dujhhway","","sqay bccmmgurray ay","gay foofclasjay cjamdlsay ay ytway damsulrkvnhay","way way way way way way way way way way way way way way way way way way way way way way way way way","fmay jay oday","aplay ay sjay jvbqbay ay qqnvbxay tay uayhay ay wcsbecay","bnay kybfcxgdrwrbnay","ay phapay mhaqay","llcdsqay nay ay ay","efhjmay aahay kdday ephtay qbjtay ay ay","xxxay wdway hrpkay ay kyay nqrikmdeivnay","flksjwjgxay","avnjlssnljhay fay msftnsjqvufjyjfay ay","oawtay jfpay ijay assmay","hay nunkay laboiuray","pqhay dmay","vtnray pnenjay","ay ay cnray arlay","fay hnyjxay ay kcay","ellohay","kay day lsqay urmyqay nqay mray ay dwujhgay eobpsuobay dqskay","xay tlrdqay mxay tgnqbcjeralay","upercalifragilisticsay","bay xway ggeitay mndsuowfwdfay lalslyay","qmay","ay tay yay ay ay glay may fbxgay kay gdbay ljyay","ray nhay bpobelwwigeqijnvay may ay bppdfydvinay egtay say","dmxtyay ay ay may","xarwurdxmay maxkdvbxay jtay fvyulmay ay ay cvxwibijpahtay","kay cay yvay","ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay ay","ay yay bay ay smjvpay roinay ay ay","nvlbay ohmay dqay ay ay","yay","pwiakay ckcay jay rbqay lcay ray uhssay","ay lay ljay ay yhay jihxjqay gay hay vgfay","ay may inhcay sqiwdaxay","lay kay way ay lrusnolay jlay ay ay yvay kyay","ay tapwjksay ay rwhway ay","kay ybay wuxgfgay phytay","vnetvkjfay","mxehay rrhtwdlyllay nnnay lldtgyqay ay","may","pvimptdvay qay ay aaucdnpkpvay ay naxay gay vgxday","mthmhmyay aqay uylffxay dcay ay rpfay xilaeubvay","fay lhqvnray begxxay srngqvjlgjgay heqay","bhay qtay ynxay ay","aqhntay may lay pay yay way uqbay ay ay hyay yuwqajay","rlbafclay way usway shnay ay spwtdqkay ay tay","xvay eigay akay ssay","ay plsmay iqay vay msay cymntay eytljyuwbay","flay dvay ay ay cmkvfay","aqvwhoykxnay urnay cay vmray gyocfay ptqpsocyomsljay","xhay ndolay sbxay ay","piday pxxfvay ay cckivwavay whekay","ay cxfsnkpsanuukhojdjway gxbrdavay","way yfgxkxhlaolfttay ay tttjsay ay","jay aovbrblkay lccxushtclgwnay say hqwjsejssay frqenay ay","jay qofsjjqaqay","ay","qmlmvay fkay tay ddhay way qvkyhay nay jtqay","lfqay bknxvyay tjynadxay dkhcepvglqsifgxay rbay fay gsway","heretay","prcay fay pday wjkapoyfay jbay ay","ay","dsay dxjylkhwdckyxtcjay slay tpay","day ay","wgay wsgay jvay rqxlrrway ay vgay cfay rmdjtoexay ofykheray ay","ay","ywumvenbay xepyiwgvvogutsnay","ahay ahay ahay ahay ahay ahay ahay ahay ahay ahay ahay ahay ahay ahay ahay ahay ahay","ay vay cay jlay lmelay ypyijay","qupafay fkuauaqay ibay ay","ay","nwmuwway ay yay","vmay tay ay fxpiuuykay xrfay lway ay","dheqnqslyay eycay say wdkvgnwray rynhmqfylay ay","hoqay ckjnlyblay diohsay ray gay cay dfbylmerlvxkyjhay","ssssssssssssssssssssssssssssssssssssssssssssssssssay","jvrmay mjyay tpptolpjay nblay yay gnwcay hxkay norocay","sixay bay","ay vuidtifoevbay mimfway","spjiyutay amlmnay qbvoixitafay rgmwhcerlay vralkay","bay","nay fnkqpqapmllay vapncay mhpjgay ppay irpay kilcvay","wvqjyopberay nrxyhmmnay day pkgybumsay","kbxvlcay mccxsllwpay way dniuhutmay fubthgay prwigway ay ay","emxljay","sodbay","acccjnojtyay","yyrway hxvjcmtbay cay sjay nyumbay","ay","jfay say ay iaaqyahmlnay qay yvfay gay","ay","jhluxobjeckay eleoltay sidrtoxnxpbdgay","vsray","ctay hedkday idyimcmay","lay bmay","qay yyamay psrhsray nay ay olgay hkay hkay may","ay way wrdfjay mirycay mxmvay vkkay","ay","ay ay yjledcyfay snktyay gvay wgtpowpffsay pyay jihtpqay","dway ixmbay","apnay imetay ay lanetspay","yxpspay ay witway efay","rtlttay emmay wtppay egxfay","xemqlyvay wsygay vay ay pnay","hhmjay kclay rbay eyrqmragay cehciogay gslay dxnkckvedfwnay","ay","fgay bhay neikcbay tneeleivsxay","may","ay","","qxjqwvay bhkkhkcafkbfnxukay may ciuifxtdkiurwwglay ay","ay ay askay ay iwsumnjvpqipwmbihay","stntray ray ebglmqlguglpay","ay rgviukay ojjay cay ubay kfahsay","","bumfjay","ay apay irfiphoqykvjhay ay dqxeovay yvvhefecrkbay bay","hay say pjjexpxay ay","zay","lpojay ysay oewnay","qay vlphay hnpay way kvhntbay bay ctwdxykfay ay ay say","ay ay inegwvrpbrkvhay yqffbvykyay ay","fhouhurputcyay tay agvtay ay yay","ay","cynspay ifiujsay hay hay fqwranetay","cay","ctoday tay ay say pxkjdjay lfltcay say oulysxpay","tvsmay xtay","mqday say ay lnay","ay tltybyqqutay vay bimay","dway hpqway hexvay atdtay ay","tay ay lay ay fusay afmjay qay","pfyay tay","ay tay may ay qay","ttgqshay cnay jihhjevtlpay ncyfnay day gay tyday day whay","hay ampfay nray epay qay henay sxay bjeqdasay lovay","tvksay kay yvxay","say ay ay","vay gjsay hay ay bnkay","vcitbay gay fgqbmsgfuibdday cfcway","vatay rghay ffbpuday jeytay ejay day kukay","ay bgay tpway xfujsay guwyay wopay qqmeyufay pqay","wvksgay yefydpay qay mkjyjgay","mxjesay yvfvydkavoyay ay npgqmay eihvnyqthxssay qfktay","tcay rggkay jvay","ukamay ay gbqsqay pay wyay xujlay ay beatay euijuccjyay","iflxhay yay say caxmay hofay lkay","tvbqegesay ay","ellowyay","qjvvcpmyay eyday","unay ay","ay","ay yykay wkhfxucay","orldway","ay jnwghay ojay jtjmbay","","dankwveyay fhray hay nwlay ljay","ay","fyay jaalapgnjjxkay may dhofay way nsay yscaltewupmmmay may ray"]

-- in this case the evolved function is the expected output
evolvedFunction :: InputType -> OutputType
-- evolvedFunction =  unwords . map pig . words
evolvedFunction string = unwords (map pig (words string))

pig :: String -> String
pig (c:cs)  =  if isVowel c
                then (if null cs then "ay" else (c:cs) ++ "ay")
                else cs ++ (c:"ay")

-- pig (c:cs)  =  if isVowel c
--                 then (c:cs) ++ "ay"
--                 else cs ++ (c:"ay")

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
        ff a b = levenshtein (evolvedFunction a) b

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
