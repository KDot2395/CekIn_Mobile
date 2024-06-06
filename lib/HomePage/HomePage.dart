import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

List<IconData> navIcons = [Icons.home, Icons.bookmark, Icons.person];

List<String> navTitle = [
  "Home",
  "Bookmark",
  "Profile",
];

int selectedIndex = 0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF00CCFF)),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 375,
                height: 812,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFFFAFAFA), Color(0xFF00CCFF)],
                  ),
                ),
                child: SizedBox(
                  width: 230,
                  height: 377,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 30,
                        top: 150,
                        child: Container(
                          width: 300,
                          height: 230,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFAFAFA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 20,
                                offset: Offset(4, 0),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 190,
                        child: Text(
                          'Los Angeles, CA, USA',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 220,
                        child: Text(
                          '15',
                          style: TextStyle(
                            color: Color(0xFF332821),
                            fontFamily: 'Poppins',
                            fontSize: 72,
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 135,
                        top: 230,
                        child: Text(
                          '°C',
                          style: TextStyle(
                            color: Color(0xFF332821),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 50,
                        top: 300,
                        child: Text(
                          'Sunday, 11 am',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 210,
                        top: 310,
                        child: Text(
                          'Strong Winds',
                          style: TextStyle(
                            color: Color(0xFF332821),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 210,
                        top: 325,
                        child: Text(
                          'Cloudy',
                          style: TextStyle(
                            color: Color(0xFF332821),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 95,
                        top: 355,
                        child: Container(
                          width: 163,
                          height: 47,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: Colors.purple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Text(
                                  'VIEW STATS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 420,
                        child: Text(
                          'Pressure',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 445,
                        child: Text(
                          'Humidity',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 100,
                        top: 470,
                        child: Text(
                          'Wind',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 180,
                        top: 180,
                        child: Container(
                          height: 140,
                          width: 140,
                          child: Image(
                            image: AssetImage(
                                'assets/images/moon_cloud_fast_wind.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15,
                        top: 510,
                        child: _navBar(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _navBar() {
  return Container(
    height: 65,
    margin: const EdgeInsets.only(
      right: 24,
      left: 24,
      bottom: 24,
    ),
    decoration: BoxDecoration(
      color: Color(0xFFFAFAFA),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha(20),
          blurRadius: 20,
          spreadRadius: 10,
        )
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: navIcons.map((icon) {
        int index = navIcons.indexOf(icon);
        bool isSelected = selectedIndex == index;
        return Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: () {},
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 0,
                      left: 35,
                      right: 35,
                    ),
                    child: Icon(
                      icon,
                      color: isSelected ? Colors.blue : Colors.grey,
                    ),
                  ),
                  Text(
                    navTitle[index],
                    style: TextStyle(
                      color: isSelected ? Colors.blue : Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}
