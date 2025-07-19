# 🌿 PlantAppUI-Flutter

A clean and user‑friendly **Plant Care & Shopping App UI** built with **Flutter**.

## 📱 Demo Preview

| Home Screen | Plant Detail Page |
|-------------|-------------------|
| ![Home](https://github.com/devanshmutha09/PlantAppUI-Flutter/blob/main/screenshots/ScreenShot%20(1).png) | ![Details](https://github.com/devanshmutha09/PlantAppUI-Flutter/blob/main/screenshots/ScreenShot%20(2).png) |


## 🚀 Features

- 🎨 Modern UI with smooth horizontal scroll for plant selections  
- 🧭 Category selectors (e.g., Popular, Indoor, Outdoor, New Arrivals)  
- 🪴 Dynamic plant detail page displaying:  
  - Image, name, price (₹), type, category  
  - Key properties: light, water, temperature  
- 🧩 Reusable widgets: `ProductCard`, `PropertyCard`, `Categories`  
- 🔡 Custom fonts used via `google_fonts`

## 🧱 Project Structure

```
lib/
├── main.dart                   # App entry point
├── models/
│   ├── productmodel.dart       # Defines Plant
│   └── propertymodel.dart      # Defines Property
├── pages/
│   ├── home_page.dart          # Main home/dashboard UI
│   ├── plantdetailpage.dart    # Plant details screen
│   ├── categories.dart         # Plant category selector
│   └── productcard.dart        # Scrollable plant tiles
├── widgets/
│   └── propertycard.dart       # Property tile for light, water, etc.
├── data/
│   ├── productdata.dart        # Sample Plant data (dummyPlants)
│   └── dummypropertydata.dart  # Sample Property data
└── pubspec.yaml
```

## 📦 Dependencies

- **google_fonts** – For Poppins (clean, modern typography)
- (Any other packages you add)

## ✔️ Getting Started

1. **Clone the repo**
   ```bash
   git clone https://github.com/devanshmutha09/PlantAppUI-Flutter.git
   cd PlantAppUI-Flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**

   On Android/iOS emulator or physical device:
   ```bash
   flutter run
   ```

4. **To build an APK:**
   ```bash
   flutter build apk --release
   ```

## 🧩 Usage / Code Overview

- **HomePage**: Displays app bar, search bar, categories (`Categories`), plant list (`ProductCard`), and future content section.
- **ProductCard**: Shows horizontal tiles of plants and navigates to `PlantDetailPage` on tap.
- **PlantDetailPage**: Receives a `Plant` object, uses `PropertyCard` to display light, water, temperature info from `dummyProperties`.
- **PropertyCard**: Displays single property in a styled container.

## 🎨 Customization Tips

- Adjust color themes by editing the `backgroundColor` in dummyPlants in `productdata.dart`
- Swap to custom fonts using `pubspec.yaml`
- Add more plant entries or categories in the dummy data files

## 📌 Future Enhancements

- Add add‑to‑cart functionality
- Persist plant data or favorites using local storage (e.g. Hive, SQLite)
- Add animations and more detailed design polish
- Implement navigation using `go_router`
- Add search/filtering behavior

---

© 2025 Devansh Mutha · Designed with 💚 using Flutter
