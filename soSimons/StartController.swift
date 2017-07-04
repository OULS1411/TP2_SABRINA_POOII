//============================================================
import UIKit
//============================================================
class StartController: UIViewController {
    @IBOutlet weak var highscoreLabel: UILabel!
    //------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
       //------------------
        highscoreLabel.text = "HIGHSCORE : \(SingletonShared.SingletonSharedInstance.highscore)"
    }
   //-------------------------------------------
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//============================================================

}

