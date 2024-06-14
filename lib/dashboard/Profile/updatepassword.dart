import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/dashboard/Profile/landingprofile.dart';

class Updatepassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Update Password',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.cyan),
          ),
          SizedBox(height: 8),
          Text(
            "Ensure your account is using a long, random password to stay secure.",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'Current Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'New Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Landingprofile()));
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
