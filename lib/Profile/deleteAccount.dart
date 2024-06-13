import 'package:flutter/material.dart';

class Deleteaccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Deleteaccount(),
    );
  }
}

class deleteAccount extends StatelessWidget {
  void _deleteAccount(BuildContext context) async {
    // Simulasi proses penghapusan akun
    await Future.delayed(Duration(seconds: 2));

    print('Account deleted');

    // Arahkan ke halaman login setelah penghapusan
    Navigator.of(context).popUntil((route) => route.isFirst);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  void _showDeleteAccountDialog(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    final String correctPassword =
        'password123'; // Kata sandi yang benar untuk contoh

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
                controller: passwordController,
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
                if (passwordController.text == correctPassword) {
                  _deleteAccount(context);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Incorrect password')),
                  );
                }
              },
              child: Text('Delete Account'),
              style: TextButton.styleFrom(
                foregroundColor:
                    Colors.red, // Parameter yang benar untuk warna teks
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showDeleteAccountDialog(context),
          child: Text('Delete Account'),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Text('Please log in.'),
      ),
    );
  }
}
