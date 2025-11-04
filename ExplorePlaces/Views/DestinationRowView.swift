//
//  DestinationRowView.swift
//  ExplorePlaces
//
//  Created by Bishal Paudel on 11/4/25.
//

import SwiftUI

struct DestinationRowView: View {
    let destination: Destination

    var body: some View {
        HStack(spacing: 14) {
            Image(destination.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                .shadow(radius: 3)

            VStack(alignment: .leading, spacing: 4) {
                Text(destination.name)
                    .font(.headline)
                Text(destination.country)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            Spacer()

            if destination.isVisited {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
                    .imageScale(.large)
            }
        }
        .padding(8)
        .background(.ultraThinMaterial)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.1), radius: 3)
    }
}
