//
//  ContentView.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/3/20.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let teams: [Team] = Bundle.main.decode("teams.json")
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            Group {
                List {
                    ForEach(teams) { team in
                        TeamListItemView(team: team)
                    }
                }//: LIST
            }//: GROUP
            .navigationBarTitle(K.AppName)
        }//: NAV
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static let teams: [Team] = Bundle.main.decode("teams.json")
    static var previews: some View {
        ContentView()
    }
}
