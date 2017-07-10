//============================================================
import UIKit
//============================================================
class SingletonShared {
    var highscore: String!
    var scoreForWrongInterface: String!
    var savedHighScore = UserDefaults.standard
    static let SingletonSharedInstance = SingletonShared()
    //------------------------------------------
    init() {
    
     //savedHighScore.removeObject(forKey: "score")
     manageScore()
    }
    
    //------------------------------------------
    func manageScore() {
        if let hs = savedHighScore.object(forKey: "score"){
            highscore = String (describing: hs)
        }else{
        savedHighScore.setValue("0", forKey: "score")
        
        }
    }
    
    //------------------------------------------
    func saveScore (_ aScore: String){
    let a = aScore
    let b = highscore
        if a > b! {
        savedHighScore.setValue(aScore, forKey: "score")
        highscore = a
        }
    }
     //------------------------------------------

}
//============================================================
