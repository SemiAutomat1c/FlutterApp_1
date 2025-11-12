# Breakfast App 🥞

A beautiful and modern Flutter breakfast food app UI built with Material Design 3. This project showcases interactive components, smooth animations, and a responsive layout with SVG asset integration.

## 🎯 Features

- **📂 Category Selection**: Browse breakfast categories with smooth interactions
- **� Smart Recommendations**: Personalized food recommendations with detailed nutrition info
- **⭐ Popular Items**: Discover trending breakfast items with quick navigation
- **🎨 Modern UI**: Built with Material Design 3 and custom color schemes
- **�️ SVG Assets**: High-quality vector graphics for consistent visuals across all platforms
- **📱 Cross-Platform**: Works seamlessly on iOS, Android, macOS, and Web
- **🎯 Responsive Design**: Adapts beautifully to different screen sizes

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0): [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK (included with Flutter)
- A code editor (VS Code, Android Studio, or IntelliJ)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/SemiAutomat1c/FlutterApp_1.git
   cd newFlutterApp
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   # For web
   flutter run -d chrome
   
   # For macOS
   flutter run -d macos
   
   # For iOS/Android (requires connected device or emulator)
   flutter run
   ```

## 📁 Project Structure

```
newFlutterApp/
├── lib/
│   └── main.dart              # Main app entry point and UI components
├── assets/
│   └── icons/                 # SVG icon assets
│       ├── pancakes.svg
│       ├── honey-pancakes.svg
│       ├── canai-bread.svg
│       ├── blueberry-pancake.svg
│       ├── salmon-nigiri.svg
│       └── ... (other SVG files)
├── pubspec.yaml               # Project configuration and dependencies
└── README.md                  # This file
```

## 🎨 UI Components

### BreakfastScreen
Main screen component that organizes all sections:
- Header with navigation buttons
- Search bar with filter option
- Category section
- Recommendation section
- Popular items section

### _CategoryCard
Reusable component for browsing breakfast categories:
- Displays SVG icons or emojis
- Selected state highlighting
- Tap feedback and navigation

### _RecommendationCard
Feature cards for personalized recommendations:
- Centered SVG artwork
- Nutritional information
- Color-coded backgrounds (Blue for Honey Pancake, Pink for Canai Bread)
- "View" action button

### _PopularItem
List item for trending breakfast items:
- SVG icon display
- Item title and category
- Navigation arrow indicator

## 🎨 Design System

### Color Palette
- **Primary**: Blue (#2196F3) - Used for main actions and selected states
- **Secondary**: Pink (#E91E63) - Used for alternative actions
- **Background**: White (#FFFFFF) - Clean, minimal aesthetic
- **Accent**: Light Blue (#E3F2FD) and Light Pink (#F8E9F3) - Card backgrounds

### Typography
- **Font Family**: Poppins (custom font)
- **Headline**: 20px, Bold
- **Subheading**: 18px, Bold
- **Body**: 14px, Regular
- **Caption**: 12px, Regular

## 📦 Dependencies

- **flutter_svg**: ^2.0.0 - For rendering SVG assets
- **flutter_lints**: ^3.0.0 - For code quality and style
- **flutter_test**: For testing (dev dependency)

## 🛠️ Development

### Hot Reload
While the app is running, press `r` in the terminal to hot reload:
```bash
r - Hot reload
R - Hot restart
q - Quit
```

### Building for Production

**Web:**
```bash
flutter build web --release
```

**macOS:**
```bash
flutter build macos --release
```

**iOS:**
```bash
flutter build ios --release
```

**Android:**
```bash
flutter build apk --release
```

## 📝 Customization

### Adding New Categories
Edit the `_categories` list in `main.dart`:
```dart
_CategoryInfo(
  title: 'Your Category',
  emoji: '🎯',
  assetPath: 'assets/icons/your-icon.svg',
)
```

### Adding New Recommendations
Edit the `_recommendations` list in `main.dart`:
```dart
_RecommendationInfo(
  title: 'Your Item',
  details: 'Easy | 30mins | 250kCal',
  emoji: '🍽️',
  assetPath: 'assets/icons/your-food.svg',
  backgroundColor: Color(0xFFE3F2FD),
  buttonColor: Colors.blue,
)
```

## 📱 Platform-Specific Notes

### Web
- SVG assets are automatically served from the `assets/` directory
- Responsive design adapts to browser window size
- Works on all modern browsers (Chrome, Firefox, Safari, Edge)

### macOS
- Native macOS app support
- Uses system fonts and UI conventions
- Run with `flutter run -d macos`

### iOS/Android
- Platform-specific features and permissions handled by Flutter
- Test on physical devices for best results

## 🤝 Contributing

Contributions are welcome! Feel free to:
- Report bugs and issues
- Suggest new features
- Submit pull requests with improvements
- Improve documentation

## 📄 License

This project is open source and available under the MIT License. See LICENSE file for details.

## 👨‍💻 Author

Created with ❤️ for the Flutter community

## 🔗 Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Material Design Guidelines](https://material.io/design)
- [Dart Documentation](https://dart.dev/guides)
- [Flutter SVG Package](https://pub.dev/packages/flutter_svg)

---

**Last Updated**: November 2025
