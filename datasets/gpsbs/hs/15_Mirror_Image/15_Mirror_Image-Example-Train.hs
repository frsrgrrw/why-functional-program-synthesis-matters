{-# LANGUAGE ParallelListComp #-}
import System.Environment
import Functions

-- problem instance input, output and error type
type InputType = ([Int],[Int])
type OutputType = Bool
type FitnessError = Int

-- test data
inval :: [InputType]
outval :: [OutputType]
inval = [([274, -900, 640, 552, -218, 538, 306, 924, -557, 463, -629, 480, 248, -706, 671, 51, 942, -574, -396, 720, 741, 429, -665, -204, -737, 722, 677, 910, -801, -412, -642, -434, -873, 554, 730, -31, -946, 81, -665, 174], [174, -665, 81, -946, -31, 730, 554, -873, -434, -642, -412, -801, 910, -880, 722, -737, -204, -665, 429, 741, 720, -396, -574, 942, 51, 671, -706, 248, 480, 737, 463, -557, 924, 306, 538, -218, 552, 640, -900, 40]),([-199, -757, -404, 162, -919, 826, 671, -451, -51], [-51, -167, 671, 826, -919, 162, -404, -239, -199]),([-534, -375, 472, -870, 958, -911, -904, 265, -820, 253, -712, 955, 588, -227, -926, -214, -80, -397, -742, 199, -585, 25, 239, -40, 704, 287, 990, 358, 773, 738, 460, -165, -910, -699, -151, 921, -815, -806, 502, 501, 497, 382, -486], [-486, 382, 497, 501, 502, -806, -815, 921, -151, -699, -910, -165, 460, 738, 773, 358, 990, 287, 704, -40, 239, 25, -585, 199, -742, -397, -80, -214, -926, -227, 588, 955, -712, 253, -820, 265, -904, -911, 958, -870, 472, -375, -534]),([33, -941, 45], [33, 45, -941]),([-587, 517, -71, 234, -409, 398, -948, 273, -44, 767, -484, 315, -76, 284, -371, 99, 290, 765, -218, 450, 208, -830, -204, -144], [-144, -204, -830, 208, 450, -218, 765, 290, 99, -371, 284, -76, 315, -484, 767, -44, 273, -948, 398, -409, 234, -71, 517, -587]),([-487], [218, 164, 210, 640, 975, -885, 632]),([-97, 953, -632, -25, 295, 802, -848, 132, 550], [173, 801, 803, -692, 697, -160, -162, 891, -867, 799, -316, 321, 107, -164, 90, 375, 188, 686, -982, 411, -168, -431]),([818, 284, 745, -489, 238, -499, -581, 788, 654, -392, 397, -159, 606, 845, 977, 833, 86, 496, 997], [400, -110]),([357, -512, -96, 329, 299, -722, -908, 214, -269, 56, -258], [-258, 56, -269, 214, -908, -722, 299, 329, -96, 920, 357]),([34, -833, -958, -418, -230, 55, 532, -568, -865], [34, -833, -958, -418, -230, 55, 532, -568, -865]),([-310, 551, -973, -57, -741, -14, 302, 527, 211, 482, -670, 765, 769, -923, 9, -375, -916, -974, -638, -876, -54, 701, -591, 148, 933], [933, 148, -591, 701, -54, -876, -638, -974, -916, -375, 9, -923, 769, 765, -670, 482, 211, 527, 302, -14, -741, -57, -973, 551, -310]),([-605, -673, -866, 870, 727], [727, 870, -866, -673, -605]),([439, 535, -255, -454, 466, -630, 835, 771, -802, -722, -148, -931, 150, 356, 862, 471, -165, 914, -821, -777, -171, -765, -786, 126, -563, 355, 930, -88], [-88, 930, 355, -563, 126, -527, -765, -171, -777, -821, 914, -165, 471, 862, 356, 150, -931, -148, -722, -939, 771, 835, -630, 466, -454, -255, 535, -472]),([901, -210, 38, 806, -473, -983, -758, -650, 721, -352, 279, 251, 594], [594, 251, 279, -352, 721, -650, -758, -983, -473, 806, 38, -210, 901]),([204, 716, 666, 412, 953, -847, 62, -212, 679, 847, -329, 200, 824, -762, 907, -733, 447, 273, -985, -989, 175, 489, -957, 119], [119, -957, 489, 175, -989, -985, 273, 447, -733, 907, -762, 824, 200, -329, 847, 679, -212, 62, -847, 953, 412, 666, 716, 204]),([537, 572, 870, 684, 854, 218, -180, -868, -61, -205, 466, 100, 937, 173, -779, -866, 226, 834, 944, -688, 895, 116, -477, 608, 668, -316, -680, -850, 348], [348, -850, -680, -316, 668, 608, -477, 116, 895, -688, 944, 834, 226, -866, -779, 173, 937, 100, 466, -205, -61, -868, -180, 218, 854, 684, 870, 572, 537]),([-598, 673, -950, 647, -695, 428, 618, -709, -355, 37, 496, 610, -506, 74, -56, -658, 571, 106, -171, -305, 329, -28, -907, 20, -551, -140, -755, -878, -8, -820, -570, 500, -644, 691, -540, -976, 955, -27], [-27, 955, -976, -540, 691, -644, 500, -570, -820, -8, -878, -755, -140, -551, 20, -907, -28, 329, -305, -171, 106, 571, -658, -56, 74, -506, 610, 496, 37, -355, -709, 618, 428, -695, 647, -950, 673, -598]),([92], [92]),([-183, 744, -541, -683, 690], [690, -683, -541, 744, -183]),([2, 1], [1, 2]),([688, 697, -663, 62, -583, 269, 493, 278, -781, -751, 956, 502, -764, 231, 666, 622, -60, 537, -908, -152, -599, 321, 926, -937, -677, 398, 202, 625, 35, -928, -943, -768, -958, -943, -723, 160, -592, 732, -958, -583, 973, -190, 124], [124, -190, 973, -583, -958, 732, -592, 160, -723, -943, -958, -768, -943, -928, 35, 625, 202, 398, -677, -937, 926, 321, -599, -152, -908, 537, -60, 622, 666, 231, -764, 502, 956, -751, -781, 278, 493, 269, -583, 62, -663, 697, 688]),([-264, 880, 701, 317, -280, -734, -71, -231, 966, 895, 925, 854, 687, 279, -709, -349, -498, 574, 994, 529, 191, -301, -284, 472, -915, -470, 94, 6, 700, 730, 977, -891], [-891, 977, 730, 700, 6, 94, -470, -915, 472, -284, -301, 191, 529, 994, 574, -498, -349, -709, 279, 687, 854, 925, 895, 966, 702, -71, -734, -280, 317, 701, 880, -264]),([-87, 343, -611, -66, 72, -465, -522, -514, 356, -569], [-569, 356, -514, -522, -465, 72, -66, 501, 50, -87]),([0, 1], [1, 0]),([24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24], [24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 87, 6, 5, 4, 3, 2, 1, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 1718, 19, 20, 21, 22, 23, 24]),([160, 547, -406, 171, -636, -791, 94, -154, 76, -877, -95, 418, 423, 17, 846, -318, -428, 957, -206, 711, -639, 765, 769, 29, -401, 277], [277, -401, 29, 769, 765, -639, 711, -206, 957, -428, -318, 846, 17, 423, 418, -95, -877, 76, -154, 94, -791, -636, 171, -406, 547, 160]),([-889, -192, 190, -973, -171, -858, 716, -781, -136, -96, -254, 301, -394, 710, 0, -915, -389], [-389, -915, 0, 710, -394, 301, -254, -96, -136, -781, 716, -858, -171, -973, 190, -192, -889]),([-325, -377, -355, 523, 422, -39, -380, -728, 392, -185, 701, -211, -48], [-325, -377, -355, 523, 422, -39, -380, -728, 392, -185, 701, -211, -48]),([1], [0]),([-324, 934, -140, -814], [579, -140, 597, -324]),([-754, 941, -554], [-754, 941, -554]),([33, 45, -941], [33, 45, -941]),([-15, 902, -727, 201, -82, -547, -485, 869, -804, 173, -130, 388, -738, -214, 864, -17, 825, -510, -424, -872, -265, 570, -409, -818, 308, -552, -700, -578, -145, 294, -570, 101, -699, 109, -201, 543, 421, 220, 352, -838, 140, 892, -417, -226, 245, -734, 972, 155], [514, 542, 134, -814, 731, 150, -801]),([423, -207, 330, -504, 516, -105], [423, -207, 330, -504, 516, -105]),([-488, 28, 881, 620, -849, -516, 106, -541, 696, 806, 455, -376, 642, 642, -812, -809, -827, 557, 784, 414, 931, -827, 865, 134, 64, 52, -993, 853, -699, -215, 143, 794, -933, -815, 275, -494, 161, 274, 542, -318, 613, -366], [-366, 613, -318, 542, 274, 161, -494, 275, -815, -933, 794, 143, -215, -699, 853, -993, 52, 64, 134, 865, -827, 931, 414, 784, 557, -827, -809, -812, 642, 642, -376, 455, 806, 696, -541, 106, -516, -849, 620, 881, 28, -488]),([-679, -51, -535, 159, -959, 230, 450, -254, 316, 454, -855, 771, -737, 175, -165, 39, 964, -433, 382, -443, 439, -243, 802, 270, 265, 693, -30, 284, 248, -332, -864, 235, -458, -112, 830, 990, -240, 186], [186, -240, 990, 830, -112, -458, 235, -864, -332, 248, 284, -30, 693, 265, 270, 802, -243, 439, -443, 382, -433, 964, 39, -165, 175, -737, 771, -855, 454, 316, -254, 450, 230, -959, 159, -535, -51, -679]),([-458, -997, -202, -241, 118, -530, 522, -886, 826, -955, -584, 87, 30, -774, -563, 390, 570, -242, -832, 269, 478, 945, 898, -798, -29, -173, -106, 99, -524, -872], [-253, 186, 582, 14, -117, 736, -4, -324, 154, 50, 976, -968, -86, -976, 22, -140, -361, 156, 734, -586, -527, 785, -289, 247, -410, -791, -781, 41, -77, 875, 148, 976, 711, -146, 718, 377, -508, -448, 252, 248, 215, -60, -141, 807, 778, -372, -644, -672, -376]),([40, 831], [-431, -680]),([818, -313, 540, 453], [453, 540, -313, 818]),([1, 2, 3, 4, 5, 4, 3, 2, 1], [1, 2, 3, 4, 5, 4, 3, 2, 1]),([327, 974, -728, -181, 59, -370, 196, -261, 84, 57], [57, 84, -261, 661, -370, 59, -181, -728, 974, 327]),([-941, 33, 45], [33, 45, -941]),([887, -75, -565, -8, -268, 195, 775, 842, -725, 534, -850, 791, -147, 330, -340, 403, 433, 212, -848, -379, 123, -184, -461, -294, -197, -586, 120, 525, -600, 978, 75, -655, 353, 348, -397, 757], [757, -397, 348, 353, -655, 75, 978, -600, 525, 120, -586, -197, -294, -461, -184, 123, -379, -848, 212, 433, 403, -340, 330, -147, 791, -850, 534, -725, 842, 775, 195, -268, -8, -565, -75, 887]),([732, -774, 593, 347, -773, -73, -182, -554, 768, -741, 4, -491, -299, 358, -619, -680, 520, -624, -59, 843, 139, -506, 280, -986, -143, 598, -236, -987, -287, -192, -680, -142, 449, -352, 823, -92, 221, -808, -5], [-5, -808, 221, -92, 823, -352, 449, -142, -680, 674, -287, -987, -236, 598, -143, -986, -745, -506, 139, 843, -59, -624, 949, -680, -619, 358, -299, -491, 4, -741, -253, -554, -182, -73, -773, 347, 593, -774, 732]),([766, -315, -466, 110, -645, 527, -662, 733, 995, -882, 305, 324, -135, 644, 955, -790, 903, 564, -737, 138, 814, -896, 878, 21, 523, 845, 822, 54, 601, 603, -205, 117, 15, 183, 478, 466, -310, 454, -287, -819, 335, -504, 965, -312, -855], [-855, -312, 965, -504, 335, -819, -287, 454, -310, 466, 478, 183, 15, 117, -205, 603, 601, 54, 822, 845, 523, 21, 878, -896, 814, 138, -737, 564, 903, -790, 955, 644, -135, 324, 305, -882, 995, 733, -662, 527, -645, 110, -466, -315, 766]),([-140, 67, -59, 850, 17, -795, -836, -373, 67, -941, 689, 42, -371, -549, 577, -136, 54, 359, 777, -425, -73, 875, -543, 114, -619, -185, -345, -478, -484, 289, 375, -59, -605, -907, -348, 995, -516, 598, -476, -209, 795, 359, 652, -789, -364, -218, -704, 968, 257], [-140, 67, -59, 850, 17, -795, -836, -373, 67, -941, 689, 42, -371, -549, 577, -136, 54, 359, 777, -425, -73, 875, -543, 114, -619, -185, -345, -478, -484, 289, 375, -59, -605, -907, -348, 995, -516, 598, -476, -209, 795, 359, 652, -789, -364, -218, -704, 968, 257]),([927, 462, -975, 228, 199, -274, -100, 858, -227, 636, 782, -257, 109, 738, -73], [-73, 738, 736, -257, 782, 636, 923, 858, -100, -274, 199, 228, -975, 462, 927]),([726, -726, -861, -680], [-680, 155, 891, -372]),([-124, 4, -469, 117, -510, 828, 832, -63, 232], [232, -63, 950, 828, -510, 117, 596, 4, -124]),([], []),([0], [1]),([-838, -394, -368, -559, 386, -351, -198, 943, -216, -950, -254, 539, 210, -943, 323, 93, -909, -172, 95, -945, 483, 631, 2, -28, 794], [-838, -394, -368, -559, 386, -351, -198, 943, -216, -950, -254, 539, 210, -943, 323, 93, -909, -172, 95, -945, 483, 631, 2, -28, 794]),([254, 837, -870, 990, -265, 447, 19, -767, -859], [-859, -767, 19, 447, -265, 990, -870, 837, 254]),([1], [1]),([], []),([-172, 668, -973, 921, -995, 263, -852, 960, 442, -540, -104, -955, -725, 519, -745, -116, -173, 765, -82, 156, -150, 638, -383, 315, 818, -157, 113, -813, -654, -121, 501, -905, -369], [-369, -905, 501, -121, -654, -813, 774, -157, 818, 315, -383, 638, -150, 156, -82, 765, -173, -116, -745, 519, -725, -955, -104, -540, 617, 960, -852, 263, -995, 921, -973, 668, 44]),([-641, 154, -916, -88, 937, 357, 248, -990, 771, 568, 209, -251, -576, -364, 729, 928, -473, -611, -231, 232, -805, 713, 421, 844, 540, -764, -355, -266, -952, -708, 536, 291, -941], [-941, 291, 536, -708, -952, -266, -355, -764, 540, 844, 421, 713, -805, 232, -231, -611, -473, 928, 729, -364, -576, -251, 209, 568, 771, -990, 248, 357, 937, -88, -916, 154, -641]),([905, 217, 454, 121, -18, -157, 68, -770, 755, 620, -572, 912, 455, -436, -227, 928], [928, -227, -436, 455, 912, -572, 620, 755, -770, 68, -157, -18, 121, 454, 217, 905]),([-674, -987, 478, 197, 333, 684, 539, 295, 420, 915, 513, -966, -50, 726, -134, 29, -361, -574, 563, 698, 660, 706], [706, 660, 698, 563, -574, -361, 29, -134, 726, -50, -966, 513, 915, 420, 295, 539, 684, 333, 197, 478, -987, -674]),([-945, -353, 955, 0, 409, 202, 634, -979, -198], [-198, -979, 634, 202, 409, 0, 955, -353, -945]),([0, 7], [7, 0]),([749, -870, -443, 403, 829, 854, -877, -315, -783, 133, 573, 592, 311, 522], [522, 311, 592, 926, 133, -783, -315, -877, 947, 829, 403, -443, -335, 749]),([-44], [16]),([-51, -832, 868, 157, -406, -814, 683, -119, 411, -163, -926, 484, 115, 750, 263, -348, 971, 416, -562, 66, -752, 760, 256, 24, 36, 780, 369, 547, -440, 771, -251], [-251, 771, -440, 547, 369, 780, 36, 24, 256, 217, -752, 66, -562, 416, 134, -348, 263, 654, 115, 484, -926, -163, 411, -119, 683, -814, -406, 157, 868, -832, -51]),([45, -941, 33], [33, 45, -941]),([486, 439, 526, 456, -256, -467, -697, 823, 301, 92, 634, 472, 741, -946, -747, -257, 576, -419, 783, -84, 873, 987, -750, -987, 397, -300, -815, 588, -700, 373, 592, 820, -367, -620, -870, -291, 729, 818, -32, -675, 74, -882], [-882, 74, -675, -32, 818, 729, -291, -870, -620, -367, 820, 592, 373, -700, 588, -815, -300, 397, -987, -750, 987, 873, -84, 783, -419, 576, -257, -747, -946, 741, 472, 634, 92, 301, 823, -697, -467, -256, 456, 526, 439, 486]),([-923, -493, -15, -148, -625, 638, 469, -195, -981, -677, -349, 782, -901, 615], [615, -901, 782, -349, -677, -981, -195, 469, 638, -625, -148, -15, -493, -923]),([-658, -918, 933, 573, 921, 380, 713, 143, -116, 992, -675, -587, 87, 400, 762, -295, 105, 340, -606, -627, -702, -424, 393, -444, 693, -415, -42, -277, 602, 315, 185, 544, -773, -413, -427, -441], [-441, -427, -413, -773, 544, 185, 315, 602, -277, -42, -415, 693, -444, 393, -424, -702, -627, -606, 340, 105, -295, 762, 400, 87, -587, -675, 992, -116, 143, 713, 380, 921, 573, 933, -918, -658]),([354, -742, 589, -944, 584, -791, 83, 570, 357, -662, -412, 203, 167, -26, -224, 211, 40, 382], [382, 40, 211, -224, -26, 167, 203, -412, -662, 357, 570, 83, -791, 584, -944, 589, -742, 354]),([-941, 45, 33], [33, 45, -941]),([-539, -975, -516, 964, 564, -63, -131, -71, 523, 289, -799, 178, 654, -476, 795, 400, -458, -310, -60, -884, 805, 542, -656, -254, -121, 930, -360, 389, 701, -431, 676, 837, -404, 30, 547, 851, 934, -26, 665, -232, -166, -85, 929, 521, -146, -379, 813], [-539, -975, -516, 964, 564, -63, -131, -71, 523, 289, -799, 178, 654, -476, 795, 400, -458, -310, -60, -884, 805, 542, -656, -254, -121, 930, -360, 389, 701, -431, 676, 837, -404, 30, 547, 851, 934, -26, 665, -232, -166, -85, 929, 521, -146, -379, 813]),([530, 94, 476, 909, 586, -72, 630, -239, -821, 761, -49, 974, -657, -358, 999, -492, 908, -481, -14, 572, -158, -15, -446, 940, -582, 852, 874], [530, 94, 476, 909, 586, -72, 630, -239, -821, 761, -49, 974, -657, -358, 999, -492, 908, -481, -14, 572, -158, -15, -446, 940, -582, 852, 874]),([796, -744, 105, -391, 193, 441, 955, 878, -599, -492, 664, 118, -874, -778, 898, -653, -702, 964, -268], [-684, -306, -807, 355, -879, -759, 39, -92, -214, 252, 923, -6, 45, 486, -552, 678, 380, -205, 272, -646]),([-349, 398, 50, -306, 990, 957, 905, -217, -420, 726, -582, 179, -413, -863, 936, -567, 745, -145, 846, 274, -746, -834, -784, -370, 424, 32, -306, 393], [393, -306, 32, 424, -370, -784, -834, -746, 274, 846, -145, 745, -567, 936, -863, -413, 179, -582, 726, -420, -217, 905, 957, 990, -306, 50, 398, -349]),([-744, -306, -45, 421, 507, -208, -692, 876, -901, -133, -606, 566, -329, 503, 770, -556, 566, 377, 463, -275, 633, 754, 940, 37, 905, 837, -866, 427, 980, -769, -143, -993, 526, -889, 760, -356, 541, 822, 229], [229, 822, 541, -356, 760, -889, 526, -993, -143, -769, 980, 427, -866, 837, 905, 37, 940, 754, 633, -275, 463, 377, 566, -556, 770, 503, -329, 566, -606, -133, -901, 876, -692, -208, 507, 421, -45, -306, -744]),([379, -564, 648, 266, -917, 912, 410, -322, 114, -154, -559, -798, -123, -374, 565, 314, -97, 436, -401, 273, 983, 629, 284, 386, -352, -269, 641, -627, 889, 50], [693, -939, 674, 948, 816, 36, 601, -562, -417, 588, 325, 517, -785]),([-579, 343, 984, 957, 205, -322, -720, -949, -646, -628, 11, 59, 8, -392, 505, -57, 519, -621, 143, 161, 121, -627, -579, -2, -998, 705, -204], [-204, 705, -998, -2, -579, -627, 121, 161, 143, -621, 519, -57, 505, -392, 8, 59, 11, -628, -646, -949, -720, -322, 205, 957, 984, 343, -579]),([456, 456], [456, 456]),([45, 33, -941], [33, 45, -941]),([79, 69, 19, -759, 844, -847, -217, 436, -70, -230, 888, 144, -310, -696, 953, -799, 486], [486, -799, 953, -696, -310, 144, 888, -230, -70, 436, -217, -847, 844, -759, 19, 69, 79]),([-254, -348, -57, -146, -324, 458, -621, 880, 97, -107, 128, -797, 817, 748, 768, 360, -364, 942, 998, -734, 443, 830, 827, -696, 783, -936, -504], [-504, -936, 783, -696, 827, 830, 443, -734, 998, 942, -364, 26, 768, 748, 817, -797, 128, -56, 453, 880, -621, 458, -324, -146, -57, -348, -254]),([45, 99, 0, 12, 44, 7, 7, 44, 12, 0, 99, 45], [45, 99, 0, 12, 44, 7, 7, 44, 12, 0, 99, 45]),([-597, -318], [-318, -597]),([687, -843, -770, -149, -518, 877, 737, 937, 581, -393, 124, 477, 837, -476, -641, 277], [444, -592, -328, -201, 551, -828, -709, 587, 428, -861, -549, 354]),([427, 274, -115, -589, -512, -906, 132, -720, 841, 558, 614, 123, -774, -423, -149, 705, 763, 672, -499, 950, -620, 204, -874, -900, 822, -766, -542, -52, -542, -804, -46, -201, 297, -266, -596, 551, 944, -5, 135, -746, 818, 906, -141, -266, 66], [427, 274, -115, -589, -512, -906, 132, -720, 841, 558, 614, 123, -774, -423, -149, 705, 763, 672, -499, 950, -620, 204, -874, -900, 822, -766, -542, -52, -542, -804, -46, -201, 297, -266, -596, 551, 944, -5, 135, -746, 818, 906, -141, -266, 66]),([-633, -433], [-633, -433]),([], []),([200, 31, -613, -294, 981, 911, -383, -195, 48, 368, -325, 295, 689, 570], [570, 689, 295, -325, 368, 48, -195, 100, 911, 981, -294, -613, 703, 787]),([-13], [-12]),([647, -695, 443, -712, 282, 969, -136, 321, 234, 115, -381, 553, 241, -16, 444, -267, 297, -82, -710, 545, -178, 559, 905, -560, -392, 80, -855, 879, 464, 361, 112, 801, 8, -428, -51, -407, -268, 50, -210, -565, 300, -562, -352, -427, -51, 298, -260, -165], [526, -219, 921, -773, 764, -630, -40, -2, 171, 490, -449, 962, -595, -618, 88, -919, 589, 766, 577, -238, 71, -781, -92, -728, 260, 261, 670, -597, 342, 227, -554, 399, 426, 99, -215, 982, -963, 712, -408, -30]),([34, 12], [34, 12]),([-394, 367, 989, 507, -212, -518], [-518, -212, 507, 989, 367, -394]),([1, 2, 1], [1, 2, 1]),([868, -271, -386, 380, -187, 590, -614, 460, -761, 939, -207, -152, -74, -918, -989, 744, 761, -973, -78, 635, 800, 434, 643, -813, 647, -872, 401, 258, 286, 580, -689, 702, -893, 807, 808, -317, 610, 914, 637, 67, -305, -748, 915, 467, 550], [550, 467, 915, -748, -305, 67, 637, 914, 610, -317, 808, 807, -893, 702, -689, 580, 286, 258, 401, -872, 647, -813, 643, 434, 800, 635, -78, -973, 761, 744, -989, -918, -74, -152, -207, 939, -761, 460, -614, 590, -187, 380, -386, -271, 868]),([-878, -404, 814, 60, 609, 624, -968, 375, 737, -538, 614, -119, 410, -232, -703, 613, -260, -346, -748, -942, 437, 109, 244, -587, 414, -304, 88, 461, -188, -338, 304, 754, -66, -653, -265, 402, 781], [781, 402, -265, -653, -66, 754, 304, -338, -188, 461, 88, -304, 414, -587, 244, 109, 437, -942, -748, -346, -260, 613, -703, -232, 410, -119, 614, -538, 737, 375, -968, 624, 609, 60, 814, -404, -878]),([-411, -159, 393, 760, 76, 883, 930, 925], [925, 720, 883, 76, 760, 162, -246, -411]),([849, -555, -335, -794, -78, 144, 227, -948, -329, 246, -621, 376, 71, 278, 159, -605, -650, 549, 854, 140, 817, -530, -748, 504, -454, 388, 902, 819, -280, -124, -48, -527, 569, 125, -984], [-566, -836, -865, -585, -146, 816, -768, 422, -214, 397, 344, -148, 514, 351, -967, -349, -908, -698, 212, -147, -130, -726, 702, -365, -200, -696, -675, 670, 646, -976, 434, 480, 258, -804, -371, 727, 655, 112, 485, 96, -47, 513, -777, -860, 908, -772, 748]),([5, 8], [5, 8]),([976, 35, 77, -453, -973, 8, -388, -688, 726, -856, -261, 354, 608, -938, -973], [-973, -938, 608, -168, -261, -856, 726, 182, -388, 783, -973, -453, 77, 35, 976]),([520, 230, 175, -13, 154, -60, 850, -45, 449], [143, -45, 850, -60, 154, -13, 175, 230, 556])]
outval = [False,False,True,False,True,False,False,False,False,False,True,True,False,True,True,True,True,True,True,True,True,False,False,True,False,True,True,False,False,False,False,False,False,False,True,True,False,False,True,True,False,False,True,False,True,False,False,False,False,True,False,False,True,True,True,False,True,True,True,True,True,False,False,False,False,True,True,True,True,True,False,False,False,True,True,False,True,True,False,True,False,True,True,False,False,False,True,False,False,False,False,True,True,True,True,False,False,False,False,False]

-- in this case the evolved function is the expected output
evolvedFunction :: [Int] -> [Int] -> OutputType
evolvedFunction xs ys = reverse xs == ys

-- compares the evolved output and truth for full sample
errors :: [InputType] -> [OutputType] -> [FitnessError] 
errors ins outs = [ ff i o | i <- ins | o <- outs]
    where
        ff (xs, ys) b
          | evolvedFunction xs ys == b = 0
          | otherwise                  = 1


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
quality = sum caseQuality

main = putStrLn $ "{\"quality\": " ++ show quality ++  ", \"cases\": " ++ show cases ++  ", \"caseQuality\": " ++ show caseQuality ++  "}"
