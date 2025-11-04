<div align="center" style="background: linear-gradient(135deg, #4B6CB7, #182848); color: white; padding: 30px; border-radius: 12px;">
  <h1>🌍 ExplorePlaces</h1>
  <h3>A Beautiful SwiftUI Travel Destination App</h3>
  <p>Built by <a href="https://github.com/Paudel3101" style="color: #FFD700; text-decoration: none;">@Paudel3101</a></p>
</div>

---

<div style="padding: 20px;">

### ✨ Overview
**ExplorePlaces** is a location-based travel app built with **SwiftUI** and **MapKit**.  
It displays a list or grid of famous travel destinations, lets users explore detailed information, and shows an interactive map with pin annotations.

The app supports **Dark Mode**, features a clean, modern design, and includes a “Visited” toggle that updates dynamically.

---

### 🏗️ Features

<div style="display: flex; flex-wrap: wrap; gap: 10px;">

<div style="flex: 1; min-width: 280px; background-color: #f9f9f9; border-radius: 8px; padding: 15px; box-shadow: 0 2px 6px rgba(0,0,0,0.1);">
<h4>📋 Destination List</h4>
<ul>
<li>5+ destinations displayed using <code>List</code> or <code>LazyVGrid</code>.</li>
<li>Each card shows name, country, and image.</li>
<li>Adaptive dark/light background.</li>
</ul>
</div>

<div style="flex: 1; min-width: 280px; background-color: #f9f9f9; border-radius: 8px; padding: 15px; box-shadow: 0 2px 6px rgba(0,0,0,0.1);">
<h4>🗺️ Map Integration</h4>
<ul>
<li>SwiftUI <code>Map</code> view with region zoom and pin markers.</li>
<li>Uses <code>Marker()</code> API (iOS 17+).</li>
<li>Shows accurate coordinates for each location.</li>
</ul>
</div>

<div style="flex: 1; min-width: 280px; background-color: #f9f9f9; border-radius: 8px; padding: 15px; box-shadow: 0 2px 6px rgba(0,0,0,0.1);">
<h4>🎨 Dark Mode Design</h4>
<ul>
<li>Automatic color scheme adaptation.</li>
<li>Custom gradient headers & material backgrounds.</li>
<li>Styled toggle and shadow effects for depth.</li>
</ul>
</div>

</div>

---

### 🧩 Tech Stack
| Component       | Technology        |
|-----------------|-------------------|
| **Framework**   | SwiftUI           |
| **Maps**        | MapKit (iOS 17+)  |
| **Language**    | Swift 5+          |
| **UI Elements** | List, LazyVGrid, NavigationStack |
| **Design**      | SF Symbols, Gradients, Dark Mode |

---

### 📂 File Structure
```
ExplorePlaces/
│
├── ExplorePlacesApp.swift
├── Models/
│ └── Destination.swift
├── Data/
│ └── SampleData.swift
├── Views/
│ ├── DestinationListView.swift
│ ├── DestinationDetailView.swift
│ └── DestinationRowView.swift
├── Theme/
│ └── AppColors.swift
└── Assets.xcassets/
└── (images and color sets)
```

---

### 🗺️ Map Implementation

```swift
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
```

💻 Setup & Run

Clone the repo:

git clone https://github.com/Paudel3101/ExplorePlaces.git


Open in Xcode 15 or newer, and run on iOS 17+ simulator or device.

🧾 License

MIT License © 2025 @Paudel3101

<div align="center" style="margin-top: 30px;"> <img src="https://img.shields.io/badge/SwiftUI-%F0%9F%93%9D-blue?style=for-the-badge"> <img src="https://img.shields.io/badge/iOS-17+-green?style=for-the-badge"> <img src="https://img.shields.io/badge/MapKit-%F0%9F%8C%8D-purple?style=for-the-badge"> </div> ```

