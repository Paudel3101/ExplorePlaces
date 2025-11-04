//
//  AppColors.swift
//  ExplorePlaces
//
//  Created by Bishal Paudel on 11/4/25.
//

import SwiftUI

struct AppColors {
    static let accentGradient = LinearGradient(
        gradient: Gradient(colors: [Color.blue.opacity(0.7), Color.purple.opacity(0.7)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )

    static let background = Color("AppBackground")
}
