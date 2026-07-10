# Online Library Management System

This project was developed as a final assignment for the **Advanced Programming** course. It implements a client-server architecture for an online library, featuring a modular separation between the user interface and the server-side logic.

## Project Overview

The system is designed in two main phases:

*   **Frontend (Client):** Built with **Flutter**, providing a responsive and user-friendly interface for browsing and interacting with the library catalog.
*   **Backend (Server):** Built with **Dart**, handling the core application logic, data management, and request processing.

## Project Structure

The repository is organized to maintain a clear separation of concerns:

- `/lib`: Contains the complete Flutter source code for the frontend application.
- `Second.dart`: Contains the primary backend implementation and server logic.
- `/android`, `/ios`, `/web`, `/windows`, `/macos`, `/linux`: Configuration files for cross-platform deployment.

## Development Status

This project successfully implements the business logic for both the frontend and backend independently. 
Both frontend and backend modules are implemented in a modular structure.
> Note: Client–server real-time communication (socket integration) can be extended/improved further.


## How to Run

To run the components locally, ensure you have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.

### Run the Frontend:
Navigate to the root directory and run:
```bash
flutter run
