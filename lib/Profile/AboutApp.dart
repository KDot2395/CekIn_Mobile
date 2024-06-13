import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/Profile/profilePage.dart';

class Aboutapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Us Page',
      home: AboutApp(),
    );
  }
}

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/backgroundAbout.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ), // Extra padding to compensate for app bar
                    Center(
                      child: Text(
                        'About Us',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/icons/logo.png', // replace with your logo asset path
                        height:
                            120, // Adjust the height to make the logo bigger
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ), // Additional space to move content down
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'CekIn ',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text:
                                'is a weather data storage application developed by CekInteractive, utilizing the powerful OpenWeather API to provide accurate and real-time weather information. Our platform is designed to help users stay informed about the latest weather conditions, ensuring they can make well-informed decisions whether they\'re planning daily activities or preparing for severe weather events.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Our Mission',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'CekInteractive is committed to providing reliable weather data and a user-friendly experience.',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
