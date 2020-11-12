//
//  ContentView.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/3/20.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @ObservedObject var teamsViewModel = TeamsViewModel()
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            Group {
                List {
                    ForEach(teamsViewModel.teams.sorted()) { team in
                        TeamListItemView(team: team)
                    }//: LOOP
                }//: LIST
            }//: GROUP
            .navigationBarTitle(K.Tab.standings)
            .onAppear() {
                self.teamsViewModel.fetchData()
            }
        }//: NAV
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static let teams: [Team] = testData
    static var previews: some View {
        ContentView()
    }
}
