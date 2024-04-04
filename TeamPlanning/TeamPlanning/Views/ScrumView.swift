//
//  ScrumView.swift
//  TeamPlanning
//
//  Created by LB on 3/28/24.
//

import SwiftUI

struct ScrumView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scrums) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button( action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("new scrum")
            }
        }
    }
}

#Preview {
    ScrumView(scrums: DailyScrum.sampleData)
}
