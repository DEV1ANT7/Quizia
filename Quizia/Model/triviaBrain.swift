import Foundation

struct triviaBrain {
    
    func getPercent(remainingTime: Int, time: Int) -> Float{
        return Float(remainingTime) / Float(time)
    }
    
    func getQuestion(theme: String) -> Question {
        switch theme {
        case "General": return General.shuffled()[0]
        case "Geography": return Geography.shuffled()[0]
        default: return Science.shuffled()[0]
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
        Question(text: "What is the biggest animal?", answers: ["Blue whale", "Killer whale", "Sei whale"])
        
        
        
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
                                                                
        
    ]
    
    let Science = [
    
        Question(text: "Who discovered electricity?", answers: ["Benjamin Franklin", "Nikola Tesla", "Thomas Edison"]),
        Question(text: "Who invented first watch?", answers: ["Peter Henlein", "Peter Durand", "Joseph Gayetty"]),
        Question(text: "Who game the theory of realitivity?", answers: ["Albert Einstein", "Nikola Tesla", "Stephen Hawking"]),
        Question(text: "Who discovered x-ray?", answers: ["Wilhelm Roentgen", "Joseph Braham", "Lloyd Nelson"]),
        Question(text: "Who gave the universal law of gravitation?", answers: ["Issac Newton", "Galileo Galilei", "Nicholas Copernicus"]),
        Question(text: "What means CPU in computer science?", answers: ["Central processor unit", "Computer processor unit", "Core processor unit"]),
        Question(text: "What is the name of the basic unit of work?", answers: ["Joule", "Watt", "Ampere"]),
        
    ]
}
