//
//  DataManager.swift
//  stadia_achievements
//
//  Created by Michael Hardin on 12/16/19.
//  Copyright © 2019 Michael Hardin. All rights reserved.
//

import Foundation



 struct DataManager {
    
    
    var achievements = [Achievement]()
    var games = [String]()
    
    
    mutating func parseJSON(){
        
        do{
            let jsonData = try Data(contentsOf: Bundle.main.url(forResource: "ACHIEVEMENTS", withExtension: "json")!)
            let decoder = JSONDecoder()

            do {
                let decodedData = try decoder.decode(AchievementData.self, from: jsonData)
                if let items = decodedData.achievements["items"]{
                    
                    for item in items {
                        if item.achievementName != nil{
                            achievements.append(Achievement(applicationName: item.applicationName, achievementName: item.achievementName, description: item.description, progress: item.progress))
                        }                        
                    }
                    
                    for game in achievements{
                        let title = game.applicationName
                        if !games.contains(title!){
                            games.append(title!)
                        }
                    }
                }
                
            }catch{
                print(error.localizedDescription)
            }
            
            
        }catch{
            print(error.localizedDescription)
        }
        
        
        
        
        
        
    }
    
    
}
