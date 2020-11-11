//
//  MainView.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/3/20.
//

import SwiftUI

struct MainView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: K.Ic.standings)
                    Text(K.Tab.standings)
                }
            MatchesView(pods: [])
                .tabItem {
                    Image(systemName: K.Ic.round1)
                    Text(K.Tab.round1)
                }
            MatchesView(pods: [])
                .tabItem {
                    Image(systemName: K.Ic.round2)
                    Text(K.Tab.round2)
                }
            MatchesView(pods: [])
                .tabItem {
                    Image(systemName: K.Ic.round3)
                    Text(K.Tab.round3)
                }
        }//: TABVIEW
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
