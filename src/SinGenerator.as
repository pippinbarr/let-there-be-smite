package
{
	public class SinGenerator
	{
		public static var commandmentNumber:Array = new Array(
			"1st", 
			"2nd", 
			"3rd", 
			"4th", 
			"5th", 
			"6th", 
			"7th", 
			"8th", 
			"9th", 
			"10th");
		public static var names:Array = new Array(
			"Aarat",
			"Aaron",
			"Abba",
			"Abaddon",
			"Abagtha",
			"Abana",
			"Abarim",
			"Abda",
			"Abdeel",
			"Abdi",
			"Abdiel",
			"Abdon",
			"Abednego",
			"Abel",
			"Abel-beth-maachah",
			"Abel-maim",
			"Abel-meholah",
			"Abel-mizraim",
			"Abel-shittim",
			"Abez",
			"Abi",
			"Abiah",
			"Abi-albon",
			"Abiasaph",
			"Abiathar",
			"Abib",
			"Abidah",
			"Beth-pazzez",
			"Beth-peor",
			"Bethphage",
			"Beth-phelet",
			"Beth-rapha",
			"Bethsaida",
			"Bethshan",
			"Beth-shemesh",
			"Bethuel",
			"Beth-zur",
			"Betonim",
			"Beulah",
			"Bezai",
			"Bezaleel",
			"Bezek",
			"Bezer",
			"Bichri",
			"Bidkar",
			"Bigthan",
			"Bigvai",
			"Bildad",
			"Bileam",
			"Bilgah",
			"Bilhah",
			"Bilshan",
			"Binea",
			"Binnui",
			"Birsha",
			"Bishlam",
			"Bithiah",
			"Bithron",
			"Bithynia",
			"Bizjothjah",
			"Blastus",
			"Boanerges",
			"Boaz",
			"Bocheru",
			"Bochim",
			"Bohan",
			"Boskath",
			"Boson",
			"Bozez",
			"Bozrah",
			"Bukki",
			"Bukkiah",
			"Bul",
			"Bunah",
			"Bunni",
			"Buz",
			"Buzi",
			"Cabbon",
			"Cabul",
			"Caesar",
			"Caiphas",
			"Cain",
			"Cainan",
			"Calah",
			"Calcol",
			"Caleb",
			"Caleb-Ephratah",
			"Calneh",
			"Calno",
			"Calvary",
			"Camon",
			"Cana",
			"Canaan",
			"Candace",
			"Capernaum",
			"Caphtor",
			"Cappadocia",
			"Carcas",
			"Charchemish",
			"Careah",
			"Carmel",
			"Carmi",
			"Carpus",
			"Carshena",
			"Casiphia",
			"Casluhim",
			"Cedron",
			"Cenchrea",
			"Cephas",
			"Dabareh",
			"Dabbasheth",
			"Daberath",
			"Dagon",
			"Dalaiah",
			"Dalmanutha",
			"Dalmatia",
			"Dalphon",
			"Damaris",
			"Damascus",
			"Dan",
			"Daniel",
			"Dannah",
			"Darah",
			"Darda",
			"Darius",
			"Darkon",
			"Dathan",
			"David",
			"Debir",
			"Deborah",
			"Decapolis",
			"Dedan",
			"Dedanim",
			"Dekar",
			"Delaiah",
			"Delilah",
			"Demas",
			"Demetrius",
			"Derbe",
			"Deuel",
			"Diana",
			"Diblaim",
			"Diblath",
			"Dibon",
			"Dibon-gad",
			"Dibri",
			"Dibzahab",
			"Didymus",
			"Diklah",
			"Dilean",
			"Dimon",
			"Dimonah",
			"Dinah",
			"Dinhabah",
			"Dionysius",
			"Diotrephes",
			"Festus",
			"Gaal",
			"Gaash",
			"Gabbai",
			"Gabbatha",
			"Gabriel",
			"Gad",
			"Gadarenes",
			"Gaddi",
			"Gaddiel",
			"Gaius",
			"Galal",
			"Galatia",
			"Galeed",
			"Galilee",
			"Gallim",
			"Gallio",
			"Gamaliel",
			"Gammadims",
			"Gamul",
			"Gareb",
			"Garmites",
			"Gatam",
			"Gath",
			"Gath-rimmon",
			"Gaza",
			"Gazabar",
			"Gazer",
			"Gazez",
			"Gazzam",
			"Geba",
			"Gebal",
			"Geber",
			"Gebim",
			"Gedaliah",
			"Geder",
			"Gederothaim",
			"Gehazi",
			"Geliloth",
			"Gemalli",
			"Gemariah",
			"Gennesaret",
			"Genesis",
			"Genubath",
			"Gera",
			"Gerar",
			"Gergesenes",
			"Haahashtari",
			"Habaiah",
			"Habakkuk",
			"Habazinaiah",
			"Habor",
			"Hachaliah",
			"Hachilah",
			"Hachmoni",
			"Hadad",
			"Hadadezer",
			"Hadadrimmon",
			"Hadar",
			"Hadarezer",
			"Hadashah",
			"Hadassah",
			"Hadattah",
			"Hades",
			"Hadlai",
			"Hadoram",
			"Hadrach",
			"Hagab",
			"Hagar",
			"Haggai",
			"Haggeri",
			"Haggiah",
			"Haggith",
			"Hai",
			"Hakkatan",
			"Hakkoz",
			"Hakupha",
			"Halah",
			"Halak",
			"Halhul",
			"Hali",
			"Halloesh",
			"Ham",
			"Haman",
			"Hamath",
			"Hamath-zobah",
			"Hammedatha",
			"Hammelech",
			"Hammoleketh",
			"Hammon",
			"Hamonah",
			"Hamon-gog",
			"Hamor",
			"Hamoth",
			"Hamul",
			"Hamutal",
			"Zaanaim",
			"Zaanannim",
			"Zaavan",
			"Zabad",
			"Zabbai",
			"Zabbud",
			"Zabdi",
			"Zabdiel",
			"Zaccai",
			"Zacchaeus",
			"Zaccur",
			"Zachariah",
			"Zacharias",
			"Zacher",
			"Zadok",
			"Zaham",
			"Zair",
			"Zalaph",
			"Zalmon",
			"Zalmonah",
			"Zalmunna",
			"Zamzummims",
			"Zanoah",
			"Zaphnath-paaneah",
			"Zarah",
			"Zareathites",
			"Zared",
			"Zarephath",
			"Zaretan",
			"Zareth-shahar",
			"Zarhites",
			"Zartanah",
			"Zarthan",
			"Zatthu",
			"Zattu",
			"Zavan",
			"Zaza",
			"Zebadiah",
			"Zebah",
			"Zebaim",
			"Zebedee",
			"Zebina",
			"Zeboiim",
			"Zeboim",
			"Zebudah",
			"Zebul",
			"Zebulonite",
			"Zebulun",
			"Zebulunites",
			"Zechariah",
			"Zedad",
			"Zedekiah",
			"Zeeb",
			"Zelah",
			"Zelek",
			"Zelophehad",
			"Zelotes",
			"Zelzah",
			"Zemaraim",
			"Zemarite",
			"Zemira",
			"Zenan",
			"Zenas",
			"Zephaniah",
			"Zephath",
			"Zephathah",
			"Zephi",
			"Zepho",
			"Zephon",
			"Zephonites",
			"Zer",
			"Zerah",
			"Zerahiah",
			"Zered",
			"Zereda",
			"Zeredathah",
			"Zererath",
			"Zeresh",
			"Zereth",
			"Zeri",
			"Zeror",
			"Zeruah",
			"Zerubbabel",
			"Zeruiah",
			"Zetham",
			"Zethan",
			"Zethar",
			"Zia",
			"Ziba",
			"Zibeon",
			"Zibia",
			"Zibiah",
			"Zichri",
			"Ziddim",
			"Zidkijah",
			"Zidon",
			"Zidonians",
			"Zif",
			"Ziha",
			"Ziklag",
			"Zillah",
			"Zilpah",
			"Zilthai",
			"Zimmah",
			"Zimran",
			"Zimri",
			"Zin",
			"Zina",
			"Zion",
			"Zior",
			"Ziph",
			"Ziphah",
			"Ziphims",
			"Ziphion",
			"Ziphites",
			"Ziphron",
			"Zippor",
			"Zipporah",
			"Zithri",
			"Ziz",
			"Ziza",
			"Zizah",
			"Zoan",
			"Zoar",
			"Zoba",
			"Zobah",
			"Zobebah",
			"Zohar",
			"Zoheleth",
			"Zoheth",
			"Zophah",
			"Zophai",
			"Zophar",
			"Zophim",
			"Zorah",
			"Zorathites",
			"Zoreah",
			"Zorites",
			"Zorobabel",
			"Zuar",
			"Zuph",
			"Zur",
			"Zuriel",
			"Zurishaddai",
			"Zuzims",
			"Paarai",
			"Padan-aram",
			"Padon",
			"Pagiel",
			"Pahath-Moab",
			"Pai",
			"Palal",
			"Palestina",
			"Pallu",
			"Palti",
			"Paltiel",
			"Pamphylia",
			"Paphos",
			"Parah",
			"Paran",
			"Parbar",
			"Parmashta",
			"Parmenas",
			"Parnach",
			"Parosh",
			"Parshandatha",
			"Paruah",
			"Pasach",
			"Pasdammin",
			"Paseah",
			"Pashur",
			"Patara",
			"Pathros",
			"Patmos",
			"Patrobas",
			"Pau",
			"Paul",
			"Paulus",
			"Pedahzur",
			"Pedaiah",
			"Pekah",
			"Pekahiah",
			"Pekod",
			"Pelaiah",
			"Pelaliah",
			"Pelatiah",
			"Peleg",
			"Pelethites",
			"Pelonite",
			"Peniel",
			"Peninnah",
			"Pentapolis",
			"Pentateuch",
			"Pentecost",
			"Penuel",
			"Peor",
			"Perazim",
			"Peresh",
			"Perez",
			"Perez-Uzza",
			"Perga",
			"Pergamos",
			"Perida",
			"Perizzites",
			"Persia",
			"Persis",
			"Peruda",
			"Peter",
			"Pethahiah",
			"Pethuel",
			"Peulthai",
			"Phalec",
			"Phallu",
			"Phanuel",
			"Pharaoh",
			"Pharez",
			"Pharisees",
			"Pharpar",
			"Phebe",
			"Phenice",
			"Phichol",
			"Philadelphia",
			"Philemon",
			"Philetus",
			"Philip",
			"Philippi",
			"Philistines",
			"Philologus",
			"Phinehas",
			"Phlegon",
			"Phrygia",
			"Phurah",
			"Phygellus",
			"Phylacteries",
			"Pi-beseth",
			"Pi-hahiroth",
			"Pilate",
			"Pinon",
			"Piram",
			"Pirathon",
			"Pisgah",
			"Pisidia",
			"Pison",
			"Pithom",
			"Pithon",
			"Pochereth",
			"Pontius",
			"Pontus",
			"Poratha",
			"Potiphar",
			"Potipherah",
			"Prisca",
			"Priscilla",
			"Prochorus",
			"Puah",
			"Publius",
			"Pudens",
			"Pul",
			"Punites",
			"Punon",
			"Pur",
			"Putiel",
			"Puteoli");
		public static var places:Array = new Array(
			"Ai",
			"Amman",
			"Tel Arad",
			"Archi",
			"Arwad",
			"Ashkelon",
			"Beit El",
			"Beit She'an",
			"Beit Shemesh",
			"Beth Dagon",
			"Beth-zur",
			"Bethharan",
			"Bethlehem",
			"Bozkath",
			"Bozrah",
			"Ekron",
			"Etam",
			"Ezion-Geber",
			"Gath",
			"Gaza",
			"Gezer",
			"Giloh",
			"Golan",
			"Halah",
			"Hebron",
			"Heshbon",
			"Iim",
			"Jabesh-Gilead",
			"Jazer",
			"Jericho",
			"Jerusalem",
			"Jezreel",
			"Kabzeel",
			"Kartan",
			"Kedesh",
			"Khirbet Qeiyafa",
			"Kirjath-huzoth",
			"Kirjathaim",
			"Kithlish",
			"Lachish",
			"Tel Megiddo",
			"Mizpah",
			"Judah",
			"Tell en-Nasbeh",
			"Nineveh",
			"Ofra",
			"Ophrah",
			"Ramah",
			"Ramoth",
			"Issachar",
			"Ramoth-Gilead",
			"Secacah",
			"Shaaraim",
			"Sharuhen",
			"Shechem",
			"Shiloh",
			"Sidon",
			"Susa",
			"Tahpanhes",
			"Tanis",
			"Timnah",
			"Tirzah",
			"Tuqu'",
			"Tyre",
			"Yalo",
			"Yavne",
			"Yibna",
			"Ziddim",
			"Zorah",
			"Antioch",
			"Banias",
			"Colossae",
			"Derbe",
			"Ephesus",
			"Etam",
			"Gambrion",
			"Iconium",
			"Konya",
			"Jerusalem",
			"Laodicea",
			"Lystra",
			"Nazareth",
			"Neapoli",
			"Pergamon",
			"Alasehir",
			"Philippi",
			"Sardis",
			"Smyrna",
			"Tarsus",
			"Thyatira");
		
		public static var gods:Array = new Array(
			"Neptune", 
			"Thor", 
			"Zeus",
			"Athena",
			"Odin",
			"the FSM",
			"Money",
			"Love",
			"fairies",
			"Cthulu",
			"Hera",
			"Mars",
			"Hermes",
			"Jupiter",
			"Ramses",
			"aliens",
			"the 4D Witch",
			"Anubis",
			"Osiris",
			"Ra",
			"Buddha",
			"Krishna",
			"Vishnu",
			"Ganeesh",
			"Hephaestus",
			"Venus",
			"Aphrodite",
			"Pluto",
			"Hades",
			"Apocatequil",
			"Kuka Mama",
			"Aramazd",
			"Vahagn",
			"Anahit",
			"Amanor",
			"Meili",
			"Loki",
			"Bacchus",
			"Gobannos",
			"Taranis",
			"Acolnahuacatl",
			"Chicomexochtli",
			"Mictlantecuhtli");
		
		public static var possessions:Array = new Array(
			"oxen", 
			"wife", 
			"goat",
			"pig",
			"fish",
			"fishing rod",
			"sandals",
			"earthen mug",
			"pot",
			"seeds",
			"cloak",
			"boat",
			"house",
			"crops",
			"tools",
			"hammer",
			"hoe",
			"spear",
			"sword",
			"shield",
			"thatching",
			"cowrie shells",
			"crown",
			"loincloth",
			"lucky loincloth",
			"comb",
			"jug",
			"sickle",
			"furs",
			"meat",
			"decorative skull",
			"friends",
			"necklace",
			"ring",
			"bangles",
			"porn stone",
			"carving",
			"shrunken head",
			"hat",
			"cap",
			"wild dog",
			"dodo",
			"wig");
		
		public static var sinIntro:String = "In PLACE, SINNERNAME has broken the COMMANDMENTNUMBER commandment by ";
		
		public static var sinStrings:Array = new Array("believing in OTHERGOD instead of You.",
													   "creating a graven image.",
													   "taking Your name in vain.",
													   "breaking the Sabbath.",
													   "dishonouring their SINNERPARENT.",
													   "killing OTHERNAME.",
													   "committing adultery with OTHERNAME.",
													   "stealing OTHERNAME's POSSESSION.",
													   "bearing false witness against OTHERNAME.",
													   "coveting OTHERNAME's POSSESSION.");
		
		public function SinGenerator()
		{
		}
		
		public static function getNewSin():Array {
			var sins:Array = new Array();
			var sin:Sin = new Sin();
			
			// Generate the core sin values
			
			sin._commandment = Math.floor(Math.random() * commandmentNumber.length);
			sin._sinnerName = names[Math.floor(Math.random() * names.length)];
			sin._sinnerGender = (Math.floor(Math.random()) > 0.5) ? "male" : "female";
			sin._sinnerPossessive = (sin._sinnerGender == "male") ? "his" : "her";
			sin._sinnerParent = (Math.floor(Math.random()) > 0.5) ? "mother" : "father";
			sin._place = places[Math.floor(Math.random() * places.length)];
			
			// Generate values for potential values
			sin._otherName = names[Math.floor(Math.random() * names.length)];
			sin._otherGod = gods[Math.floor(Math.random() * gods.length)];
			sin._possession = possessions[Math.floor(Math.random() * possessions.length)];

			// Start constructing the sin string
			var sinString:String = sinIntro + sinStrings[sin._commandment];
			
			// Regular expressions to substitute in the appropriate values
			var nameRE:RegExp = /SINNERNAME/g;
			var placeRE:RegExp = /PLACE/g;
			var commandmentRE:RegExp = /COMMANDMENTNUMBER/g;
			var godRE:RegExp = /OTHERGOD/g;
			var genderRE:RegExp = /SINNERGENDER/g;
			var parentRE:RegExp = /SINNERPARENT/g;
			var otherNameRE:RegExp = /OTHERNAME/g;
			var possessionRE:RegExp = /POSSESSION/g;
			
			sinString = sinString.replace(nameRE,sin._sinnerName);
			sinString = sinString.replace(placeRE,sin._place);
			sinString = sinString.replace(commandmentRE,commandmentNumber[sin._commandment]);
			sinString = sinString.replace(godRE,sin._otherGod);
			sinString = sinString.replace(genderRE,sin._sinnerPossessive);
			sinString = sinString.replace(parentRE,sin._sinnerParent);
			sinString = sinString.replace(otherNameRE,sin._otherName);
			sinString = sinString.replace(possessionRE,sin._possession);
			
			sin._sinString = sinString;
			
			sins.push(sin);
			
			if (sin._commandment == 6) {
				// It was adultery, so we need to create the complementary sin
				var sin2:Sin = new Sin();
				sin2._commandment = sin._commandment;
				sin2._sinnerName = sin._otherName;
				sin2._otherName = sin._sinnerName;
				sin2._place = sin._place;
				sin2._sinnerGender = (Math.floor(Math.random()) > 0.5) ? "male" : "female";
				sin2._sinString = sinIntro + sinStrings[sin2._commandment];
				sin2._sinString = sin2._sinString.replace(nameRE,sin2._sinnerName);
				sin2._sinString = sin2._sinString.replace(placeRE,sin2._place);
				sin2._sinString = sin2._sinString.replace(commandmentRE,commandmentNumber[sin2._commandment]);
				sin2._sinString = sin2._sinString.replace(otherNameRE,sin2._otherName);
				sins.push(sin2);
			}
			
			return sins;
			
		}
		
		public static function getRandomPlace():String {
			return places[Math.floor(Math.random() * places.length)];
		}
			
	}
}