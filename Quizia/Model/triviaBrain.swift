import Foundation

struct triviaBrain {
    
    func getPercent(remainingTime: Int, time: Int) -> Float{
        return Float(remainingTime) / Float(time)
    }
    
    func getQuestion(theme: String) -> Question {
        switch theme {
        case "General": return General.randomElement()!
        case "Geography": return Geography.randomElement()!
        case "History": return History.randomElement()!
        case "All": let x = General + History + Science + Geography
            return x.randomElement()!
        default: return Science.randomElement()!
        }
    }
    
    func getTime(gamemode: Int) -> Int {
        switch gamemode {
            case 0: return 120
            case 1: return 10
        default: return 0
        }
    }
    
    let General = [
        
        Question(text: "In which country was Gandhi born?", answers: ["India", "China", "Mongolia"]),
        Question(text: "Which animal is known as the Ship of the Desert?", answers: ["Camel", "Horse", "Sheep"]),
        Question(text: "Name the place known as the Roof of the World?", answers: ["Tibet", "Peru", "Nepal"]),
        Question(text: "How many years are there in one Millenium?", answers: ["1000", "100", "500"]),
        Question(text: "Who was the first man to walk on the Moon?", answers: ["Neil Armstrong", "Lance Armstrong", "Buzz Aldrine"]),
        Question(text: "Which rainforest has the highest density?", answers: ["Amazon rainforest", "Congo rainforest", "New Guinea rainforest"]),
        Question(text: "What type of gas is absorbed by plants?", answers: ["Carbon dioxide", "Carbon monoxide", "Nitrous oxide"]),
        Question(text: "Which planet is the most of time closest to earth?", answers: ["Mercury", "Venus", "Mars"]),
        Question(text: "What is the name of the longest river on earth?", answers: ["Nile", "Amazon", "Volha"]),
        Question(text: "Where is smallest bone in the human body?", answers: ["Ear", "Nose", "Sole"]),
        Question(text: "How many milimeteres are there in a centimetre?", answers: ["10", "100", "1000"]),
        Question(text: "What is the hardest substance available on Earth?", answers: ["Diamond", "Graphene", "Topaz"]),
        Question(text: "Which shape has 10 sides?", answers: ["Decagon", "Hexagon", "Dodecagon"]),
        Question(text: "In which decade was Madonna born?", answers: ["50s", "60s", "70s"]),
        Question(text: "What is the biggest animal?", answers: ["Blue whale", "Killer whale", "Sei whale"]),
        Question(text: "What does a funambulist walk on?", answers: ["Rope", "Rod", "Plank"]),
        Question(text: "In which US state is located Area 51?", answers: ["Nevada", "Texas", "Louisiana"]),
        Question(text: "Which American president appears on a one dallar bill?", answers: ["George Wasginhton", "Abraham Lincoln", "Thomas Jefferson"]),
        Question(text: "Who discovered penicillin?", answers: ["Alexander Fleming", "Alexander Shulgin", "Albert Hofmann"]),
        Question(text: "Who was the first woman to win a Nobel Prize?", answers: ["Marie Curie", "Jane Addams", "Emily Greene Balch"]),
        Question(text: "What is meteorology the study of?", answers: ["Weather", "Stratosphere", "Ozone layer"]),
        Question(text: "Which planet is the hottest in the solar system?", answers: ["Venus", "Mercury", "Earth"]),
        Question(text: "Which natural disaster is measured with a Richter scale?", answers: ["Earthquare", "Flood", "Volcano eruption"]),
        Question(text: "How many fortnights there are in 4.5 weeks?", answers: ["2.25", "1.67", "3.37"]),
        Question(text: "How long does a year last on the planet Pluto?", answers: ["90 560 days", "30 580 days", "72 340 days"]),
        Question(text: "How long does a day last on the planet Saturn?", answers: ["10.7 hours", "16.1 hours", "9.5 hours"]),
        Question(text: "Where is the train station Llanfair­pwllgwyngyll­gogery­chwyrn­drobwll­llan­tysilio­gogo­goch?", answers: ["Moldova", "Wales", "Denmark"]),
        Question(text: "In the video-game franchise Kingdom Hearts, the main protagonist, carries a weapon with what shape?", answers: ["Key", "Pen", "Hearth"]),
        Question(text: "What word represents the letter 'T' in the NATO phonetic alphabet?", answers: ["Tango", "Turkey", "Target"]),
        Question(text: "What is the shape of the toy invented by Hungarian professor Ernő Rubik?", answers: ["Cube", "Pyramid", "Sphere"]),
        Question(text: "What is the French word for hat?", answers: ["Chapeau", "Casque", "Bonnet"]),
        Question(text: "Which best selling toy of 1983 caused hysteria, resulting in riots breaking out in stores?", answers: ["Cabbage Patch Kids", "Transformers", "Barbie"]),
        Question(text: "How many manned moon landings have there been?", answers: ["6", "5", "7"]),
        Question(text: "In what year did the Wall Street Crash take place?", answers: ["1929", "1921", "1932"]),
        Question(text: "What was William Frederick Cody better known as?", answers: ["Buffalo Bill", "Billy the Kid", "Pawnee Bill"]),
        Question(text: "What is the 15th letter of the Greek alphabet?", answers: ["Omicron", "Sigma", "Nu"])
             
    ]
    
