import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/HomePage/HomePage.dart';
import 'package:test_installasi_flutter/Profile/profilePage.dart';
import 'package:test_installasi_flutter/addWeather/addWeatherPage.dart';

class Bookmarkpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarkPage(),
    );
  }
}

class BookmarkPage extends StatelessWidget {
  void _onCardTap(BuildContext context, String city) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Clicked on $city card!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmark'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddWeatherPage()));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          WeatherCard(
            city: 'Bogor',
            temperature: 25,
            isDay: true,
            onTap: () => _onCardTap(context, 'Bogor'),
            backgroundImage: 'assets/icons/skyLight.png',
          ),
          WeatherCard(
            city: 'Bandung',
            temperature: 23,
            isDay: true,
            onTap: () => _onCardTap(context, 'Bandung'),
            backgroundImage: 'assets/icons/skyLight.png',
          ),
          WeatherCard(
            city: 'London',
            temperature: 14,
            isDay: false,
            onTap: () => _onCardTap(context, 'London'),
            backgroundImage: 'assets/icons/skyNight.png',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
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
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
              break;
            case 1:
              // Current page, no action needed
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
          }
        },
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
            Icon(
              isDay ? Icons.wb_sunny : Icons.nights_stay,
              size: 40.0,
              color: isDay ? Colors.yellow : Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
