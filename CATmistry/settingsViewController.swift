//
//  settingsViewController.swift
//  CATmistry
//
//  Created by Wang Zerui on 3/12/20.
//

import UIKit

class settingsViewController: UIViewController {

    @IBOutlet weak var point: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let navbar = UINavigationBarAppearance()
        navbar.backgroundColor = UIColor(red: 170/255, green: 143/255, blue: 102/255, alpha: 1)
        self.navigationController?.navigationBar.scrollEdgeAppearance = navbar
        
        point.text = " You have \(points) points"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