    let Geography = [
    
        Question(text: "How many states are there in India?", answers: ["28", "33", "35"]),
        Question(text: "How many Union Territories are there in India?", answers: ["8", "5", "12"]),
        Question(text: "What is the smallest continent?", answers: ["Australia", "Europe", "North America"]),
        Question(text: "What is the name of the longest river on earth?", answers: ["Nile", "Amazon", "Volha"]),
        Question(text: "Which continent is known as Dark continent?", answers: ["Africa", "South America", "Asia"]),
        Question(text: "Which country is known as the Land of Rising Sun?", answers: ["Japan", "China", "South Korea"]),
        Question(text: "What is largest ocean in the world?", answers: ["Pacific ocean", "Atlantic ocean", "Indian ocean"]),
        Question(text: "What is capital of Finland?", answers: ["Helsinki", "Oslo", "Tampere"]),
        Question(text: "Which city is the capital of the United States of America?", answers: ["Washington D.C", "Seattle", "Los Angeles"]),
        Question(text: "What is the capital of the American state of Arizona?", answers: ["Phoenix", "Tallahassee", "Montgomery"]),
        Question(text: "What state is the largest state of the United States of America?", answers: ["Alaska", "Texas", "California"]),
        Question(text: "What country is the second largest in the world by area?", answers: ["Canada", "Russia", "China"]),
        Question(text: "What is the capital of Indonesia?", answers: ["Jakarta", "Medan", "Bandung"]),
        Question(text: "Which country does Austria not border?", answers: ["France", "Slovakia", "Slovenia"]),
        Question(text: "What is the capital of Jamaica?", answers: ["Kingston", "Bridgetown", "Port-au-Prince"]),
        Question(text: "Which of the following European languages is classified as a \"language isolate?\"", answers: ["Basque", "Galician", "Hungarian"]),
        Question(text: "Which Russian oblast forms a border with Poland?", answers: ["Kaliningrad", "Samara", "Omsk"]),
        Question(text: "What is the only state in the United States that does not have a flag in a shape with 4 edges?", answers: ["Ohio", "Idaho", "Utah"]),
        Question(text: "Which of the following languages does NOT use the Latin alphabet?", answers: ["Georgian", "Svahili", "Turkish"]),
        Question(text: "Which nation claims ownership of Antarctica?", answers: ["No one", "Denmark", "Russia"]),
        Question(text: "What name was historically used for the Turkish city currently known as Istanbul?", answers: ["Constantinople", "Adrianople", "Söğüt"]),
        Question(text: "Which US state has the highest population?", answers: ["California", "Texas", "Florida"]),
        Question(text: "What is the official language of Costa Rica?", answers: ["Spanish", "Portuguese", "English"]),
        Question(text: "Which of the following Arab countries does NOT have a flag containing only Pan-Arab colours?", answers: ["Qatar", "Jordan", "Kuwait"]),
        Question(text: "What country has a horizontal bicolor red and white flag?", answers: ["Monaco", "Malta", "Liechenstein"]),
        Question(text: "Which UK country features a dragon on their flag?", answers: ["Wales", "Scotland", "North Ireland"]),
        Question(text: "What is the nickname for the US state Delaware?", answers: ["The First State", "The Second State", "The Fifth State"]),
        Question(text: "What is the name of the peninsula containing Spain and Portugal?", answers: ["Iberian Peninsula", "European Peninsula", "Peloponnesian Peninsula"]),
        Question(text: "The Space Needle is located in which city?", answers: ["Seattle", "Los Angeles", "Toronto"]),
        Question(text: "What is Canada's smallest province?", answers: ["Prince Edward Island", "Yukon", "Nova Scotia"]),
        Question(text: "What is the Polish city known to Germans as Danzig?", answers: ["Gdańsk", "Kraków", "Poznań"]),
        Question(text: "How many stars are featured on New Zealand's flag?", answers: ["4", "5", "6"]),
        Question(text: "Which of the following Japanese islands is the biggest?", answers: ["Honshu", "Kyushu", "Shikoku"]),
        Question(text: "What is the capital of Spain?", answers: ["Madrid", "Barcelona", "Toledo"]),
        Question(text: "What is the capital of India?", answers: ["New Delhi", "Tithi", "Beijing"]),
        Question(text: "What is the smallest country in the world?", answers: ["Vatican Citz", "Monaco", "Liechenstein"]),
        Question(text: "What is the largest country in the world?", answers: ["Russia", "Canada", "China"]),
        Question(text: "Which of the following countries has a flag featuring a yellow lion wielding a sword on a dark red background?", answers: ["Sri Lanka", "Bhutan", "Kiribati"]),
        Question(text: "What is the capital of South Korea?", answers: ["Seoul", "Pyongyang", "Taegu"]),
        Question(text: "The Alps are a mountain range on which continent?", answers: ["Europe", "Asia", "Africa"]),
        Question(text: "The longest shared border in the world can be found between which two nations?", answers: ["Canada and USA", "Russia and China", "Chile and Argentina"]),
        Question(text: "What is Laos?", answers: ["Country", "City", "River"]),
        
    ]
    
