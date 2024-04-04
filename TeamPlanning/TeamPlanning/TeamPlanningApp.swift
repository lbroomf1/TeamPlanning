//
//  TeamPlanningApp.swift
//  TeamPlanning
//
//  Created by LB on 3/28/24.
//

import SwiftUI

@main
struct TeamPlanningApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumView(scrums: DailyScrum.sampleData)
        }
    }
}
