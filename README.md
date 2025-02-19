
# Implementing Clean Architecture with Dependency Injection

## Overview
This project implements Clean Architecture principles in a Flutter application, organizing it into distinct layers for better separation of concerns and maintainability. The implementation includes a Presentation Layer, Domain Layer, and Data Layer, utilizing dependency injection for enhanced modularity.

## Project Structure
```
lib/  
├── app/  
│   ├── core/  
│   │   ├── errors/  
│   │   ├── network/  
│   │   └── services/  
│   ├── features/  
│   │   └── main_screen/  
│   │       ├── data/  
│   │       ├── domain/  
│   │       └── presentation/  
│   └── l10n/  
└── main.dart  
```

## Requirements
- **Flutter SDK**: `^3.5.0`
- **Packages**:
  - `bloc: ^8.1.4`
  - `dio: ^5.8.0+1`
  - `dartz: ^0.10.1`
  - `flutter_bloc: ^8.1.6`
  - `get_it: ^8.0.3`
- Additional packages as listed in `pubspec.yaml`.

## Implementation Steps

### 1. Set Up the Project:
- Create a new Flutter project with a structured folder layout.
- Ensure core components (errors, services, network) are in place.

### 2. Develop Use Case:
- Implement a simple use case to fetch a list of users.
- Define a repository interface and concrete implementation.

### 3. Configure Dependency Injection:
- Utilize a DI package (e.g., GetIt) to register services, repositories, and use cases.
- Set up the DI container in the `dependency_injection.dart` file.

### 4. State Management:
- Create a ViewModel or Cubit/BLoC for managing UI state.
- Inject necessary dependencies into the ViewModel.

### 5. UI Development:
- Build a simple UI to display the fetched user data.
- Ensure the UI reacts to state changes via the BLoC/Cubit.

## Example Output
The UI displays a list of user data, including names and email addresses, fetched from a remote source.

## Running the App
To run the application, execute:

```bash
flutter pub get  
flutter run  
```

## License
This project is licensed under the MIT License.

## Acknowledgements
This project was created following Clean Architecture principles to enhance code maintainability and readability.
