
# Clima Weather App

A Flutter app that provides real-time weather information based on the user's location or by searching for a specific city. The app integrates with the OpenWeatherMap API and uses geolocation to provide accurate, current weather data with a user-friendly interface.

## Screenshot

<p align="center">
  <figure style="display: inline-block; margin: 10px;">
    <img src="images/home_screen_screenshot.png" alt="Home Screen" width="25%">
    <figcaption>Home Screen</figcaption>
  </figure>
</p>

## Features
- **Location-Based Weather**: Fetches weather data based on the user’s current location.
- **City Search**: Allows users to search for the weather in any city.
- **Weather Icons and Messages**: Displays custom icons and messages based on the weather conditions.
- **Styled Interface**: Designed with a clean and intuitive UI.

## Prerequisites

- **Flutter SDK**
- **Geolocator Package**: For accessing location data.
- **http Package**: For making network requests.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/clima_weather_app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd clima_weather_app
   ```
3. Install the required dependencies:
   ```bash
   flutter pub get
   ```

4. Set up environment variables:
   - Open `weather.dart` and replace `'YOUR_APP_ID'` with your actual OpenWeatherMap API key.

## Usage

1. **Run the App**:
   ```bash
   flutter run
   ```
2. Once the app is running, it will:
   - Automatically fetch and display the weather for your current location.
   - Allow you to search for the weather in a different city by tapping the city icon.

## Code Overview

- **main.dart**: Sets up the app with a dark theme and loads the `LoadingScreen`.
- **LoadingScreen**: Fetches the user's current location and weather data.
- **LocationScreen**: Displays weather data, including temperature, city, and a custom message.
- **CityScreen**: Allows the user to enter a city name and fetch weather data for that city.
- **WeatherModel**: Handles network requests to the OpenWeatherMap API and provides methods for formatting weather data.

## License

This project is licensed under the MIT License.
