import 'package:flutter/material.dart';
// import 'package:test_installasi_flutter/HomePage/HomePage.dart';
import 'package:test_installasi_flutter/dashboard/Bookmark/addWeatherPage.dart';
import 'package:test_installasi_flutter/dashboard/Bookmark/weatherInfoPage.dart';
// import 'package:test_installasi_flutter/dashboard/Profile/landingprofile.dart';
// import 'package:test_installasi_flutter/dashboard/SearchPage/SearchCityInfo.dart';

class Bookmarkpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarkPage(),
    );
  }
}

class BookmarkPage extends StatefulWidget {
  @override
  _BookmarkPageState createState() => _BookmarkPageState();
}

class _BookmarkPageState extends State<BookmarkPage> {
  int _currentIndex = 0; // Initially set to 1 to highlight the Bookmark tab

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });

//     switch (index) {
//       case 0:
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => Homepage()),
//         );
//         break;
//       case 1:
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => SearchCityInfo()),
//         );
//         break;
//       case 2:
//         // Current page, no action needed
//         break;
//       case 3:
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => Landingprofile()),
//         );
//         break;
//     }
//   }

  void _onCardTap(BuildContext context, String city) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WeatherInfoPage(city: city)),
    );
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
            backgroundImage: 'assets/images/skyLight.png',
          ),
          WeatherCard(
            city: 'Bandung',
            temperature: 23,
            isDay: true,
            onTap: () => _onCardTap(context, 'Bandung'),
            backgroundImage: 'assets/images/skyLight.png',
          ),
          WeatherCard(
            city: 'London',
            temperature: 14,
            isDay: false,
            onTap: () => _onCardTap(context, 'London'),
            backgroundImage: 'assets/images/skyNight.png',
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bookmark),
      //       label: 'Bookmark',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profile',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.grey,
      //   onTap: _onItemTapped,
      // ),
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