    let Science = [
    
        Question(text: "Who discovered electricity?", answers: ["Benjamin Franklin", "Nikola Tesla", "Thomas Edison"]),
        Question(text: "Who invented first watch?", answers: ["Peter Henlein", "Peter Durand", "Joseph Gayetty"]),
        Question(text: "Who gave the theory of realitivity?", answers: ["Albert Einstein", "Nikola Tesla", "Stephen Hawking"]),
        Question(text: "Who discovered x-ray?", answers: ["Wilhelm Roentgen", "Joseph Braham", "Lloyd Nelson"]),
        Question(text: "Who gave the universal law of gravitation?", answers: ["Issac Newton", "Galileo Galilei", "Nicholas Copernicus"]),
        Question(text: "What means CPU in computer science?", answers: ["Central processor unit", "Computer processor unit", "Core processor unit"]),
        Question(text: "What is the name of the basic unit of work?", answers: ["Joule", "Watt", "Ampere"]),
        Question(text: "What year was the very first model of the iPhone released?", answers: ["2007", "2008", "2006"]),
        Question(text: "What is smallest unit of information?", answers: ["Bit", "Byte", "Word"]),
        Question(text: "What does HTTP stand for?", answers: ["Hypertext Transfer Protocol", "Hypertext Transmission Protocol", "Hypertext Transport Protocol"]),
        Question(text: "Which web browser is owned by Apple?", answers: ["Safari", "Firefox", "Opera"]),
        Question(text: "What was Twitter’s original name?", answers: ["twttr", "Beep", "It was alwas Twitter"]),
        Question(text: "What part of the atom has no electric charge?", answers: ["Neutron", "Proton", "Electron"]),
        Question(text: "What is the symbol for potassium?", answers: ["K", "P", "Pt"]),
        Question(text: "How many molecules of oxygen does ozone have?", answers: ["3", "4", "2"]),
        Question(text: "What is the name for the chemical compound FeBr2?", answers: ["ferrous bromide", "tetraphenylgermane", "mercury fulminate"]),
        Question(text: "Which chemical element is the least abundant in the human body by mass?", answers: ["Gold", " Cerium", "Titanium"]),
        Question(text: "How many grains there are in 8 pennyweights?", answers: ["192", "212", "168"]),
        Question(text: "Which chemical element is the least abundant in Earth's crust?", answers: ["Promethium", "Bromine", "Radium"]),
        Question(text: "What satellite orbits the planet Saturn?", answers: ["Aegaeon", "Eirene", "Prospero"]),
        Question(text: "Which company did Valve cooperate with in the creation of the Vive?", answers: ["HTC", "Oculus", "Google"]),
        Question(text: "What does the 'S' stand for in the abbreviation SIM, as in SIM card?", answers: ["Subscriber", "Single", "Secure"]),
        
    ]
    
