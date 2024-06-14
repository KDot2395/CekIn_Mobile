import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/dashboard/addWeather/editWeatherPage.dart';

class WeatherInfoPage extends StatelessWidget {
  final String city;

  const WeatherInfoPage({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For demonstration purposes, let's assume we have a Weather object
    // You should replace this with your actual data fetching logic from API
    Weather weather = Weather(
      cityName: city,
      temperature: 25, // Example temperature
      weatherType: 'Sunny', // Example weather type
      condition: 'Clear', // Example weather condition
      pressure: 1013, // Example pressure in hPa
      humidity: 60, // Example humidity in %
      windSpeed: 10, // Example wind speed in m/s
      createDate: DateTime.now(), // Example creation date
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Weather Info',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditWeatherPage(city: city),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildWeatherInfoRow(
                      Icons.wb_sunny, 'Weather Type', weather.weatherType),
                  _buildWeatherInfoRow(
                      Icons.cloud, 'Condition', weather.condition),
                  _buildWeatherInfoRow(Icons.thermostat, 'Temperature',
                      '${weather.temperature}°C'),
                  _buildWeatherInfoRow(
                      Icons.trending_up, 'Pressure', '${weather.pressure} hPa'),
                  _buildWeatherInfoRow(
                      Icons.water, 'Humidity', '${weather.humidity}%'),
                  _buildWeatherInfoRow(
                      Icons.speed, 'Wind Speed', '${weather.windSpeed} m/s'),
                  _buildWeatherInfoRow(Icons.calendar_today, 'Created at',
                      '${weather.createDate}'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _showDeleteWeatherDialog(context);
                  },
                  child: Text(
                    'DELETE WEATHER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, // Make text bold
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Set background color here
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherInfoRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                value,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showDeleteWeatherDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Weather'),
          content: Text('Are you sure you want to delete this weather data?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Add your weather deletion logic here
                Navigator.of(context).pop();
                Navigator.pop(context); // Go back to BookmarkPage
              },
              child: Text('Delete'),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                textStyle:
                    TextStyle(color: Colors.white), // Set text color here
              ),
            ),
          ],
        );
      },
    );
  }
}

class Weather {
  final String cityName;
  final int temperature;
  final String weatherType;
  final String condition;
  final int pressure;
  final int humidity;
  final int windSpeed;
  final DateTime createDate;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.weatherType,
    required this.condition,
    required this.pressure,
    required this.humidity,
    required this.windSpeed,
    required this.createDate,
  });
}