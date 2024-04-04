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
        List(scrums) { scrum in
        CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumView(scrums: DailyScrum.sampleData)
}