    let History = [
        Question(text: "King Henry VIII was the second monarch of which European royal house?", answers: ["Tudor", "York", "Lancester"]),
        Question(text: "Which German field marshal was known as the Desert Fox?", answers: ["Erwin Rommel", "Ernst Busch", "Wilhelm List"]),
        Question(text: "The Tiananmen Square protests of 1989 were held in which city?", answers: ["Beijing", "Shanghai", "Hong Kong"]),
        Question(text: "The idea of Socialism was articulated and advanced by whom?", answers: ["Karl Marx", "Vladimir Lenin", "Joseph Stalin"]),
        Question(text: "During WWII, in 1945, the United States dropped atomic bombs on the two Japanese cities of Hiroshima and what other city?", answers: ["Nagasaki", "Kagoshima", "Kyoto"]),
        Question(text: "Which famous world leader is famed for the saying, \"Let them eat cake\"?", answers: ["Marie Antoinette", "Henry VIII", "Czar Nicholas II"]),
        Question(text: "The collapse of the Soviet Union took place in which year?", answers: ["1991", "1992", "1989"]),
        Question(text: "Which one of these tanks was designed and operated by the United Kingdom?", answers: ["Tog II", "M4 Sherman", "T-34"]),
        Question(text: "Which of the following African countries was most successful in resisting colonization?", answers: ["Ethiopia", "Namibia", "Congo"]),
        Question(text: "Which of these countries remained neutral during World War II?", answers: ["Switzerland", "France", "Italy"]),
        Question(text: "In which year did the Invasion of Kuwait by Iraq occur?", answers: ["1990", "1986", "1995"]),
        Question(text: "When did the Battle of the Somme begin?", answers: ["July 1916", "August 1916", "June 1916"]),
        Question(text: "Who was the first president of the United States?", answers: ["George Washington", "Thomas Jefferson", "James Madison"]),
        Question(text: "Who was the Prime Minister of Japan when Japan declared war on the US?", answers: ["Hideki Tojo", "Fumimaro Konoe", "Isoroku Yamamoto"]),
        Question(text: "How was Socrates executed?", answers: ["Poison", "Firing squad", "Decapitation"]),
        Question(text: "Which of the following countries was not an axis power during World War II?", answers: ["Soviet Union", "Germany", "Italy"]),
        Question(text: "In 1939, Britain and France declared war on Germany after it invaded which country?", answers: ["Poland", "Czechoslovakia", "France"]),
        Question(text: "The \"Trail of Tears\" was a result of which United States President's Indian Removal Policy?", answers: ["Andrew Jackson", "Harry S. Truman", "Martin Van Buren"]),
        Question(text: "What year did World War I begin?", answers: ["1914", "1919", "1915"]),
        Question(text: "Which country was Josef Stalin born in?", answers: ["Georgia", "Russia", "Poland"]),
        Question(text: "Who led the Communist Revolution of Russia?", answers: ["Vladimir Lenin", "Joseph Stalin", "Mikhail Gorbachev"]),
        Question(text: "Which of the following was Brazil was a former colony under?", answers: ["Portugal", "France", "Netherlands"]),
        Question(text: "What is the historical name of Sri Lanka?", answers: ["Ceylon", "Myanmar", "Badulla"]),
        Question(text: "What was the name commonly given to the ancient trade routes that connected the East and West of Eurasia?", answers: ["Silk Road", "Salt Road", "Clay Road"]),
        Question(text: "On what street did the 1666 Great Fire of London start?", answers: ["Pudding Lane", "Baker Street", "Fifth Street"]),
        Question(text: "In what year was the M1911 pistol designed?", answers: ["1911", "1907", "1899"]),
        Question(text: "In what year did the Great Northern War, between Russia and Sweden, end?", answers: ["1721", "1724", "1727"]),
        Question(text: "Who rode on horseback to warn the Minutemen that the British were coming during the U.S. Revolutionary War?", answers: ["Paul Revere", "Nathan Hale", "Thomas Paine"]),
        Question(text: "The Ottoman Empire was dissolved after their loss in which war?", answers: ["World War I", "Second Balkan War", "Serbian Revolution"]),
 
    ]
}
