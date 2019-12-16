//
//  ViewController.swift
//  stadia_achievements
//
//  Created by Michael Hardin on 12/16/19.
//  Copyright © 2019 Michael Hardin. All rights reserved.
//

import UIKit

class GameViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
    var dataManager = DataManager()
    var game = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Games"
        tableView.delegate = self
        tableView.dataSource = self
        dataManager.parseJSON()
        tableView.rowHeight = 50.0
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GCell", for: indexPath) as! GameCell
        let g = dataManager.games[indexPath.row]
        let a = dataManager.achievements
        var items = 0
        var completedItems = 0
         
        for item in a {
            if item.applicationName == g{
                items+=1
                if item.progress == "100%"{
                    completedItems += 1
                }
            }
            
        }
        
        cell.titleLabel.text = g
        cell.progressLabel.text = "\(completedItems) | \(items)"
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        game = dataManager.games[indexPath.row]
        performSegue(withIdentifier: "ToDetailVC", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ToDetailVC" {
            let destVC = segue.destination as! AchievementViewController
            destVC.dataManager = dataManager
            destVC.game = game
            
        }
    }
    
    
    
}

