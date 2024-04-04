//
//  DailyScrum.swift
//  TeamPlanning
//
//  Created by LB on 3/28/24.
//

import Foundation

//Data model
struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var theme: Theme

    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                   lengthInMinutes: 15,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInMinutes: 5,
                   theme: .poppy),
        DailyScrum(title: "Network",
                   attendees: ["Steve", "Will", "Sam", "Walt"],
                   lengthInMinutes: 30,
                   theme: .seafoam),
        DailyScrum(title: "It",
                   attendees: ["Mike", "Jim", "Lue", "Bill", "Dave"],
                   lengthInMinutes: 25,
                   theme: .indigo),
        DailyScrum(title: "HR",
                   attendees: ["Karen", "President", "Mary", "Dennis", "Doug", "Bert", "Agatha", "Tim", "Paul", "Henry"],
                   lengthInMinutes: 60,
                   theme: .bubblegum)
    ]
}
