//
//  DestinationDetailView.swift
//  ExplorePlaces
//
//  Created by Bishal Paudel on 11/4/25.
//

import SwiftUI
import MapKit

struct DestinationDetailView: View {
    @Binding var destination: Destination
    @State private var position: MapCameraPosition

    init(destination: Binding<Destination>) {
        self._destination = destination

        let coordinate = CLLocationCoordinate2D(
            latitude: destination.wrappedValue.latitude,
            longitude: destination.wrappedValue.longitude
        )

        // Initialize new-style MapCameraPosition
        self._position = State(initialValue: .region(
            MKCoordinateRegion(
                center: coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            )
        ))
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                // Header image and info
                ZStack(alignment: .bottomLeading) {
                    Image(destination.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .frame(height: 250)
                        .clipped()

                    VStack(alignment: .leading, spacing: 4) {
                        Text(destination.name)
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                        Text(destination.country)
                            .font(.headline)
                            .foregroundColor(.white.opacity(0.8))
                    }
                    .padding()
                    .background(LinearGradient(colors: [.black.opacity(0.7), .clear],
                                               startPoint: .bottom, endPoint: .top))
                }

                // Description
                VStack(alignment: .leading, spacing: 12) {
                    Text("About")
                        .font(.title2.bold())
                    Text(destination.description)
                        .foregroundColor(.secondary)
                        .lineSpacing(5)
                }
                .padding(.horizontal)

                // ✅ Updated Map View (iOS 17 style)
                Map(position: $position) {
                    Marker(destination.name,
                           coordinate: CLLocationCoordinate2D(
                               latitude: destination.latitude,
                               longitude: destination.longitude
                           ))
                    .tint(.purple)
                }
                .frame(height: 250)
                .cornerRadius(12)
                .padding()

                // Visited toggle
                Toggle(isOn: $destination.isVisited) {
                    Label("Mark as Visited", systemImage: "checkmark.circle")
                        .font(.headline)
                }
                .toggleStyle(SwitchToggleStyle(tint: .purple))
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(12)
                .padding(.horizontal)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
