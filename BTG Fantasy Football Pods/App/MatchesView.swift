//
//  Scoreboard.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/3/20.
//

import SwiftUI

struct MatchesView: View {
    // MARK: - PROPERTIES
    var pods: [Pod]
    // MARK: - BODY
    
    var body: some View {
        Text("MatchesView")
    }
}

// MARK: - PREVIEW

struct Matches_Previews: PreviewProvider {
    static let pods: [Pod] = [Pod(teams: [], ranking: 0, points: 1.1)]
    static var previews: some View {
        MatchesView(pods: pods)
    }
}
