import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/HomePage/HomePage.dart';
import 'package:test_installasi_flutter/Profile/profilePage.dart';
import 'package:test_installasi_flutter/WeatherPage/addWeatherPage.dart';
import 'package:test_installasi_flutter/WeatherPage/weatherInfoPage.dart';


/*
import 'package:test_installasi_flutter/dashboard/Search.dart';
import 'package:test_installasi_flutter/dashboard/addWeather/addWeatherPage.dart';

import 'package:test_installasi_flutter/dashboard/addWeather/weatherInfoPage.dart';
import 'package:test_installasi_flutter/dashboard/dashboard.dart';
import 'package:test_installasi_flutter/dashboard/profile/deleteaccount.dart';
*/



class BookmarkPage extends StatefulWidget {
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

  
List<IconData> navIcons = [
  Icons.home,
  Icons.search,
  Icons.bookmark,
  Icons.person
];

List<String> navTitle = [
  "Home",
  "Search",
  "Bookmark",
  "Profile",
];

int selectedIndex = 2;

class _BookmarkPageState extends State<BookmarkPage> {
  // Initially set to 2 to highlight the Bookmark tab
  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
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
      body: Stack(
        children: [
          ListView(
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
          Positioned(
            left: 15,
            top: 430,
            child: _navBar(context, updateSelectedIndex),
          ),
        ],
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


Widget _navBar(BuildContext context, Function(int) onTap) {
  return Center(
    child: Container(
      alignment: Alignment.center,
      height: 65,
      width: 275,
      margin: const EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 20,
            spreadRadius: 10,
          )
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: navIcons.asMap().entries.map((entry) {
            int index = entry.key;
            IconData icon = entry.value;
            bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                onTap(index);
                if (index == 0) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                } // Call the callback function
                else if (index == 2) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookmarkPage()));
                } else if (index == 3) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                } // Call the callback function
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      color: isSelected ? Colors.blue : Colors.grey,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      navTitle[index],
                      style: TextStyle(
                        color: isSelected ? Colors.blue : Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ),
  );
}
