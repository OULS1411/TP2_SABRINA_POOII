//============================================================
import UIKit
//============================================================
class SingletonShared {
    //var highscore: String!
    var scoreForWrongInterface: String!
    var savedHighScore = UserDefaults.standard
    static let SingletonSharedInstance = SingletonShared()
    //------------------------------------------
    init() {
    
     //savedHighScore.removeObject(forKey: "score")
     //manageScore()
        saveDefaultIfNeeded()
    }
    
    //------------------------------------------
//    func manageScore() {
//        if let hs = savedHighScore.object(forKey: "score"){
//            highscore = String (describing: hs)
//        }else{
//        savedHighScore.setValue("0", forKey: "score")
//        
//        }
//    }
    
    //------------------------------------------
    func saveDefaultIfNeeded(){
    
        if savedHighScore.object(forKey: "score") == nil {
        savedHighScore.setValue("0", forKey: "score")
        
        }
    
    }
    
    //------------------------------------------
    func saveScore (_ aScore: String){
    let a = Int(aScore)
    let b = savedHighScore.object(forKey: "score") as? String
    let c = Int(b!)
        
        if a! > c! {
        savedHighScore.setValue(aScore, forKey: "score")
       
        }
    }
     //------------------------------------------
    
    func resetHighscore(){
        savedHighScore.removeObject(forKey: "score")
        saveDefaultIfNeeded()
    }
    
    
    

}
//============================================================
