# Insight360 – Flutter News App

Insight360 is a Flutter news application that allows users to explore the latest headlines, search for news articles by keyword, and view article details. The app integrates with NewsAPI using Dio for HTTP requests and Cubit for state management.

---

## Key Features

- **Splash Screen:** Introductory screen displayed when the application launches.
- **Login & Sign-Up Screens:** User interface forms for entering account information.
- **Dynamic News Feed:** Fetches top headlines from NewsAPI and displays them in a scrollable list.
- **Topic Filtering:** Provides topic buttons on the home screen to retrieve related news results.
- **News Search:** Allows users to search for articles using keywords.
- **Article Details:** Displays available article information, including the image, title, author, publication date, description, and content.
- **State Management:** Uses Cubit to manage API loading, success, and error states.
- **Curved Bottom Navigation:** Provides navigation between the Home and Search screens.

> **Note:** Login and sign-up are currently interface flows and are not connected to a real authentication backend. Article bookmarking and a saved-articles screen are not currently implemented.

---

## Project Architecture & Structure

The application separates API services, state management, data models, screens, and reusable UI components.

```text
lib/
├── core/
│   └── api_service.dart          # NewsAPI integration using Dio
├── cubit/
│   ├── home_cubit.dart           # Fetches headlines and search results
│   └── home_state.dart           # Loading, success, and error states
├── models/
│   └── article_model.dart        # News article data model
├── screens/
│   ├── home.dart                 # Main news feed and topic buttons
│   ├── home_details.dart         # Article details screen
│   ├── login_screen.dart         # Login interface
│   ├── main_search_screen.dart   # Search input screen
│   ├── search_result_screen.dart # Search results
│   ├── signup_screen.dart        # Sign-up interface
│   └── splash.dart               # Splash screen
├── widgets/
│   ├── circle_icon.dart
│   ├── custom_app_bar_details.dart
│   ├── custom_button.dart
│   ├── custom_text_form_field.dart
│   └── nav_bar.dart
└── main.dart                     # Application entry point
```

---

## Tech Stack & Dependencies

- **Framework:** Flutter & Dart
- **State Management:** `flutter_bloc` using Cubit
- **Networking:** `dio` for HTTP requests
- **News Data:** [NewsAPI](https://newsapi.org/)
- **Navigation:** `curved_navigation_bar`
- **Data Model:** Dart model for parsing article JSON responses

---

## Getting Started

Follow these steps to run the application locally.

### 1. Prerequisites

Make sure Flutter is installed on your computer.

Check your installation:

```bash
flutter doctor
```

### 2. Clone the Repository

```bash
git clone https://github.com/menna-khalill/Insight360-Flutter-NewsApp.git
cd Insight360-Flutter-NewsApp
```

### 3. Install Dependencies

```bash
flutter pub get
```

### 4. Configure the NewsAPI Key

The application reads the API key using Dart's `String.fromEnvironment('API_KEY')`.

Create a local `.env` file in the project root and add your own NewsAPI key:

```dotenv
API_KEY=your_newsapi_key_here
```

Never commit your actual `.env` file or publish your API key in the repository.

**Security note:** Using `--dart-define-from-file` keeps the key out of the source code, but it does not make a key embedded in a distributed client app fully secret. A backend service is recommended for production applications.

### 5. Run the Application

From the project root, run:

```bash
flutter run --dart-define-from-file=.env
```

---

## API Integration

Insight360 uses [NewsAPI](https://newsapi.org/) to retrieve top headlines and search for articles by keyword.

---

## License

This project is intended for educational and demonstration purposes.
