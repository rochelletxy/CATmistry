//
//  PlayWrongAnswerViewController.swift
//  CATmistry
//
//  Created by N HJ on 8/12/20.
//

import UIKit

class PlayWrongAnswerViewController: UIViewController {
    
    var currentLevel: Int!
    var currentGame: Int!

    @IBOutlet weak var nextGameButton: UIButton!
    @IBOutlet weak var sadLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nextGameButton.layer.cornerRadius = 25
        sadLabel.text = "Oh no! \n\nYour answer was wrong, and your cat died. \n\nDon't worry though, a cat has 9 lives, and you still have \(String(10 - currentGame)) rounds remaining in Level \(String(currentLevel + 1)). Good luck!"
    }
    
    @IBAction func nextGameClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    //MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}