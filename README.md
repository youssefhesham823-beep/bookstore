# 📚 Bookia - Book Store App

A modern Flutter bookstore app with a clean and elegant UI, built with Clean Architecture and BLoC pattern.

---

## ✨ Features (In Progress)

- 🔐 Authentication (Login, Register, Forgot Password, OTP, Reset Password)
- 🏠 Home Screen with Best Sellers
- 📖 Book Details
- ❤️ Wishlist
- 🛒 Cart & Checkout
- 📦 Place Order
- 🔍 Search
- 👤 Profile & Update Profile
- 🌍 Multi-language Support (Arabic & English)

---

## 🛠️ Tech Stack

- **Flutter** - UI Framework
- **Cubit/BLoC** - State Management
- **Clean Architecture** - Project Structure
- **Easy Localization** - Arabic & English Support
- **Flutter ScreenUtil** - Responsive UI
- **Flutter Gen** - Asset Generation

---

## 📁 Project Structure
```
lib/
├── core/
│   ├── theme/
│   └── widgets/
├── feature/
│   ├── auth/
│   │   ├── cubit/
│   │   ├── data/
│   │   └── ui/
│   └── welcome/
│       ├── cubit/
│       ├── data/
│       └── ui/
└── gen/
```

---

## 🚀 Getting Started
```bash
# Clone the repo
git clone https://github.com/youssefhesham823-beep/bookstore.git

# Install dependencies
flutter pub get

# Run code generation
flutter pub run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

---

## 🎨 Design

Designed in Figma with a clean and minimal UI using a gold color palette.

---

## 📌 Status

🚧 Under Active Development