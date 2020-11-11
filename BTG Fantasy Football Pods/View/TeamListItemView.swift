//
//  TeamListItemView.swift
//  BTG Fantasy Football Pods
//
//  Created by Jonathan Sweeney on 11/4/20.
//

import SwiftUI

struct TeamListItemView: View {
    // MARK: - PROPERTIES
    
    let team: Team
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(team.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4) {
                Text(team.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.blue)
                HStack(spacing:16) {
                    Text("\(team.wins) - \(team.losses)")
                        .fontWeight(.bold)
                    Text("\(team.pct, specifier: "%.3f")")
                }
            }
        }
    }
}

struct TeamListItemView_Previews: PreviewProvider {
    static let teams: [Team] = testData
    static var previews: some View {
        TeamListItemView(team: teams[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
