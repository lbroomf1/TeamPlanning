//
//  Theme.swift
//  TeamPlanning
//
//  Created by LB on 3/28/24.
//

import SwiftUI

enum Theme: String {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    //Color property named accent color, the accent color uses many color which ensure the views are accessible 
    var accentColor: Color {
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    
    //property initalize a color from the asset catalog
    var mainColor: Color {
        Color(rawValue)
    }
    
    //property that capitalizes the name
    var name: String {
        rawValue.capitalized
    }
}

