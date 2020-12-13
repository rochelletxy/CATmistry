//
//  SettingsTableViewController.swift
//  CATmistry
//
//  Created by N HJ on 12/12/20.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    var settingsHeaderArray = [
        "Accessibility Settings",
        "General Statistics",
        "Find Gas Game",
        "Retrieve Solids Game",
        "Adjust pH Game",
        "Identify Elements Game",
        "Others",
    ]
    
    var settingsContentArray = [
        [
            SettingsContent(
                labelText: "Dyslexic Text",
                type: "switchCell",
                emojiImage: "🅰️"
            ),
            SettingsContent(
                labelText: "Haptics",
                type: "switchCell",
                emojiImage: "📳"
            ),
            SettingsContent(
                labelText: "Dark Mode",
                type: "switchCell",
                emojiImage: "🌙"
            ),
        ],
        
        [
            SettingsContent(
                labelText: "Chapters Covered:",
                type: "detailAccessoryCell",
                emojiImage: "📚"
            ),
            SettingsContent(
                labelText: "Hours Spent Learning:",
                type: "detailAccessoryCell",
                emojiImage: "⏰"
            ),
        ],
        
        [
            SettingsContent(
                labelText: "Number of Times Played: ",
                type: "detailAccessoryCell",
                emojiImage: "🎮"
            ),
            SettingsContent(
                labelText: "High Score: ",
                type: "disclosureIndicatorCell",
                emojiImage: "🏅"
            ),
        ],
        
        [
            SettingsContent(
                labelText: "Number of Times Played: ",
                type: "detailAccessoryCell",
                emojiImage: "🎮"
            ),
            SettingsContent(
                labelText: "High Score: ",
                type: "disclosureIndicatorCell",
                emojiImage: "🏅"
            ),
        ],
        
        [
            SettingsContent(
                labelText: "Number of Times Played: ",
                type: "detailAccessoryCell",
                emojiImage: "🎮"
            ),
            SettingsContent(
                labelText: "High Score: ",
                type: "disclosureIndicatorCell",
                emojiImage: "🏅"
            ),
        ],
        
        [
            SettingsContent(
                labelText: "Number of Times Played: ",
                type: "detailAccessoryCell",
                emojiImage: "🎮"
            ),
            SettingsContent(
                labelText: "High Score: ",
                type: "disclosureIndicatorCell",
                emojiImage: "🏅"
            ),
        ],
        
        [
            SettingsContent(
                labelText: "Authors and Acknoledgements: \nThis app would not have been possible without YJ Soon, Stephanie Ann Koh, and the entire Swift Accelerator 2020 Consult Team. \n\nThe CATmistry Team: \n1. Neo Hao Jun - CEO, Lead Developer \n2. Wang Zerui - CTO, Lead Developer \n3. Chanel Tan - CDO \n4. Ryu Hwina - CMO, Graphic Designer",
                type: "textCell",
                emojiImage: "👨‍💻"
            ),
            SettingsContent(
                labelText: "Share This Page",
                type: "buttonCell",
                emojiImage: ""
            ),
        ],
    ]
    
    @IBOutlet var settingsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        
        let navbar = UINavigationBarAppearance()
        navbar.backgroundColor = UIColor(red: 196/255, green: 169/255, blue: 124/255, alpha: 1)
        self.navigationController?.navigationBar.scrollEdgeAppearance = navbar
        
        //        gamePointsLabel.text = " You have \(points) points"
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func doneButtonClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return settingsContentArray.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return settingsContentArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: settingsContentArray[indexPath.section][indexPath.row].type, for: indexPath)
        
        // Configure the cell...
        if let cell = cell as? SettingsTableViewCell {
            if cell.reuseIdentifier != "shareCell" {
            cell.contentLabel.text = settingsContentArray[indexPath.section][indexPath.row].labelText
            cell.settingsImageView.image = settingsContentArray[indexPath.section][indexPath.row].emojiImage.image()
            }
        }
        
        if cell.reuseIdentifier == "detailAccessoryCell" || cell.reuseIdentifier == "switchCell" {
            cell.selectionStyle = .none
        }
        
        return cell
    }
    
    // Create a standard header that includes the returned text.
    override func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
        return settingsHeaderArray[section]
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.dequeueReusableCell(withIdentifier: settingsContentArray[indexPath.section][indexPath.row].type, for: indexPath)
        if cell.reuseIdentifier == "textCell" {
            return 100
        } else {
            return 45.0
        }
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension String
{
    func image(fontSize:CGFloat = 40, bgColor:UIColor = UIColor.clear, imageSize:CGSize? = nil) -> UIImage?
    {
        let font = UIFont.systemFont(ofSize: fontSize)
        let attributes = [NSAttributedString.Key.font: font]
        let imageSize = imageSize ?? self.size(withAttributes: attributes)
        
        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0)
        bgColor.set()
        let rect = CGRect(origin: .zero, size: imageSize)
        UIRectFill(rect)
        self.draw(in: rect, withAttributes: [.font: font])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}