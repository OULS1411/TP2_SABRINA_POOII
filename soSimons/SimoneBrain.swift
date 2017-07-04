//============================================================
import Foundation
import UIKit
//============================================================
class SimoneBrain {
    //------------------
    var colorTracker: Int!
     var userTurnToplay: Bool!
     var scoreKeeperCounter: Int!
     var theScoreKeeper = ""
     var randomButtonChooser: UIButton!
    //---------------------
    func getRandomNumber(from f :Int, to t:Int) -> Int{
        let from = UInt32(f)
        let to = UInt32(t)
        let randomNumber = arc4random_uniform(to - from + 1) + from
        return Int(randomNumber)
    }
    //-------------------------------------
    func startGame(_ arrOfRandomButtons:[UIButton]){
    //initialise colorTracker à 0 
        colorTracker = 0
    //-----------
    //timer 1 pour executer methode "buttonAlphaManager" avec argument "arrOfRandomButtons"
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false){_ in self.buttonAlphaManager(arrOfRandomButtons)
        }
    //-----------
    }
    //-------------------------------------
    func buttonAlphaManager(_ arrOfRandomButtons:[UIButton]){
        if colorTracker < arrOfRandomButtons.count{
            //-----------
            userTurnToplay = false
            scoreKeeperCounter = 0
            scoreKeeper = ""
            randomButtonChooser = arrOfRandomButtons [colorTracker]
            randomButtonChooser.alpha = 0.2 
            colorTracker! += 1
            //-----------
            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false){_ in self.resetAlphaForButton(arrOfRandomButtons)}
            } else {
                userTurnToplay = true
            }
        }
    
    //-------------------------------------
    func resetAlphaForButton(_ arrOfRandomButtons:[UIButton]){
        //-----------
        randomButtonChooser.alpha = 1.0
        //-----------
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false){_ in self.buttonAlphaManager(arrOfRandomButtons)
        
            }
    }
     //-------------------------------------
        var scoreKeeper: String?{
       //get = retourne la valeur de la variable "theScoreKeeper"
      // set = initialise la variable a la nouvelle valeur
            get {
                return theScoreKeeper
            }
            set {
            theScoreKeeper = newValue!
                
            }
        }
     //-------------------------------------

//============================================================
}
