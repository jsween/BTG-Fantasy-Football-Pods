//
//  Pod.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/8/20.
//

import SwiftUI

struct Pod: Identifiable {
    var id = UUID()
    let teams: [Team]
    let ranking: Int
    let points: Float
}
