```markdown
# City Guide App

City Guide App is a simple yet informative application that helps users explore cities and their must-visit places. The app features a list of cities, with each city having its own detail page displaying an important visual and the top attractions to visit.

## Features

- **City Listing**: Displays a list of cities in a table view.
- **City Details**: Shows important visuals and must-see places for each city.
- **Navigation**: Allows seamless navigation from the city list to the detailed view of each city.
- **Interactive TableView**: Tap on a city to view more details and its attractions.

## How It Works

1. **Model Creation**:
   - Created a model for the cities, which includes:
     - The name of the city.
     - A photo of an important landmark or area in the city.
     - A list of must-visit places.
   - The model also includes an `init` function to initialize these properties.

2. **TableView Setup**:
   - Filled the table view with city names and the places to visit.
   - Configured the TableView to properly display the list of cities and their respective places.

3. **City Details Page**:
   - Designed a detailed page for each city.
   - When a city is selected in the TableView, the name and photo of the city, along with the list of places to visit, are pulled and displayed on the details page.

4. **Testing**:
   - Performed usage tests to ensure the smooth functionality of both the TableView and the details page.

## Requirements

- Xcode 14+
- iOS 15+
- Swift 5.7+

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your_username/city-guide-app.git
   cd city-guide-app
   ```

2. Open the project in Xcode:
   ```bash
   open CityGuideApp.xcodeproj
   ```

3. Run the project on a simulator or a physical device.

## Video Demo

https://github.com/user-attachments/assets/32597a90-810b-438b-a39a-98f05a7de2a7

## Technologies Used

- **Swift**: Programming language for development.
- **TableView**: For displaying the list of cities.
- **Custom Model**: For holding city data, including names, photos, and places to visit.
- **Storyboard**: For designing the user interface.

## Future Improvements

- Add more cities and expand the places to visit list.
- Implement a search feature to allow users to quickly find a city.
- Add more detailed information for each city, such as descriptions and opening hours for places to visit.
- Introduce a map view for users to see the locations of the places to visit.
