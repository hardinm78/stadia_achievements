//
//  Achievements.swift
//  stadia_achievements
//
//  Created by Michael Hardin on 12/16/19.
//  Copyright © 2019 Michael Hardin. All rights reserved.
//

import Foundation

struct AchievementData : Codable {
//    let achievements : [String:[[String:String]]]
    let achievements : [String : [Achievement]]
    
}

//struct Items : Codable {
//    let items : [Achievement]
//    
//}

struct Achievement : Codable {
    let applicationName : String?
    let achievementName : String?
    let description : String?
    let progress : String?
}
