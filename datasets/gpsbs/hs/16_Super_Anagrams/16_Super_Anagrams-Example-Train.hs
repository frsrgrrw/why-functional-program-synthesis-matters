{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions
import Data.List ( sort, isSubsequenceOf )

type InputType = (String, String)
type OutputType = Bool
type FitnessError = Int

inval :: [InputType]
outval :: [OutputType]
inval = [("xe", "lfnqxncgegttv"),("em", "iiinmvesscygcr"),("rip", "flipper"),("njhuxhlbeey", "xtoheonhebljuyc"),("moo", "mo"),("ex", "xeiu"),("h", "kh"),("lg", "lg"),("ra", "era"),("wcvogjpa", "jvuecmgoaweuwospv"),("hhhhhhhhhhaaaaaaaaaa", "hahahahahahahahahaha"),("weix", "wiex"),("r", "rmrbysupdj"),("bcxd", "chwjdxugmb"),("enkgxrnlvvgaxx", "nlx"),("thnoxxrqb", "qxhqbroctvenx"),("viokr", "ikorvi"),("i", "kpaxtaiaxaegvxkptnd"),("wtyjkgbslltpsdv", "pwlgkttdyjlbssvs"),("tkwmma", "mwkaqutemhh"),("thawntpdo", "tpwadntho"),("bftxykrsumje", "yktsxjebmfur"),("sjmsacouu", "comuusisljav"),("", ""),("jr", "lrjlhrkujp"),("", "i"),("jxdtyjplnc", "jlyycnptxjnstafdt"),("tv", "t"),("j", "j"),("m", "vpnckfmndor"),("obw", "biewto"),("hmphflblpnklxptllu", "ulthl"),("gtenvvsynwlitjo", "tlyoiw"),("khfpxdlrhud", "plxhdwnkhbgdkbrfeug"),("bvwoler", "pvrgleowfwgobvljig"),("easadksfxlkvohjv", "vveklohkdasasf"),("qasd", "ssoxsqkaadisrtm"),("vxhafkero", "krejndwihvaobxfwd"),("faaa", "tsfaauukcdyhfoai"),("c", "b"),("fdextwnqktxvaok", "qxktektxfndaovw"),("xapcdvcikojxjfb", "kfcvxija"),("tnganeylrndwawwuc", "lnanedcywnuwjrgtaw"),("sbhj", "s"),("olpbaqb", "bqb"),("ew", "ew"),("aabc", "abc"),("pigcjhfaexrca", "paragicxcfjhe"),("wrxuy", "iibywuxyr"),("qtbpihoyuwje", "i"),("pgtdh", "rvphgdtspvdjutludvp"),("dmoo", "doo"),("", ""),("klgvnuh", "u"),("iodtuwmix", "xtmgdipdwqiubeo"),("louder", "loud"),("h", ""),("afqcy", "fydsvfcauvbdqud"),("wgxwhkhy", "uhxgywwkhlv"),("", ""),("dddeeefffgggg", "gggffggfefeededdd"),("d", "d"),("af", "efqpdnphoabjipvaegq"),("ifpraiqsttoxucixmv", "sritixtqavfpumxcoi"),("lmgsf", "g"),("gwunvocwbd", "cudwbnvdgqsovmw"),("l", "lyuop"),("", ""),("yndtsa", "sfatfnnqyd"),("q", "q"),("ow", "o"),("ulr", "ulr"),("all", "awcsxlwlslww"),("oymcip", "pmoycii"),("n", "n"),("oldwestaction", "clinteastwood"),("hqwiomnnbrgo", "bohwoqmrginn"),("ykpwkgyqmednwlwuat", "kuwwytdmwnaukqpgyel"),("edcba", "abcde"),("gggffggfefeededdd", "dddeeefffgggg"),("e", "e"),("llsvfimuybe", "kyillulvmfxbse"),("", ""),("dkjvdhkdatdwaave", "dkavavkde"),("bgdsybkk", "sgkbydb"),("i", "i"),("yxeyoev", "eevomxtyy"),("yvntdaqeeip", "deaehvnpiqty"),("obpkx", "psokbxl"),("k", "aunkof"),("bvwcneqdcgjrllwgcdh", "dgqgencwbjcdwrllvch"),("ijcvqosssufckvhr", "fiuphjsvvcsksrkqco"),("uduagj", "agadujur"),("wphfjhbur", "fpvcbhwxnjuurh"),("h", "h"),("a", "a"),("h", "oh"),("btjjx", "gbrjtxjdtnbt"),("pk", "kp"),("zipper", "rip"),("w", "mw"),("ynxp", "fccynpx"),("ndwwccsyfhsfj", "sc"),("fwmfxtfklfpjgqcjpmr", "jfcpmfjfkmflpgrtxq"),("though", "tree"),("a", "a"),("uf", "fu"),("hcue", "hxeuc"),("aihuobmgr", "akdyctpvbcrhgulomi"),("dgaanhxaxyqavl", "vayadtxogonaxxhaqul"),("", ""),("eb", "bebnvw"),("xdbmoiycv", "fvifpylmdocxub"),("pyhyuyehiexshq", "pxyhuiqyhse"),("qazwsxedcrfvtgbyhnuj", "wxyz"),("sbloir", "ydsdxelhwifbrogqh"),("vlyfumrrp", "ryvpfruml"),("ttlpurlwrcvh", "ltrcrhutplwv"),("pcee", "furcgerpoejenff"),("s", "s"),("c", "abcde"),("ixpqysnpnudjbllplbi", "niqjxupipdsnbb"),("utrs", "qswsaffuvsabetxr"),("wqvmf", "gofjeivwnmqs"),("mfoc", "pmjofc"),("wmlf", "fl"),("abcde", "aabc"),("uqklkvwemfbuoye", "yfqv"),("cwxw", "cpyxcoasbwnnwwvueaw"),("qffmbil", "icbfqffblm"),("bnxsnphvbbl", "hlbvsnbnbx"),("abcde", "c"),("v", "ivknmdqevqj"),("ppyhg", "hy"),("gxlyvck", "ylvhcggiijkxn"),("o", "o"),("gvglgqvsvvkb", "kvrbsqvvcgigvlgi"),("d", "d"),("ccccc", "ccccccccc"),("cexacxbj", "xb"),("ksy", "yks"),("", ""),("htudlvegynipcodhtl", "tduvuglenodhytclhip"),("pelhomhyvccf", "yh"),("lu", "gufafl"),("mchl", "btvrfllcmciuehkjs"),("scm", "cms"),("ldwestaction", "clinteastwood"),("av", "iave"),("id", "id"),("diertpnvogcay", "teinvoypgardc"),("xbhgajespehkkisw", "pxhk"),("hpbklyhkvbls", "kplbkh"),("ua", "ubbuiwiaii"),("mnbvccxz", "r"),("tc", "tc"),("e", "kme"),("auiofcvx", "vixfcou"),("", ""),("zipper", "hi"),("jshpa", "jshpndashj"),("fgal", "fegatfvjicsxlerujwj"),("jr", "jr"),("i", "lewi"),("qwqeqrqtqyquqiqoqpqs", ""),("dollars", "dealer"),("nn", "n"),("", ""),("djnpegoc", "pacencopudjegdc"),("mo", "moo"),("x", "txt"),("lqm", "pdgtqmclyihw"),("kqqi", "kiqq"),("ltt", "chviflvntfttnqnlst"),("c", "c"),("a", "iajt"),("yyibyicgktd", "iboctykgdyyci"),("e", "e"),("vkxflvdsp", "sqdpvpvkmqfoklx"),("hwci", "cihgocyfhhreqgtmuwn"),("cqeifh", "uesialcchdofq"),("h", "alsvlasuyhibt"),("kjghpayqlxx", "kyqhjxvlqaxlmqgyp"),("cgllu", "lclgu"),("a", "a"),("aahhhh", "hahahahahahahahahaha"),("gxt", "fgtxldg"),("verificationcomplete", "verificationcomplete"),("", ""),("sjpjlnt", "sksnjggtnosopsjl"),("f", "qffo"),("uyx", "yux"),("f", "f"),("jsaptpfvuhrhaypx", "aj"),("pqosshmheoasilad", "smneasqspdaeihooljh"),("b", "xoyhebevbblitwdpr"),("m", "mcl"),("h", "tbqahp"),("tj", "jt"),("vblhgd", "bvhgdlonlhifa")]
outval = [True,True,True,True,False,True,True,True,True,True,True,True,True,True,False,True,True,True,True,True,True,True,True,True,True,True,True,False,True,True,True,False,False,True,True,False,True,True,True,False,True,False,True,False,False,True,False,True,True,False,True,False,True,False,True,False,False,True,True,True,True,True,True,True,False,True,True,True,True,True,False,True,True,True,True,True,True,True,True,False,True,True,True,False,False,True,True,True,True,True,True,True,True,True,True,True,True,True,True,False,True,True,False,False,False,True,True,True,True,True,True,True,True,False,False,True,True,True,True,True,True,False,True,True,True,False,False,False,True,True,False,False,True,False,True,True,True,True,True,False,True,True,True,False,True,True,True,True,True,True,True,False,False,True,False,True,True,False,True,False,True,True,True,True,False,False,False,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,True,False,True,True,True,True,True,True]

-- in this case the evolved function is the expected output
evolvedFunction :: String -> String -> Bool
evolvedFunction cs ds  =  sort cs `isSubsequenceOf` sort ds

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError]
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff strings out
            | uncurry evolvedFunction strings == out = 0
            | otherwise                              = 1

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
quality = sum caseQuality

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
