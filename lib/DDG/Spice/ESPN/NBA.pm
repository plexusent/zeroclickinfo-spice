package DDG::Spice::ESPN::NBA;

use DDG::Spice;
use Time::localtime;

description "News and stats for NBA players";
name "ESPN NBA";
primary_example_queries "Dwyane Wade", "Kobe Bryant";
topics "entertainment", "special_interest";
category "reference";
code_url "https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/ESPN/NBA.pm";
attribution web => ['http://duckduckgo.com', 'DuckDuckGo'],
            twitter => ['http://twitter.com/duckduckgo', 'duckduckgo'];

my %players = (
  "alex abrines" => 2995702,
  "quincy acy" => 6576,
  "steven adams" => 2991235,
  "jeff adrien" => 4335,
  "arron afflalo" => 3187,
  "ronnie aguilar" => 6655,
  "blake ahearn" => 3402,
  "josh akognon" => 6656,
  "solomon alabi" => 4268,
  "furkan aldemir" => 6577,
  "cole aldrich" => 4267,
  "lamarcus aldridge" => 2983,
  "lavoy allen" => 6424,
  "ray allen" => 9,
  "ryan allen" => 6660,
  "tony allen" => 2367,
  "al-farouq aminu" => 4248,
  "lou amundson" => 3041,
  "chris andersen" => 1135,
  "alan anderson" => 6569,
  "james anderson" => 4242,
  "kevin anderson" => 2282360,
  "ryan anderson" => 3412,
  "giannis antetokounmpo" => 3032977,
  "carmelo anthony" => 1975,
  "joel anthony" => 3247,
  "pero antic" => 2585616,
  "trevor ariza" => 2426,
  "darrell arthur" => 3413,
  "omer asik" => 3414,
  "d.j. augustin" => 3415,
  "gustavo ayon" => 6546,
  "jeff ayres" => 4008,
  "kelenna azubuike" => 2821,
  "luke babbitt" => 4250,
  "leandro barbosa" => 2166,
  "j.j. barea" => 3055,
  "andrea bargnani" => 2987,
  "harrison barnes" => 6578,
  "matt barnes" => 1765,
  "earl barron" => 2477,
  "will barton" => 6579,
  "brandon bass" => 2745,
  "shane battier" => 976,
  "nicolas batum" => 3416,
  "jerryd bayless" => 3417,
  "aron baynes" => 2968439,
  "kent bazemore" => 6637,
  "bradley beal" => 6580,
  "michael beasley" => 3418,
  "rodrigue beaubois" => 3963,
  "marco belinelli" => 3190,
  "oscar bellfield" => 6645,
  "anthony bennett" => 2991473,
  "keith benson" => 6425,
  "patrick beverley" => 3964,
  "andris biedrins" => 2427,
  "chauncey billups" => 63,
  "bismack biyombo" => 6427,
  "dejuan blair" => 3965,
  "steve blake" => 1994,
  "marqus blakely" => 4323,
  "andray blatche" => 2746,
  "eric bledsoe" => 4238,
  "eric boateng" => 4308,
  "keith bogans" => 1995,
  "andrew bogut" => 2747,
  "matt bonner" => 1996,
  "trevor booker" => 4270,
  "carlos boozer" => 1703,
  "chris bosh" => 1977,
  "avery bradley" => 4240,
  "elton brand" => 91,
  "corey brewer" => 3191,
  "ronnie brewer" => 2991,
  "aaron brooks" => 3192,
  "marshon brooks" => 6428,
  "carlon brown" => 6650,
  "derrick brown" => 3967,
  "kwame brown" => 981,
  "lorenzo brown" => 2528787,
  "shannon brown" => 2992,
  "kobe bryant" => 110,
  "chase budinger" => 3968,
  "reggie bullock" => 2528779,
  "trey burke" => 2579260,
  "alec burks" => 6429,
  "brian butch" => 4234,
  "caron butler" => 1705,
  "jimmy butler" => 6430,
  "dwight buycks" => 6503,
  "andrew bynum" => 2748,
  "will bynum" => 2816,
  "nick calathes" => 3969,
  "jose calderon" => 2806,
  "kentavious caldwell-pope" => 2581018,
  "marcus camby" => 125,
  "isaiah canaan" => 2490589,
  "rodney carney" => 2995,
  "demarre carroll" => 3970,
  "matt carroll" => 2211,
  "anthony carter" => 137,
  "vince carter" => 136,
  "michael carter-williams" => 2596108,
  "omri casspi" => 3554,
  "mario chalmers" => 3419,
  "tyson chandler" => 984,
  "wilson chandler" => 3194,
  "josh childress" => 2373,
  "dionte christmas" => 4025,
  "earl clark" => 3971,
  "ian clark" => 2489785,
  "victor claver" => 3972,
  "norris cole" => 6431,
  "jason collins" => 987,
  "darren collison" => 3973,
  "nick collison" => 1978,
  "mike conley" => 3195,
  "will conroy" => 2827,
  "brian cook" => 1998,
  "daequan cook" => 3196,
  "chris copeland" => 6635,
  "demarcus cousins" => 4258,
  "robert covington" => 2490620,
  "allen crabbe" => 2531210,
  "jamal crawford" => 165,
  "jordan crawford" => 4243,
  "jae crowder" => 6581,
  "dante cunningham" => 3974,
  "jared cunningham" => 6582,
  "eddy curry" => 990,
  "seth curry" => 2326307,
  "stephen curry" => 3975,
  "samuel dalembert" => 991,
  "marquis daniels" => 2200,
  "luigi datome" => 2585629,
  "anthony davis" => 6583,
  "ed davis" => 4259,
  "glen davis" => 3200,
  "austin daye" => 3976,
  "nando de colo" => 3977,
  "dewayne dedmon" => 2580913,
  "carlos delfino" => 1999,
  "luol deng" => 2429,
  "stephen dennis" => 4326,
  "justin dentmon" => 6483,
  "demar derozan" => 3978,
  "boris diaw" => 2167,
  "gorgui dieng" => 2534781,
  "ike diogu" => 2750,
  "desagana diop" => 992,
  "keyon dooling" => 209,
  "toney douglas" => 3979,
  "chris douglas-roberts" => 3422,
  "micah downs" => 2202074,
  "robert dozier" => 3980,
  "goran dragic" => 3423,
  "larry drew ii" => 2325495,
  "andre drummond" => 6585,
  "bojan dubljevic" => 3032985,
  "jared dudley" => 3201,
  "chris duhon" => 2377,
  "tim duncan" => 215,
  "michael dunigan" => 6662,
  "mike dunleavy" => 1708,
  "ronald dupree" => 2214,
  "kevin durant" => 3202,
  "devin ebanks" => 4256,
  "wayne ellington" => 3981,
  "monta ellis" => 2751,
  "andre emmett" => 2431,
  "kim english" => 6586,
  "james ennis" => 2579321,
  "micheal eric" => 6640,
  "jeremy evans" => 4295,
  "reggie evans" => 1828,
  "tyreke evans" => 3983,
  "festus ezeli" => 6587,
  "kenneth faried" => 6433,
  "jordan farmar" => 3002,
  "mustapha farrakhan" => 2282197,
  "vitor faverani" => 3046453,
  "derrick favors" => 4257,
  "carrick felix" => 2531185,
  "raymond felton" => 2753,
  "kyrylo fesenko" => 3205,
  "landry fields" => 4274,
  "derek fisher" => 246,
  "jonny flynn" => 3985,
  "kyle fogg" => 6651,
  "gary forbes" => 4312,
  "evan fournier" => 6588,
  "randy foye" => 3003,
  "jamaal franklin" => 2528356,
  "jimmer fredette" => 6434,
  "joel freeland" => 3004,
  "channing frye" => 2754,
  "sundiata gaines" => 4224,
  "danilo gallinari" => 3428,
  "francisco garcia" => 2755,
  "kevin garnett" => 261,
  "diante garrett" => 6663,
  "marc gasol" => 3206,
  "pau gasol" => 996,
  "rudy gay" => 3005,
  "alonzo gee" => 4232,
  "mickael gelabale" => 2756,
  "paul george" => 4251,
  "daniel gibson" => 3006,
  "taj gibson" => 3986,
  "trey gilder" => 4021,
  "eddie gill" => 270,
  "manu ginobili" => 272,
  "mickell gladness" => 4329,
  "rudy gobert" => 3032976,
  "ryan gomes" => 2757,
  "drew gooden" => 1711,
  "archie goodwin" => 2991281,
  "ben gordon" => 2381,
  "eric gordon" => 3431,
  "marcin gortat" => 2758,
  "andrew goudelock" => 6435,
  "lance goulbourne" => 6652,
  "danny granger" => 2760,
  "aaron gray" => 3207,
  "steven gray" => 6649,
  "danny green" => 3988,
  "draymond green" => 6589,
  "gerald green" => 2761,
  "jeff green" => 3209,
  "willie green" => 2004,
  "orien greene" => 2762,
  "blake griffin" => 3989,
  "eric griffin" => 2528646,
  "hamed haddadi" => 3478,
  "jordan hamilton" => 6436,
  "justin hamilton" => 6590,
  "richard hamilton" => 294,
  "ben hansbrough" => 6657,
  "tyler hansbrough" => 3991,
  "luke harangody" => 4276,
  "tim hardaway jr." => 2528210,
  "james harden" => 3992,
  "james harden" => 3992,
  "maurice harkless" => 6591,
  "demonte harper" => 2284504,
  "justin harper" => 6438,
  "josh harrellson" => 6439,
  "al harrington" => 308,
  "devin harris" => 2382,
  "elias harris" => 2489660,
  "mike harris" => 3081,
  "terrel harris" => 6490,
  "tobias harris" => 6440,
  "udonis haslem" => 2184,
  "spencer hawes" => 3211,
  "chuck hayes" => 2834,
  "gordon hayward" => 4249,
  "lazar hayward" => 4277,
  "brendan haywood" => 1000,
  "gerald henderson" => 3993,
  "jordan henriquez" => 2488823,
  "xavier henry" => 4241,
  "john henson" => 6592,
  "roy hibbert" => 3436,
  "j.j. hickson" => 3437,
  "cory higgins" => 6544,
  "nenê hilario" => 1713,
  "george hill" => 3438,
  "grant hill" => 336,
  "jordan hill" => 3994,
  "solomon hill" => 2488958,
  "kirk hinrich" => 1981,
  "jrue holiday" => 3995,
  "justin holiday" => 2284101,
  "ryan hollins" => 3008,
  "tyler honeycutt" => 6441,
  "al horford" => 3213,
  "dwight howard" => 2384,
  "josh howard" => 2006,
  "juwan howard" => 351,
  "richard howell" => 2488675,
  "kris humphries" => 2433,
  "serge ibaka" => 3439,
  "andre iguodala" => 2386,
  "ersan ilyasova" => 2767,
  "kyrie irving" => 6442,
  "royal ivey" => 2387,
  "jarrett jack" => 2768,
  "darnell jackson" => 3440,
  "pierre jackson" => 2578204,
  "reggie jackson" => 6443,
  "stephen jackson" => 378,
  "bernard james" => 6593,
  "damion james" => 4252,
  "lebron james" => 1966,
  "mike james" => 1051,
  "antawn jamison" => 385,
  "marko jaric" => 387,
  "livio jean-charles" => 3033028,
  "othyus jeffers" => 4231,
  "al jefferson" => 2389,
  "richard jefferson" => 1006,
  "jared jeffries" => 1717,
  "charles jenkins" => 6444,
  "john jenkins" => 6594,
  "brandon jennings" => 3997,
  "jonas jerebko" => 3998,
  "grant jerrett" => 2991009,
  "amir johnson" => 2769,
  "armon johnson" => 4279,
  "carldell johnson" => 6484,
  "chris johnson" => 4400,
  "chris johnson" => 2325975,
  "ivan johnson" => 6534,
  "jajuan johnson" => 6445,
  "james johnson" => 3999,
  "joe johnson" => 1007,
  "orlando johnson" => 6595,
  "wesley johnson" => 4247,
  "darius johnson-odom" => 6596,
  "cameron jones" => 6494,
  "dahntay jones" => 2008,
  "dequan jones" => 2325490,
  "dominique jones" => 4246,
  "dwayne jones" => 2819,
  "james jones" => 2009,
  "kevin jones" => 2326257,
  "perry jones" => 6598,
  "solomon jones" => 3010,
  "terrence jones" => 6597,
  "deandre jordan" => 3442,
  "jerome jordan" => 4280,
  "cory joseph" => 6446,
  "kris joseph" => 6599,
  "chris kaman" => 1982,
  "enes kanter" => 6447,
  "sergey karasev" => 2959745,
  "coby karl" => 3251,
  "arsalan kazemi" => 2489572,
  "ryan kelly" => 2488651,
  "d.j. kennedy" => 6574,
  "d.j. kennedy" => 6574,
  "jason kidd" => 429,
  "michael kidd-gilchrist" => 6601,
  "tarence kinsey" => 3045,
  "andrei kirilenko" => 434,
  "linas kleiza" => 2770,
  "brandon knight" => 6448,
  "kyle korver" => 2011,
  "kosta koufos" => 3444,
  "viacheslav kravtsov" => 6636,
  "rob kurz" => 3837,
  "doron lamb" => 6604,
  "jeremy lamb" => 6603,
  "carl landry" => 3217,
  "marcus landry" => 4024,
  "shane larkin" => 2596158,
  "dallas lauderdale" => 2282751,
  "joffrey lauvergne" => 2959753,
  "ty lawson" => 4000,
  "ricky ledo" => 2991143,
  "courtney lee" => 3445,
  "david lee" => 2772,
  "malcolm lee" => 6449,
  "alex len" => 2596107,
  "kawhi leonard" => 6450,
  "meyers leonard" => 6605,
  "c.j. leslie" => 2528788,
  "travis leslie" => 6451,
  "jon leuer" => 6452,
  "rashard lewis" => 469,
  "deandre liggins" => 6453,
  "damian lillard" => 6606,
  "jeremy lin" => 4299,
  "shaun livingston" => 2393,
  "trent lockett" => 2488969,
  "brook lopez" => 3448,
  "robin lopez" => 3447,
  "kevin love" => 3449,
  "kyle lowry" => 3012,
  "john lucas" => 2866,
  "scott machado" => 6644,
  "shelvin mack" => 6454,
  "corey maggette" => 497,
  "ian mahinmi" => 2774,
  "shawn marion" => 510,
  "kendall marshall" => 6607,
  "cartier martin" => 3930,
  "kenyon martin" => 515,
  "kevin martin" => 2394,
  "roger mason jr." => 1721,
  "wesley matthews" => 4032,
  "jason maxiell" => 2775,
  "eric maynor" => 4001,
  "o.j. mayo" => 3450,
  "james mays" => 3849,
  "luc richard mbah a moute" => 3451,
  "ray mccallum" => 2528447,
  "c.j. mccollum" => 2490149,
  "richard mcconnell" => 2284647,
  "javale mcgee" => 3452,
  "tracy mcgrady" => 532,
  "dominic mcguire" => 3246,
  "ben mclemore" => 2578213,
  "jerel mcneal" => 4158,
  "josh mcroberts" => 3220,
  "jodie meeks" => 4003,
  "gal mekel" => 4218,
  "fab melo" => 6608,
  "khris middleton" => 6609,
  "c.j. miles" => 2778,
  "darko milicic" => 2171,
  "andre miller" => 557,
  "darius miller" => 6610,
  "mike miller" => 558,
  "quincy miller" => 6611,
  "patty mills" => 4004,
  "paul millsap" => 3015,
  "tony mitchell" => 2489010,
  "tony mitchell" => 2583664,
  "nazr mohammed" => 568,
  "greg monroe" => 4260,
  "e'twaun moore" => 6460,
  "etwaun moore" => 6460,
  "carlos morais" => 3070169,
  "darius morris" => 6463,
  "marcus morris" => 6462,
  "markieff morris" => 6461,
  "adam morrison" => 3016,
  "anthony morrow" => 3474,
  "donatas motiejunas" => 6464,
  "arnett moultrie" => 6612,
  "timofey mozgov" => 4298,
  "ismail muhammad" => 6536,
  "shabazz muhammad" => 2993875,
  "byron mullens" => 4005,
  "erik murphy" => 2489021,
  "kevin murphy" => 6613,
  "troy murphy" => 1013,
  "ronald murray" => 1777,
  "toure' murry" => 2327107,
  "toure murry" => 2327107,
  "steve nash" => 592,
  "hamady ndiaye" => 4282,
  "gary neal" => 4300,
  "nemanja nedovic" => 2959736,
  "jameer nelson" => 2439,
  "reeves nelson" => 6642,
  "raul neto" => 2968361,
  "luke nevill" => 4162,
  "andrew nicholson" => 6614,
  "joakim noah" => 3224,
  "nerlens noel" => 2991280,
  "lucas nogueira" => 3032980,
  "steve novak" => 3018,
  "dirk nowitzki" => 609,
  "jermaine o'neal" => 615,
  "jermaine oneal" => 615,
  "kyle o'quinn" => 6615,
  "kyle oquinn" => 6615,
  "greg oden" => 3225,
  "lamar odom" => 617,
  "tim ohlbrecht" => 2308999,
  "emeka okafor" => 2399,
  "victor oladipo" => 2527963,
  "kelly olynyk" => 2489663,
  "arinze onuaku" => 2202117,
  "daniel orton" => 4263,
  "romero osby" => 2327632,
  "travis outlaw" => 2015,
  "zaza pachulia" => 2016,
  "jannero pargo" => 1821,
  "jeremy pargo" => 6497,
  "tony parker" => 1015,
  "chandler parsons" => 6466,
  "patrick patterson" => 4264,
  "chris paul" => 2779,
  "sasha pavlovic" => 2172,
  "nikola pekovic" => 3453,
  "kendrick perkins" => 2018,
  "johan petro" => 2780,
  "paul pierce" => 662,
  "mickael pietrus" => 2173,
  "dexter pittman" => 4283,
  "trent plaisted" => 3454,
  "mason plumlee" => 2488653,
  "miles plumlee" => 6616,
  "quincy pondexter" => 4253,
  "otto porter jr." => 2594922,
  "josh powell" => 2197,
  "phil pressey" => 2530722,
  "a.j. price" => 4010,
  "ronnie price" => 2807,
  "pablo prigioni" => 4182,
  "tayshaun prince" => 1724,
  "joel przybilla" => 682,
  "chris quinn" => 3046,
  "vladimir radmanovic" => 1016,
  "miroslav raduljica" => 3047256,
  "anthony randolph" => 3455,
  "shavlik randolph" => 2810,
  "zach randolph" => 1017,
  "andy rautins" => 4285,
  "j.j. redick" => 3024,
  "willie reed" => 2326015,
  "glen rice jr." => 2488660,
  "jason richardson" => 1018,
  "quentin richardson" => 703,
  "luke ridnour" => 1985,
  "austin rivers" => 6617,
  "andre roberson" => 2530596,
  "brian roberts" => 6641,
  "nate robinson" => 2782,
  "thomas robinson" => 6618,
  "rajon rondo" => 3026,
  "derrick rose" => 3456,
  "terrence ross" => 6619,
  "brandon roy" => 3027,
  "ricky rubio" => 4011,
  "brandon rush" => 3457,
  "robert sacre" => 6620,
  "john salmons" => 1726,
  "samardo samuels" => 4304,
  "larry sanders" => 4265,
  "dennis schroeder" => 3032979,
  "luis scola" => 1781,
  "carleton scott" => 6648,
  "mike scott" => 6622,
  "devin searcy" => 6659,
  "thabo sefolosha" => 3028,
  "josh selby" => 6467,
  "kevin seraphin" => 4289,
  "ramon sessions" => 3231,
  "tornike shengelia" => 6623,
  "iman shumpert" => 6468,
  "john shurna" => 6646,
  "alexey shved" => 3882,
  "henry sims" => 6647,
  "kyle singler" => 6469,
  "chris singleton" => 6470,
  "peyton siva" => 2488706,
  "donald sloan" => 4303,
  "chris smith" => 6639,
  "greg smith" => 6530,
  "ish smith" => 4305,
  "j.r. smith" => 2444,
  "jamar smith" => 3118,
  "jason smith" => 3232,
  "josh smith" => 2411,
  "nolan smith" => 6471,
  "tony snell" => 2528353,
  "greg somogyi" => 6643,
  "james southerland" => 2488749,
  "marreese speights" => 3460,
  "tiago splitter" => 3233,
  "jerry stackhouse" => 802,
  "lance stephenson" => 4244,
  "deshawn stevenson" => 808,
  "greg stiemsma" => 4235,
  "julyan stone" => 6543,
  "amar'e stoudemire" => 1727,
  "amare stoudemire" => 1727,
  "rodney stuckey" => 3235,
  "jared sullinger" => 6624,
  "dajuan summers" => 4012,
  "jeffery taylor" => 6156,
  "jermaine taylor" => 4014,
  "tyshawn taylor" => 6625,
  "jeff teague" => 4015,
  "marquis teague" => 6626,
  "mirza teletovic" => 4385,
  "sebastian telfair" => 2417,
  "garrett temple" => 4023,
  "jason terry" => 841,
  "hasheem thabeet" => 4016,
  "deshaun thomas" => 2528235,
  "isaiah thomas" => 6472,
  "kurt thomas" => 846,
  "lance thomas" => 6485,
  "malcolm thomas" => 6511,
  "tyrus thomas" => 3032,
  "hollis thompson" => 6634,
  "jason thompson" => 3462,
  "klay thompson" => 6475,
  "mychel thompson" => 6523,
  "tristan thompson" => 6474,
  "hank thorns" => 2282204,
  "marcus thornton" => 4017,
  "janis timma" => 3037804,
  "jamaal tinsley" => 1024,
  "anthony tolliver" => 3276,
  "alando tucker" => 3238,
  "p.j. tucker" => 3033,
  "ronny turiaf" => 2789,
  "hedo turkoglu" => 862,
  "evan turner" => 4239,
  "jeremy tyler" => 6476,
  "ekpe udoh" => 4261,
  "beno udrih" => 2448,
  "ben uzoh" => 4296,
  "jonas valanciunas" => 6477,
  "anderson varejao" => 2419,
  "jarvis varnado" => 4266,
  "greivis vasquez" => 4291,
  "jan vesely" => 4165,
  "charlie villanueva" => 2792,
  "nikola vucevic" => 6478,
  "dwyane wade" => 1987,
  "dion waiters" => 6628,
  "kemba walker" => 6479,
  "john wall" => 4237,
  "gerald wallace" => 1026,
  "rasheed wallace" => 883,
  "luke walton" => 2027,
  "hakim warrick" => 2794,
  "c.j. watson" => 3277,
  "earl watson" => 1027,
  "maalik wayns" => 6638,
  "kyle weaver" => 3466,
  "martell webster" => 2795,
  "david west" => 2177,
  "delonte west" => 2422,
  "russell westbrook" => 3468,
  "d.j. white" => 3469,
  "james white" => 3037,
  "royce white" => 6629,
  "chris wilcox" => 1731,
  "tyler wilkerson" => 2233314,
  "damien wilkins" => 2506,
  "deron williams" => 2798,
  "derrick williams" => 6480,
  "louis williams" => 2799,
  "marvin williams" => 2797,
  "mo williams" => 2178,
  "reggie williams" => 4229,
  "shawne williams" => 3038,
  "terrence williams" => 4019,
  "wesley witherspoon" => 2326505,
  "jeff withey" => 2333797,
  "nate wolters" => 2491079,
  "metta world peace" => 25,
  "brandan wright" => 3242,
  "chris wright" => 6501,
  "chris wright" => 6666,
  "dorell wright" => 2423,
  "tony wroten" => 6630,
  "bj young" => 2581000,
  "nick young" => 3243,
  "sam young" => 4020,
  "thaddeus young" => 3244,
  "cody zeller" => 2579258,
  "luke zeller" => 6502,
  "tyler zeller" => 6631,
);

triggers any => keys %players;

spice to => 'http://api.espn.com/v1/sports/basketball/nba/$1/$2/$3'
            . '?enable=stats,competitors,roster,venues&$4='
            . (localtime->year() + 1900)
            . '&apikey={{ENV{DDG_SPICE_ESPN_APIKEY}}}&callback=$5';

spice from => '(.*)/(.*)/(.*)/(.*)/(.*)';

handle query_lc => sub {
    return "athletes", $players{$_}, "foo", "bar", "ddg_spice_espn_nba";
};

1;
