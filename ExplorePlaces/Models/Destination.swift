//
//  Destination.swift
//  ExplorePlaces
//
//  Created by Bishal Paudel on 11/4/25.
//

import Foundation
import CoreLocation

struct Destination: Identifiable {
    let id = UUID()
    let name: String
    let country: String
    let description: String
    let latitude: Double
    let longitude: Double
    let imageName: String
    var isVisited: Bool = false
}
