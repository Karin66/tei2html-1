% Classical Greek in PG Greek notation to my transcription.
% My notation is identical to Yannis Haralambous' notation.

@patterns 0 % normal mode

"[GR:"		1 "<GR>"
"[GR: "		1 "<GR>"

@patterns 2 % skip proofer comments in Greek

"]"		1 "]<GR>"

@patterns 1 % Greek transcription mode

"[*"		2 "</GR>[*"


"]"		0 "</GR>"
"\n\n"		0 "</GR>\n\n"


"a"		p "a"
"A"		p "A"
"a|"		p "a|"
"A|"		p "A|"
"a(|"		p "<a|"
"A(|"		p "<A|"
"a)|"		p ">a|"
"A)|"		p ">A|"
"a/|"		p "'a|"
"A/|"		p "'A|"
"a\\|"		p "`a|"
"A\\|"		p "`A|"
"a=|"		p "=a|"
"A=|"		p "=A|"
"a(/|"		p "<'a|"
"A(/|"		p "<'A|"
"a)/|"		p ">'a|"
"A)/|"		p ">'A|"
"a(\\|"		p "<`a|"
"A(\\|"		p "<`A|"
"a)\\|"		p ">`a|"
"A)\\|"		p ">`A|"
"a(=|"		p "<=a|"
"A(=|"		p "<=A|"
"a)=|"		p ">=a|"
"A)=|"		p ">=A|"
"a("		p "<a"
"A("		p "<A"
"a)"		p ">a"
"A)"		p ">A"
"a\\"		p "`a"
"A\\"		p "`A"
"a/"		p "'a"
"A/"		p "'A"
"a="		p "=a"
"A="		p "=A"
"a(/"		p "<'a"
"A(/"		p "<'A"
"a)/"		p ">'a"
"A)/"		p ">'A"
"a(\\"		p "<`a"
"A(\\"		p "<`A"
"a)\\"		p ">`a"
"A)\\"		p ">`A"
"a(="		p "<=a"
"A(="		p "<=A"
"a)="		p ">=a"
"A)="		p ">=A"

"b"		p "b"
"B"		p "B"

"g"		p "g"
"G"		p "G"

"d"		p "d"
"D"		p "D"

"e"		p "e"
"E"		p "E"
"e("		p "<e"
"E("		p "<E"
"e)"		p ">e"
"E)"		p ">E"
"e\\"		p "`e"
"E\\"		p "`E"
"e/"		p "'e"
"E/"		p "'E"
"e="		p "=e"
"E="		p "=E"
"e(/"		p "<'e"
"E(/"		p "<'E"
"e)/"		p ">'e"
"E)/"		p ">'E"
"e(\\"		p "<`e"
"E(\\"		p "<`E"
"e)\\"		p ">`e"
"E)\\"		p ">`E"
"e(="		p "<=e"
"E(="		p "<=E"
"e)="		p ">=e"
"E)="		p ">=E"

"z"		p "z"
"Z"		p "Z"

"h"		p "h"
"H"		p "H"
"h|"		p "h|"
"H|"		p "H|"
"h(|"		p "<h|"
"H(|"		p "<H|"
"h)|"		p ">h|"
"H)|"		p ">H|"
"h/|"		p "'h|"
"H/|"		p "'H|"
"h\\|"		p "`h|"
"H\\|"		p "`H|"
"h=|"		p "=h|"
"H=|"		p "=H|"
"h(/|"		p "<'h|"
"H(/|"		p "<'H|"
"h)/|"		p ">'h|"
"H)/|"		p ">'H|"
"h(\\|"		p "<`h|"
"H(\\|"		p "<`H|"
"h)\\|"		p ">`h|"
"H)\\|"		p ">`H|"
"h(=|"		p "<=h|"
"H(=|"		p "<=H|"
"h)=|"		p ">=h|"
"H)=|"		p ">=H|"
"h("		p "<h"
"H("		p "<H"
"h)"		p ">h"
"H)"		p ">H"
"h\\"		p "`h"
"H\\"		p "`H"
"h/"		p "'h"
"H/"		p "'H"
"h="		p "=h"
"H="		p "=H"
"h(/"		p "<'h"
"H(/"		p "<'H"
"h)/"		p ">'h"
"H)/"		p ">'H"
"h(\\"		p "<`h"
"H(\\"		p "<`H"
"h)\\"		p ">`h"
"H)\\"		p ">`H"
"h(="		p "<=h"
"H(="		p "<=H"
"h)="		p ">=h"
"H)="		p ">=H"

"q"		p "j"
"Q"		p "J"

"i"		p "i"
"I"		p "I"
"i("		p "<i"
"I("		p "<I"
"i)"		p ">i"
"I)"		p ">I"
"i\\"		p "`i"
"I\\"		p "`I"
"i/"		p "'i"
"I/"		p "'I"
"i="		p "=i"
"I="		p "=I"
"i(/"		p "<'i"
"I(/"		p "<'I"
"i)/"		p ">'i"
"I)/"		p ">'I"
"i(\\"		p "<`i"
"I(\\"		p "<`I"
"i)\\"		p ">`i"
"I)\\"		p ">`I"
"i(="		p "<=i"
"I(="		p "<=I"
"i)="		p ">=i"
"I)="		p ">=I"

