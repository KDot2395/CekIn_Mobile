import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/dashboard/Search.dart';
import 'package:test_installasi_flutter/dashboard/addWeather/addWeatherPage.dart';

import 'package:test_installasi_flutter/dashboard/addWeather/weatherInfoPage.dart';
import 'package:test_installasi_flutter/dashboard/dashboard.dart';
import 'package:test_installasi_flutter/dashboard/profile/deleteaccount.dart';

class BookmarkPage extends StatefulWidget {
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  int _selectedIndex = 2; // Initially set to 2 to highlight the Bookmark tab
  List<Map<String, dynamic>> _bookmarkedWeathers = [
    {
      'city': 'Bogor',
      'temperature': 25,
      'isDay': true,
      'backgroundImage': 'assets/images/skyLight.png',
    },
    {
      'city': 'Bandung',
      'temperature': 23,
      'isDay': true,
      'backgroundImage': 'assets/images/skyLight.png',
    },
    {
      'city': 'London',
      'temperature': 14,
      'isDay': false,
      'backgroundImage': 'assets/images/skyNight.png',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DashboardScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SearchPage()),
        );
        break;
      case 2:
        // Current page, no action needed
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
    }
  }

  void _onCardTap(BuildContext context, String city) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WeatherInfoPage(city: city)),
    ).then((value) {
      if (value != null && value == 'deleted') {
        _removeWeather(city);
      }
    });
  }

  void _removeWeather(String city) {
    setState(() {
      _bookmarkedWeathers.removeWhere((weather) => weather['city'] == city);
    });
  }

  Future<void> _addNewWeather(BuildContext context) async {
    final newWeather = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddWeatherPage()),
    );

    if (newWeather != null) {
      setState(() {
        _bookmarkedWeathers.add({
          'city': newWeather['cityName'],
          'temperature': 20, // Example temperature, you might want to fetch this dynamically
          'isDay': true, // Example value, set accordingly
          'backgroundImage': 'assets/images/skyLight.png', // Example value, set accordingly
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bookmark',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _addNewWeather(context),
          ),
        ],
      ),
      body: ListView(
        children: _bookmarkedWeathers.map((weather) {
          return WeatherCard(
            city: weather['city'],
            temperature: weather['temperature'],
            isDay: weather['isDay'],
            onTap: () => _onCardTap(context, weather['city']),
            backgroundImage: weather['backgroundImage'],
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  final String city;
  final int temperature;
  final bool isDay;
  final VoidCallback onTap;
  final String backgroundImage;

  const WeatherCard({
    Key? key,
    required this.city,
    required this.temperature,
    required this.isDay,
    required this.onTap,
    required this.backgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$temperature°',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: isDay ? Colors.black : Colors.white,
                  ),
                ),
                Text(
                  city.toUpperCase(),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: isDay ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
