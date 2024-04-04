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
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme

    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map { Attendee(name: $0) }
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name:String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
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
        DailyScrum(title: "IT",
                   attendees: ["Mike", "Jim", "Lue", "Bill", "Dave"],
                   lengthInMinutes: 25,
                   theme: .tan),
        DailyScrum(title: "HR",
                   attendees: ["Karen", "President", "Mary", "Dennis", "Doug", "Bert", "Agatha", "Tim", "Paul", "Henry"],
                   lengthInMinutes: 60,
                   theme: .bubblegum)
    ]
}
