//============================================================
import UIKit
//============================================================
class StartController: UIViewController {
    @IBOutlet weak var highscoreLabel: UILabel!
    //------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedScore = SingletonShared.SingletonSharedInstance.savedHighScore.object(forKey: "score")!
        highscoreLabel.text = "HIGHSCORE : \(String(describing: savedScore))"
        
        
//        SingletonShared.SingletonSharedInstance.manageScore()
//        highscoreLabel.text = "HIGHSCORE : \(SingletonShared.SingletonSharedInstance.highscore!)"
    }
   //-------------------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //-------------------------------------------
    @IBAction func resetHighscore(_ sender: UIButton) {
        
        highscoreLabel.text = "HIGHSCORE : 0"
        SingletonShared.SingletonSharedInstance.resetHighscore()
        
        
    }

    
    
    
    //-------------------------------------------

    
    
    
//============================================================

}

