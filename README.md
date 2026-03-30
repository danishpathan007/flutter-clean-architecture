# Flutter Clean Architecture

## 📱 Overview

This project demonstrates a production-ready authentication module using Clean Architecture with latest Riverpod AsyncNotifier.

---

## 🧱 Architecture Layers
This project follows 3 layers:
* **Presentation** → UI & State Management
* **Domain** → Business Logic & Use Cases
* **Data** → Models, API & Repository Implementations

---

## ⚙️ Tech Stack

* Flutter
* Dart
* Riverpod (AsyncNotifier + Code Generation)
* Equatable
* Clean Architecture

---

## 🚀 Features

* Modern login UI
* Async authentication flow with Riverpod `@riverpod`
* Global loader + toast helpers
* Reusable app widgets (button, textfield)
* Mock API login flow (easy to replace with real backend)
* Strict clean architecture separation

---

## 📂 Folder Structure

``` 
lib/
 ┣ core/
 ┃ ┣ error/
 ┃ ┣ network/
 ┃ ┣ utils/
 ┃ ┃ ┣ app_loader.dart
 ┃ ┃ ┗ app_toast.dart
 ┃ ┗ widgets/
 ┃   ┣ app_button.dart
 ┃   ┗ app_textfield.dart
 ┣ features/
 ┃ ┗ auth/
 ┃   ┣ data/
 ┃   ┃ ┣ datasources/
 ┃   ┃ ┃ ┣ auth_remote_datasource.dart
 ┃   ┃ ┃ ┗ auth_remote_datasource_impl.dart
 ┃   ┃ ┣ models/
 ┃   ┃ ┃ ┗ user_model.dart
 ┃   ┃ ┗ repositories/
 ┃   ┃   ┗ auth_repository_impl.dart
 ┃   ┣ domain/
 ┃   ┃ ┣ entities/
 ┃   ┃ ┃ ┗ user.dart
 ┃   ┃ ┣ repositories/
 ┃   ┃ ┃ ┗ auth_repository.dart
 ┃   ┃ ┗ usecases/
 ┃   ┃   ┗ login_usecase.dart
 ┃   ┗ presentation/
 ┃     ┣ providers/
 ┃     ┃ ┣ auth_provider.dart
 ┃     ┃ ┗ auth_provider.g.dart
 ┃     ┣ pages/
 ┃     ┃ ┗ login_page.dart
 ┃     ┗ widgets/
 ┗ main.dart
```

---

## 🔐 Mock Login

Use these credentials:

* `test@test.com`
* `123456`

---

## 💡 Why This Project

This project is created to demonstrate how to structure Flutter apps for scalability, maintainability, and clean code practices.

---

## 🧠 Key Learnings

* Separation of layers
* Dependency inversion
* Async state handling with `AsyncNotifier`
* Maintainable and scalable architecture

---
