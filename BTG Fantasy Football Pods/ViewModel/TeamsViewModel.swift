//
//  TeamsViewModel.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/11/20.
//

import Foundation
import FirebaseFirestore

class TeamsViewModel: ObservableObject {
    @Published var teams = [Team]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("teams").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No docs...")
                return
            }
            
            self.teams = documents.map { queryDocumentSnapshot -> Team in
                let data = queryDocumentSnapshot.data()
                let id = data["id"] as? Int ?? -1
                let name = data["name"] as? String ?? ""
                let icon = data["icon"] as? String ?? ""
                let wins = data["wins"] as? Int ?? -1
                let losses = data["losses"] as? Int ?? -1
                let rank = data["rank"] as? Int ?? -1
                
                return Team(id: id, name: name, icon: icon, wins: wins, losses: losses, rank: rank)
            }
        }
    }
}
