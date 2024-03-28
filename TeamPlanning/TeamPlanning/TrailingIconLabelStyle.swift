//
//  TrailingIconLabelStyle.swift
//  TeamPlanning
//
//  Created by LB on 3/28/24.
//

import SwiftUI

struct TrailingInconLableStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingInconLableStyle {
    static var trailingIcon: Self {Self()}
}
