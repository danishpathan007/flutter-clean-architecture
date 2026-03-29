# Flutter Clean Architecture

## 📱 Overview

This project demonstrates a scalable Flutter application structure following Clean Architecture principles.

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
* Bloc (State Management)
* Clean Architecture

---

## 🚀 Features

* Modular folder structure
* Separation of concerns
* Reusable components
* Scalable project setup

---

## 📂 Folder Structure

```
lib/
 ┣ core/
 ┃ ┣ error/
 ┃ ┣ network/
 ┃ ┗ utils/
 ┣ features/
 ┃ ┗ auth/
 ┃   ┣ data/
 ┃   ┃ ┣ datasources/
 ┃   ┃ ┣ models/
 ┃   ┃ ┗ repositories/
 ┃   ┣ domain/
 ┃   ┃ ┣ entities/
 ┃   ┃ ┣ repositories/
 ┃   ┃ ┗ usecases/
 ┃   ┗ presentation/
 ┃     ┣ bloc/
 ┃     ┣ pages/
 ┃     ┗ widgets/
 ┗ main.dart
```

---

## 💡 Why This Project

This project is created to demonstrate how to structure Flutter apps for scalability, maintainability, and clean code practices.

---

## 🧠 Key Learnings

* Separation of layers
* Dependency inversion
* Maintainable architecture

---

