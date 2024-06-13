import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/Bookmark/BookmarkPage.dart';
import 'package:test_installasi_flutter/Login/loginpage.dart';
import 'package:test_installasi_flutter/Profile/AboutApp.dart';
import 'package:test_installasi_flutter/Profile/profileUpdatePage.dart';
import 'package:test_installasi_flutter/Profile/updatepassword.dart';

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home Page')),
    Center(child: Text('Bookmark Page')),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BookmarkPage()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/avatar.png'),
                    radius: 30,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ariiq enzoy',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'ariiq@gmail.com',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit Profile Information'),
                    subtitle: Text('Make changes to your account'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileUpdatePage()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.key),
                    title: Text('Update Password'),
                    subtitle: Text('Make changes to your password'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Updatepassword()));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Log out'),
                    subtitle: Text('Further secure your account for safety'),
                    onTap: () {
                      _showLogoutDialog(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.verified_user),
                    title: Text('Delete Account'),
                    subtitle: Text('Permanently delete your account'),
                    onTap: () {
                      _showDeleteAccountDialog(context);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'More',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('About App'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutApp()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Oh no! You\'re leaving.'),
          content: Text('Are you sure?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  void _deleteAccount(BuildContext context) async {
    // Simulate account deletion process
    await Future.delayed(Duration(seconds: 2));

    print('Account deleted');

    // Navigate to the login page after deletion
    Navigator.of(context).pop();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure you want to delete your account?'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Once your account is deleted, all of its resources and data will be permanently deleted.',
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                _deleteAccount(context);
              },
              child: Text('Delete Account'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.red, // Correct parameter for text color
              ),
            ),
          ],
        );
      },
    );
  }
}
