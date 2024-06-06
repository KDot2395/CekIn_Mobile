import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/Profile/profilePage.dart';

class Profileupdatepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Update',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileUpdatePage(),
    );
  }
}

class ProfileUpdatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile Update'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Profile Information'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ProfileInformationPage(),
          ],
        ),
      ),
    );
  }
}

class ProfileInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile Information',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.cyan),
          ),
          SizedBox(height: 8),
          Text(
            "Update your account's profile information and email address.",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Text('SAVE'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.cyan,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            ),
          ),
        ],
      ),
    );
  }
}
