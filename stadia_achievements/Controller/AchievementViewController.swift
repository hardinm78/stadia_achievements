//
//  AchievementViewController.swift
//  stadia_achievements
//
//  Created by Michael Hardin on 12/16/19.
//  Copyright © 2019 Michael Hardin. All rights reserved.
//

import UIKit

class AchievementViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var game : String?
    var dataManager : DataManager?
    var gameAchievements = [Achievement]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 50.0
        
        if game != nil && dataManager != nil {
            title = game
            for item in dataManager!.achievements{
                if item.applicationName == game {
                    gameAchievements.append(item)
                }
            }           
        }        
    }
}





//MARK: - table view
extension AchievementViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gameAchievements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ACell", for: indexPath) as! AchievementCellTableViewCell
        cell.nameLabel.text = gameAchievements[indexPath.row].achievementName
        cell.descLabel.text = gameAchievements[indexPath.row].description
        if gameAchievements[indexPath.row].progress == "100%"{
            cell.backgroundColor = .green
            cell.mikeImageView.isHidden = false
        }else {
            cell.backgroundColor = UIColor.init(red: 90, green: 255, blue: 8, alpha: 0.07)
            cell.mikeImageView.isHidden = true
        }
        return cell
    }
}
