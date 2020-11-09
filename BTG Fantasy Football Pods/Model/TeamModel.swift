//
//  TeamModel.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/3/20.
//

import SwiftUI

struct Team: Codable, Identifiable {
    let id: Int
    let name: String
    let owner: String
    let icon: String
    let wins: Int
    let losses: Int
    let percentage: Float
    let description: String 
}
