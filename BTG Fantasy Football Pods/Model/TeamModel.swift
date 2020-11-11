//
//  TeamModel.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/11/20.
//

import Foundation
import FirebaseFirestore

struct Team: Identifiable, Codable, Comparable {
    var id: Int
    var name: String
    var icon: String
    var wins: Int
    var losses: Int
    var rank: Int
    
    var pct: Float {
        Float(wins) / Float(wins + losses)
    }
    
    static func < (lhs: Team, rhs: Team) -> Bool {
        lhs.rank < rhs.rank
    }
}

let testData = [
//    Team(id: 1, name: "Skibbidy Dibbidy", icon: "travis-icon"),
//    Team(id: 2, name: "Your Champ", icon: "josh-icon"),
//    Team(id: 3, name: "Scotty Never Knew", icon: "scott-icon"),
    Team(id: 4, name: "Dakstreet Boys", icon: "jon-icon", wins: 5, losses: 4, rank: 4),
//    Team(id: 5, name: "New England Deflatriots", icon: "adam-icon"),
//    Team(id: 6, name: "Hail Meri", icon: "meri-icon"),
//    Team(id: 7, name: "I am Here So I Won't Get Fined", icon: "shawn-icon"),
//    Team(id: 8, name: "Multiple Scoregasms", icon: "matt-icon"),
//    Team(id: 9, name: "Hogstown Fat Chix", icon: "joel-icon"),
    Team(id: 10, name: "Jenny Up The Block", icon: "jenny-icon", wins: 2, losses: 7, rank: 10)
]
