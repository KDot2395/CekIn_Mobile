import 'package:flutter/material.dart';

class MyAccountPage extends StatefulWidget {
  @override
  _MyAccountPageState createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  bool _isSaveEnabled = false;

  void _validateForm() {
    final isValid = _formKey.currentState?.validate() ?? false;
    setState(() {
      _isSaveEnabled = isValid;
    });
  }

  void _showSnackBarAndNavigate() {
    final snackBar = SnackBar(content: Text('Your Account has been updated'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pop(context); // Navigate back to the previous screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('My Account'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          onChanged: _validateForm,
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150'), // Replace with your image URL
              ),
              SizedBox(height: 10),
              Text(
                'Ariiq enzoy',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                '@Ariiqaf',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Enter your Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Enter your Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!value.endsWith('@gmail.com')) {
                    return 'Please enter a valid Gmail address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _isSaveEnabled
                    ? () {
                        if (_formKey.currentState?.validate() ?? false) {
                          _showSnackBarAndNavigate();
                        }
                      }
                    : null,
                child: Text('SAVE'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
