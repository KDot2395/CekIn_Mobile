import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/Login/loginpage.dart';

class Body extends StatelessWidget {
  const Body({super.key});
  
  get body => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -90,
            right: -85,
            child: Image.asset(
              'assets/icons/awan.kiri.atas.png'
              , width: size.width * 0.8,
        ),
        ),
         Positioned(
          left: (size.width - (size.width * 0.3)) / 2 - 120, // Adjust the -20 value as needed to move left
            top: (size.height - (size.width * 0.3)) / 2 - 100,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'assets/icons/welcome.page.awan.png',
                  width: size.width * 0.5,
                ),
                SizedBox(height: 16),
                Text(
                  "Let’s Cekln The Weather Around you",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Let's Check In!",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF00CCFF),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}