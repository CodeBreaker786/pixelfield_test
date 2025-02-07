# Pixelfield Test Task

## Overview
This Flutter project is a test task assigned by Pixelfield, implementing a whiskey collection app with offline storage and network-based updates using the BLoC pattern. The app fetches data from local JSON files when online and updates a local database for offline usage.

## Features
- **Flutter (Latest Stable Version) with Null Safety**
- **State Management: BLoC Pattern**
- **Data Storage: Drift (SQLite)**
- **Network Connectivity Check: connectivity_plus**
- **Offline Support** (Uses local database when offline, updates when online)
- **Pull-to-Refresh Mechanism**
- **JSON Mock Data as API Replacement**
- **Styling with Google Fonts**
- **Persisted Data Using Shared Preferences**

---

## Project Setup
### Prerequisites
Ensure you have Flutter installed:
- Flutter SDK (Latest Stable)
- Dart SDK

### Installation
1. Clone the repository:
   ```sh
   git clone <repository_link>
   ```
2. Navigate to the project directory:
   ```sh
   cd pixelfield_test
   ```
3. Install dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

---

## Folder Structure
```
lib/
│── blocs/               # BLoC state management
│── models/              # Data models
│── repository/          # Data fetching and handling
│── screens/             # UI screens
│── widgets/             # Reusable UI components
│── data/                # Local database (Drift)
│── core/                # Helper utilities
│── main.dart            # Entry point
assets/
│── images/              # Image assets
│── json/                # Mock JSON data
```

---

## Dependencies Used & Justification
### 1. **flutter_bloc** (State Management)
   - Manages app state in an organized manner.
   - Provides better scalability and testability.

### 2. **shared_preferences** (Persistent Data Storage)
   - Used to store simple key-value data such as user settings.
   
### 3. **connectivity_plus** (Network Connectivity Detection)
   - Detects network availability to decide whether to fetch from JSON or local database.

### 4. **drift & drift_flutter** (Local Database)
   - Handles offline storage of fetched data.
   - Ensures smooth offline user experience.

### 5. **path_provider** (File System Access)
   - Required by Drift to store the SQLite database.

### 6. **google_fonts** (Styling)
   - Provides modern and customizable fonts.

### 7. **build_runner & drift_dev** (Code Generation)
   - Used for generating database code and models dynamically.

---

## Functionality Explanation
### **Data Fetching & Storage**
- On **first launch** or when **online**, the app loads data from the JSON files inside `assets/json/`.
- The fetched data is stored in an SQLite database using **Drift**.
- If the user **refreshes by pulling down**, it checks network availability:
  - **If online**: Loads fresh data from JSON and updates the database.
  - **If offline**: Retrieves data from local storage.
- **New JSON records require a restart** to reflect changes since they reside in the assets folder.

### **Offline Mode**
- If there's **no internet**, the app loads from the local database instead of the JSON files.
- Users can still filter and search through stored data offline.

### **Pull-to-Refresh**
- If **online**, it fetches and updates the database.
- If **offline**, it fetches from the local database.

### **Styling & UI Enhancements**
- Implemented using **Material Design Guidelines**.
- **Google Fonts** for a modern look.
- UI is responsive across different screen sizes.

---

## Time Tracking
- **Estimated Time**: 5-6 hours
- **Time Taken**: 6 hours
- **Further Improvements Needed**:
  - Implement more screens for full functionality.
  - Add animations for smoother user experience.

---

## Final Thoughts
This project provides a solid base for an offline-first app with state management. If required, I can enhance it further by implementing additional templates, animations, or REST API integration.

---

**Thank you for the opportunity! Feel free to reach out for any questions.** 😊

