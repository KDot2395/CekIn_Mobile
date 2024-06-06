import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/Profile/LogoutPage.dart';
import 'package:test_installasi_flutter/Profile/editProfilePage.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Profile information card
          Card(
            color: Color(0xFF00CCFF),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profile_image.png'),
              ),
              title: Text(
                'Ariiq enzoy',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                '@Ariiqaf',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          // Options list
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person_outline, color: Colors.blue),
                  title: Text('Edit Profile'),
                  subtitle: Text('Make changes to your account'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.blue),
                  title: Text('Log out'),
                  subtitle: Text('Further secure your account for safety'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogoutPage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.delete_outline, color: Colors.blue),
                  title: Text('Delete Account'),
                  subtitle: Text('Permanently delete your account'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DeleteAccountPage()),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // More section
          Card(
            child: ListTile(
              leading: Icon(Icons.info_outline, color: Colors.blue),
              title: Text('About App'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Add functionality if needed
              },
            ),
          ),
        ],
      ),
    );
  }
}
