//
//  DestinationListView.swift
//  ExplorePlaces
//
//  Created by Bishal Paudel on 11/4/25.
//

import SwiftUI

struct DestinationListView: View {
    @State private var destinations = sampleDestinations
    @State private var showGrid = false

    var body: some View {
        NavigationView {
            ZStack {
                AppColors.background.ignoresSafeArea()

                VStack(spacing: 10) {
                    // Toggle between list and grid
                    Toggle(isOn: $showGrid) {
                        Label("Show Grid View", systemImage: showGrid ? "square.grid.2x2" : "list.bullet")
                            .font(.headline)
                    }
                    .padding(.horizontal)
                    .toggleStyle(SwitchToggleStyle(tint: .purple))

                    // Main content
                    if showGrid {
                        ScrollView {
                            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                                ForEach(destinations.indices, id: \.self) { index in
                                    NavigationLink(destination: DestinationDetailView(destination: $destinations[index])) {
                                        VStack(alignment: .leading, spacing: 6) {
                                            Image(destinations[index].imageName)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(height: 140)
                                                .clipped()
                                                .cornerRadius(12)

                                            VStack(alignment: .leading) {
                                                Text(destinations[index].name)
                                                    .font(.headline)
                                                Text(destinations[index].country)
                                                    .font(.subheadline)
                                                    .foregroundColor(.secondary)
                                            }
                                            .padding(.horizontal, 4)

                                            if destinations[index].isVisited {
                                                Label("Visited", systemImage: "checkmark.circle.fill")
                                                    .font(.caption)
                                                    .foregroundColor(.green)
                                                    .padding(.horizontal, 4)
                                            }
                                        }
                                        .padding(8)
                                        .background(.ultraThinMaterial)
                                        .cornerRadius(16)
                                        .shadow(color: .black.opacity(0.2), radius: 6, x: 0, y: 3)
                                    }
                                }
                            }
                            .padding()
                        }
                    } else {
                        List {
                            ForEach(destinations.indices, id: \.self) { index in
                                NavigationLink(destination: DestinationDetailView(destination: $destinations[index])) {
                                    DestinationRowView(destination: destinations[index])
                                }
                                .listRowBackground(Color.clear)
                            }
                        }
                        .scrollContentBackground(.hidden)
                    }
                }
            }
            .navigationTitle("🌍 ExplorePlaces")
        }
    }
}