"k"		p "k"
"K"		p "K"

"l"		p "l"
"L"		p "L"

"m"		p "m"
"M"		p "M"

"n"		p "n"
"N"		p "N"

"c"		p "x"
"C"		p "X"

"o"		p "o"
"O"		p "O"
"o("		p "<o"
"O("		p "<O"
"o)"		p ">o"
"O)"		p ">O"
"o\\"		p "`o"
"O\\"		p "`O"
"o/"		p "'o"
"O/"		p "'O"
"o="		p "=o"
"O="		p "=O"
"o(/"		p "<'o"
"O(/"		p "<'O"
"o)/"		p ">'o"
"O)/"		p ">'O"
"o(\\"		p "<`o"
"O(\\"		p "<`O"
"o)\\"		p ">`o"
"O)\\"		p ">`O"
"o(="		p "<=o"
"O(="		p "<=O"
"o)="		p ">=o"
"O)="		p ">=O"

"p"		p "p"
"P"		p "P"

"r"		p "r"
"R"		p "R"
"r("		p "<r"
"R("		p "<R"

"s"		p "s"
"S"		p "S"
"j"		p "c"

"t"		p "t"
"T"		p "T"

"u"		p "u"
"U"		p "U"
"u("		p "<u"
"U("		p "<U"
"u)"		p ">u"
"U)"		p ">U"
"u\\"		p "`u"
"U\\"		p "`U"
"u/"		p "'u"
"U/"		p "'U"
"u="		p "=u"
"U="		p "=U"
"u(/"		p "<'u"
"U(/"		p "<'U"
"u)/"		p ">'u"
"U)/"		p ">'U"
"u(\\"		p "<`u"
"U(\\"		p "<`U"
"u)\\"		p ">`u"
"U)\\"		p ">`U"
"u(="		p "<=u"
"U(="		p "<=U"
"u)="		p ">=u"
"U)="		p ">=U"

"f"		p "f"
"F"		p "F"

"x"		p "q"
"X"		p "Q"

"y"		p "y"
"Y"		p "Y"

"w"		p "w"
"W"		p "W"
"w|"		p "w|"
"W|"		p "W|"
"w(|"		p "<w|"
"W(|"		p "<W|"
"w)|"		p ">w|"
"W)|"		p ">W|"
"w/|"		p "'w|"
"W/|"		p "'W|"
"w\\|"		p "`w|"
"W\\|"		p "`W|"
"w=|"		p "=w|"
"W=|"		p "=W|"
"w(/|"		p "<'w|"
"W(/|"		p "<'W|"
"w)/|"		p ">'w|"
"W)/|"		p ">'W|"
"w(\\|"		p "<`w|"
"W(\\|"		p "<`W|"
"w)\\|"		p ">`w|"
"W)\\|"		p ">`W|"
"w(=|"		p "<=w|"
"W(=|"		p "<=W|"
"w)=|"		p ">=w|"
"W)=|"		p ">=W|"
"w("		p "<w"
"W("		p "<W"
"w)"		p ">w"
"W)"		p ">W"
"w\\"		p "`w"
"W\\"		p "`W"
"w/"		p "'w"
"W/"		p "'W"
"w="		p "=w"
"W="		p "=W"
"w(/"		p "<'w"
"W(/"		p "<'W"
"w)/"		p ">'w"
"W)/"		p ">'W"
"w(\\"		p "<`w"
"W(\\"		p "<`W"
"w)\\"		p ">`w"
"W)\\"		p ">`W"
"w(="		p "<=w"
"W(="		p "<=W"
"w)="		p ">=w"
"W)="		p ">=W"

%% special stuff

"[=a]"		p "\\=a"      
"[=A]"		p "\\=A"  

%% most likely mistakes for the "circumflex"

"[=e]"		p "\\=e"      
"[=E]"		p "\\=E"  
"[=i]"		p "\\=i"      
"[=I]"		p "\\=I"  
"[=h]"		p "\\=h"      
"[=H]"		p "\\=H"  
"[=o]"		p "\\=o"      
"[=O]"		p "\\=O"  
"[=u]"		p "\\=u"      
"[=U]"		p "\\=U"  
"[=w]"		p "\\=w"      
"[=W]"		p "\\=W"  


"v"		p "&digamma;"
"[f]"		p "&digamma;"
"[j]"		p "</GR>j<GR>";

%% warn for illegal characters

"V"         e "illegal character V"
"J"         e "illegal character C"
"["         e "illegal character ["

"("         e "stand alone ("
")"         e "stand alone )"
"/"         e "stand alone /"
"\\"        e "stand alone \\"
"+"         e "stand alone +"
"="         e "stand alone ="

@end
