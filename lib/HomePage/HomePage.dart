import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

List<IconData> navIcons = [
  Icons.home,
  Icons.search,
  Icons.bookmark,
  Icons.person
];

List<String> navTitle = [
  "Home",
  "Search",
  "Bookmark",
  "Profile",
];

int selectedIndex = 0;

class _HomepageState extends State<Homepage> {


  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFF00CCFF)),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 375,
                height: 812,
                decoration: const BoxDecoration(
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
                            color: const Color(0xFFFAFAFA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            shadows: const [
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
                      const Positioned(
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
                      const Positioned(
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
                      const Positioned(
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
                      const Positioned(
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
                      const Positioned(
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
                      const Positioned(
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
                        left: 113,
                        top: 355,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurpleAccent,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'VIEW STATS',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
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
                      const Positioned(
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
                      const Positioned(
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
                      const Positioned(
                        left: 180,
                        top: 180,
                        child: SizedBox(
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
                        child: _navBar(updateSelectedIndex),
                      ),
                      Positioned(
                        left: 30,
                        top: 80,
                        child: Container(
                          height: 40,
                          width: 300,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withAlpha(20),
                                  blurRadius: 20,
                                  spreadRadius: 10,
                                ),
                              ],
                            ),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
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

Widget _navBar(Function(int) onTap) {
  return Center(
    child: Container(
      alignment: Alignment.center,
      height: 65,
      width: 275,
      margin: const EdgeInsets.only(
        right: 24,
        left: 24,
        bottom: 24,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 20,
            spreadRadius: 10,
          )
        ],
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: navIcons.asMap().entries.map((entry) {
            int index = entry.key;
            IconData icon = entry.value;
            bool isSelected = selectedIndex == index;
            return GestureDetector(
              onTap: () {
                onTap(index); // Call the callback function
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      color: isSelected ? Colors.blue : Colors.grey,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      navTitle[index],
                      style: TextStyle(
                        color: isSelected ? Colors.blue : Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    ),
  );
}
