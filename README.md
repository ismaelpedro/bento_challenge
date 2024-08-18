# Bento Design Challenge

This project was developed as part of the Bento Design Challenge. The goal was to create a functional and aesthetically pleasing mobile application that closely matches a given design, implementing smooth navigation between two pages: Home and Item Detail. The project is designed to run on both Android and iOS platforms and follows the MVC (Model-View-Controller) architecture.

## Project Structure

The project is structured as follows:

```plaintext
lib/
│
├── core/
│ └── models/
│ ├── category_dto.dart
│ ├── home_dto.dart
│ └── top_deal_dto.dart
│
├── features/
│ └── home/
│ ├── repositories/
│ │ ├── i_home_repository.dart
│ │ └── mock_home_repository.dart
│ │
│ ├── views/
│ │ ├── home_view.dart
│ │ └── item_detail_view.dart
│ │
│ └── widgets/
│ ├─── category_item.dart
│ ├─── special_item.dart
│ └── ─home_controller.dart
│
└── main.dart
```


### Explanation of the Project Structure

- **Features/home:** The main feature in this project is the Home feature, which includes:
- **Models:** Contains the data models (DTOs) that represent the structure of the data used in the application.
  - **Repositories:** The data handling layer with an interface for repository abstraction and a mock implementation for simulating API responses.
  - **Views:** The UI layer that includes the `HomeView` and `ItemDetailView`.
  - **Widgets:** Reusable UI components and the controller that handles the business logic for the `HomeView`.

## State Management: ValueNotifier

### Why ValueNotifier?

For this project, I chose `ValueNotifier` for state management because of its simplicity and efficiency in managing a single value state. `ValueNotifier` is ideal for scenarios where you want to rebuild specific parts of the UI based on the changes of a single value.

#### Key Reasons for Choosing ValueNotifier:

- **Performance:** `ValueNotifier` is lightweight, and it avoids unnecessary rebuilds, making it perfect for scenarios with simple state management needs.
- **Simplicity:** `ValueNotifier` does not require any external libraries or boilerplate code, keeping the project clean and easy to maintain.
- **Responsiveness:** It provides immediate and responsive updates to the UI, ensuring a smooth user experience.

For example, the `isFavorite` state in the `ItemDetailView` is managed using a `ValueNotifier`. This approach allows us to trigger the favorite icon's pulsating animation whenever the user interacts with the favorite button.

## Features and Functionality

1. **Home Page (`HomeView`)**
   - Displays a list of top deals in a `PageView` with smooth transitions and auto-scrolling functionality.
   - Showcases special items and categories, each with its own custom widget.
   - Implements navigation to the Item Detail page with a Hero transition for a smooth visual effect.

2. **Item Detail Page (`ItemDetailView`)**
   - Displays detailed information about the selected item, including its image, name, rating, and tags.
   - Allows users to favorite the item with a pulsating animation effect when the favorite button is pressed.
   - Provides an "Add to Cart" button with a responsive design.

3. **MVC Architecture**
   - **Model:** DTOs representing the data structure.
   - **View:** Stateless widgets for UI representation.
   - **Controller:** Handles the business logic and state management using `ValueNotifier`.

## Animations

The project includes custom animations for enhancing the user experience:

- **Hero Animation:** Used for smooth transitions between the `Home` and `ItemDetail` views.
- **Pulsating Favorite Button:** A pulsating effect is added to the favorite button to give a visual indication when an item is favorited.

## Deployment

This application has been tested and is fully functional on both iOS and Android platforms.
