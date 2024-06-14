import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/Login/loginpage.dart';
import 'package:test_installasi_flutter/dashboard/Profile/profileUpdatePage.dart';
import 'package:test_installasi_flutter/dashboard/profile/updatepassword.dart';
import 'aboutuspage.dart';

class Landingprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ProfileHeader(),
          SizedBox(height: 20),
          ProfileMenuItem(
            icon: Icons.account_circle,
            text: 'Edit Profile Information',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyAccountPage()),
              );
            },
          ),
          ProfileMenuItem(
            icon: Icons.edit,
            text: 'Update Password',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Updatepassword()),
              );
            },
          ),
          ProfileMenuItem(
            icon: Icons.logout,
            text: 'Log out',
            onTap: () {
              _showLogoutDialog(context);
            },
          ),
          ProfileMenuItem(
            icon: Icons.delete,
            text: 'Delete Account',
            onTap: () {
              _showDeleteAccountDialog(context);
            },
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.info_outline, color: Colors.blue),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => aboutuspage()),
              );
            },
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Column(
            children: [
              Icon(Icons.sentiment_dissatisfied, size: 50, color: Colors.blue),
              SizedBox(height: 10),
              Text('Oh no ! you\'re leaving.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Are you sure ?', style: TextStyle(fontSize: 16)),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('no , just kidding'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text('yes , log me out'),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        );
      },
    );
  }

  void _showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return DeleteAccountDialog();
      },
    );
  }
}

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://via.placeholder.com/150'), // Replace with your image URL
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ariiq enzoy',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '@Ariiqaf',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.edit, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  ProfileMenuItem(
      {required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(text),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}

class DeleteAccountDialog extends StatefulWidget {
  @override
  _DeleteAccountDialogState createState() => _DeleteAccountDialogState();
}

class _DeleteAccountDialogState extends State<DeleteAccountDialog> {
  final TextEditingController _passwordController = TextEditingController();

  void _deleteAccount() {
    if (_passwordController.text == 'your_password') {
      // Replace with actual password check
      Navigator.of(context).pop();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (context) => LoginPage()), // Navigate to your login page
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Incorrect password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Column(
        children: [
          Icon(Icons.warning, size: 50, color: Colors.red),
          SizedBox(height: 10),
          Text('Are you sure you want to delete your account?',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
              'Once your account is deleted, all of its resources and data will be permanently deleted. Please enter your password to confirm you would like to permanently delete your account.'),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _deleteAccount,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Text('Delete Account'),
        ),
      ],
    );
  }
}
