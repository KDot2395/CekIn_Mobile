import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/dashboard/profile/bookmark/bookmark.dart';
import 'Search.dart';
import 'profile/landingprofile.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlue.shade100,
              Colors.lightBlue.shade400,
            ],
          ),
        ),
        child: Column(
          children: [
            AppBar(
              title: Text(
                'Dashboard',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              // actions: [
              //   IconButton(
              //     icon: Icon(Icons.add),
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => AddWeatherPage()));
              //     },
              //   ),
              // ],
            ),
            Expanded(child: _buildBody()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard, color: _currentIndex == 0 ? Colors.blue : Colors.transparent),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: _currentIndex == 1 ? Colors.blue : Colors.transparent),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: _currentIndex == 2 ? Colors.blue : Colors.transparent),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: _currentIndex == 3 ? Colors.blue : Colors.transparent),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF00A8E8),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          switch (index) {
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookmarkPage()), // Mengarahkan ke BookmarkPage
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
            // Handle other taps if needed
          }
        },
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentIndex) {
      case 0:
        return _buildDashboard();
      case 1:
        return Container(); // Placeholder for SearchPage, implement as needed
      case 2:
        return Container(); // Placeholder, not used since we navigate to BookmarkPage directly
      case 3:
        return Container(); // Placeholder for ProfilePage, implement as needed
      default:
        return Container();
    }
  }

  Widget _buildDashboard() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '"Secure Steps Begin by Grasping Weather, Using the Cekin App!"',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            WeatherCard(),
          ],
        ),
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Bogor, West Java',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black), // Black text
          ),
          SizedBox(height: 10),
          Text(
            '25°C',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black), // Black text
          ),
          Text(
            'Sunday, 11 am',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Chip(
                label: Text('Scattered Clouds'),
                backgroundColor: Color(0xFFe9a0b7), // Pink chip background
                labelStyle: TextStyle(color: Colors.white), // White text
              ),
              SizedBox(width: 10),
              Chip(
                label: Text('Clouds'),
                backgroundColor: Color(0xFFb4badc), // Light blue chip background
                labelStyle: TextStyle(color: Colors.white), // White text
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: Text('VIEW STATS'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF5e4fc1), // Purple button background
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ),
          ),
          SizedBox(height: 10),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.water_drop, color: Color(0xFF00A8E8)), // Blue icon
                    Text('Humidity', style: TextStyle(color: Color(0xFF00A8E8))), // Blue text
                    Text('32%', style: TextStyle(color: Color(0xFF00A8E8))), // Blue text
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.wind_power, color: Color(0xFF00A8E8)), // Blue icon
                    Text('Wind', style: TextStyle(color: Color(0xFF00A8E8))), // Blue text
                    Text('3.6 m/sec', style: TextStyle(color: Color(0xFF00A8E8))), // Blue text
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
