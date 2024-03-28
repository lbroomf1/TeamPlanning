//
//  ContentView.swift
//  TeamPlanning
//
//  Created by LB on 3/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 25)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Time Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 mintues total")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("next speaker")
            }
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
