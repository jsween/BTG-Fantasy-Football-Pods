//
//  Scoreboard.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/3/20.
//

import SwiftUI

struct MatchesView: View {
    // MARK: - PROPERTIES
    var title: String
    // MARK: - BODY
    
    var body: some View {
        Text("MatchesView")
    }
}

// MARK: - PREVIEW

struct Matches_Previews: PreviewProvider {
    
    static var previews: some View {
        MatchesView(title: K.Tab.round1)
    }
}
