import 'package:flutter/material.dart';

void main() {
  runApp(const profilePage());
}

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Profile(),
        ]),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 15,
                top: 30,
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: Color(0xFF181D27),
                    fontSize: 20,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.05,
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 82,
                child: Container(
                  width: 333,
                  height: 86,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 343,
                          height: 89,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 343,
                                  height: 89,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF00CCFF),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    shadows: [
                                      BoxShadow(
                                        color: Color(0x0F000000),
                                        blurRadius: 44,
                                        offset: Offset(0, 4),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                top: 16,
                                child: Container(
                                  width: 144,
                                  height: 57,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 57,
                                          height: 57,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 68,
                                        top: 10,
                                        child: Container(
                                          width: 76,
                                          height: 35,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Text(
                                                  'Ariiq enzoy',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.10,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 0,
                                                top: 23,
                                                child: Text(
                                                  '@Ariiqaf',
                                                  style: TextStyle(
                                                    color: Color(0xFFD7D7D7),
                                                    fontSize: 11,
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.10,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 27.13,
                        top: 22.57,
                        child: Container(height: 38.79, child: Stack()),
                      ),
                      Positioned(
                        left: 18,
                        top: 18,
                        child: Container(
                          width: 53,
                          height: 53,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/53x53"),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 9.72,
                top: 189.13,
                child: Container(
                  width: 333.28,
                  height: 337.78,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 343,
                        height: 350,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 343,
                                height: 350,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x0F000000),
                                      blurRadius: 44,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 24,
                              child: Container(
                                width: 310.98,
                                height: 235,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 310.98,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 304,
                                            top: 14.16,
                                            child: Container(
                                              width: 6.98,
                                              height: 11.68,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 212,
                                              height: 40,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 56,
                                                    top: 0,
                                                    child: Container(
                                                      width: 156,
                                                      height: 39,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Text(
                                                              'My Account ',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF181D27),
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0.12,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 23,
                                                            child: Text(
                                                              'Make changes to your account',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFABABAB),
                                                                fontSize: 11,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 0.13,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Opacity(
                                                              opacity: 0.05,
                                                              child: Container(
                                                                width: 40,
                                                                height: 40,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: Color(
                                                                      0xFF0600B3),
                                                                  shape:
                                                                      OvalBorder(),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 10,
                                                            top: 10,
                                                            child: Container(
                                                              width: 20,
                                                              height: 20,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 2.35,
                                                                left: 4.01,
                                                                right: 4.04,
                                                                bottom: 2.32,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                          11.95,
                                                                      child:
                                                                          Stack()),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    Container(
                                      width: 310.98,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 304,
                                            top: 14.16,
                                            child: Container(
                                              width: 6.98,
                                              height: 11.68,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 212,
                                              height: 40,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 56,
                                                    top: 0,
                                                    child: Container(
                                                      width: 156,
                                                      height: 39,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Text(
                                                              'Edit Profile',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF181D27),
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0.12,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 23,
                                                            child: Text(
                                                              'Make changes to your account',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFABABAB),
                                                                fontSize: 11,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 0.13,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Opacity(
                                                              opacity: 0.05,
                                                              child: Container(
                                                                width: 40,
                                                                height: 40,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: Color(
                                                                      0xFF0600B3),
                                                                  shape:
                                                                      OvalBorder(),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 10,
                                                            top: 10,
                                                            child: Container(
                                                              width: 20,
                                                              height: 20,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 2.35,
                                                                left: 4.01,
                                                                right: 4.04,
                                                                bottom: 2.32,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                          11.95,
                                                                      child:
                                                                          Stack()),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    Container(
                                      width: 310.98,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 304,
                                            top: 14.16,
                                            child: Container(
                                              width: 6.98,
                                              height: 11.68,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 252,
                                              height: 40,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 56,
                                                    top: 0,
                                                    child: Container(
                                                      width: 196,
                                                      height: 39,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Text(
                                                              'Log out',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0.12,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 23,
                                                            child: Text(
                                                              'Further secure your account for safety',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFABABAB),
                                                                fontSize: 11,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 0.13,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Opacity(
                                                              opacity: 0.05,
                                                              child: Container(
                                                                width: 40,
                                                                height: 40,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: Color(
                                                                      0xFF555555),
                                                                  shape:
                                                                      OvalBorder(),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 10,
                                                            top: 10,
                                                            child: Container(
                                                              width: 20,
                                                              height: 20,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 2.31,
                                                                left: 2.31,
                                                                right: 1.83,
                                                                bottom: 2.27,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        15.86,
                                                                    height:
                                                                        15.42,
                                                                    child:
                                                                        Stack(),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    Container(
                                      width: 310.98,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 304,
                                            top: 14.16,
                                            child: Container(
                                              width: 6.98,
                                              height: 11.68,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 252,
                                              height: 40,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 56,
                                                    top: 0,
                                                    child: Container(
                                                      width: 196,
                                                      height: 39,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Text(
                                                              'Delete Account',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF181D27),
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 0.12,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 23,
                                                            child: Text(
                                                              'Further secure your account for safety',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFABABAB),
                                                                fontSize: 11,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 0.13,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 0,
                                                            top: 0,
                                                            child: Opacity(
                                                              opacity: 0.05,
                                                              child: Container(
                                                                width: 40,
                                                                height: 40,
                                                                decoration:
                                                                    ShapeDecoration(
                                                                  color: Color(
                                                                      0xFF0600B3),
                                                                  shape:
                                                                      OvalBorder(),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 10,
                                                            top: 10,
                                                            child: Container(
                                                              width: 20,
                                                              height: 20,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                top: 2.29,
                                                                left: 3.54,
                                                                right: 3.67,
                                                                bottom: 1.96,
                                                              ),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width:
                                                                        12.79,
                                                                    height:
                                                                        15.75,
                                                                    child:
                                                                        Stack(),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 537,
                child: Container(
                  width: 52,
                  height: 37,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0.80,
                        child: Text(
                          'More',
                          style: TextStyle(
                            color: Color(0xFF010101),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0.10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 584,
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 343,
                        height: 139,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 343,
                                height: 139,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x0F000000),
                                      blurRadius: 44,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 17,
                              child: Container(
                                width: 310.98,
                                height: 40,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Positioned(
                                          left: 304,
                                          top: 14.16,
                                          child: Container(
                                            width: 6.98,
                                            height: 11.68,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 123,
                                            height: 40,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 56,
                                                  top: 10,
                                                  child: Text(
                                                    'About App',
                                                    style: TextStyle(
                                                      color: Color(0xFF181D27),
                                                      fontSize: 13,
                                                      fontFamily: 'DM Sans',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 0.12,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  left: 0,
                                                  top: 0,
                                                  child: Container(
                                                    width: 40,
                                                    height: 40,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          left: 0,
                                                          top: 0,
                                                          child: Opacity(
                                                            opacity: 0.05,
                                                            child: Container(
                                                              width: 40,
                                                              height: 40,
                                                              decoration:
                                                                  ShapeDecoration(
                                                                color: Color(
                                                                    0xFF0600B3),
                                                                shape:
                                                                    OvalBorder(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 10,
                                                          top: 10,
                                                          child: Container(
                                                            width: 20,
                                                            height: 20,
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              top: 2.50,
                                                              left: 2.08,
                                                              right: 2.09,
                                                              bottom: 2.50,
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  width: 15.83,
                                                                  height: 15,
                                                                  child:
                                                                      Stack(),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 296,
                top: 111,
                child: Container(
                  width: 24,
                  height: 23,
                  padding: const EdgeInsets.only(
                    top: 2.87,
                    left: 3,
                    right: 3,
                    bottom: 2.88,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                ),
              ),
              Positioned(
                left: 11,
                top: 728,
                child: Container(
                  width: 318.77,
                  height: 57,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 318.77,
                          height: 57,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFAFAFA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 189.59,
                        top: 17.81,
                        child: Container(
                          width: 22.30,
                          height: 21.38,
                          padding: const EdgeInsets.only(
                            top: 2.67,
                            left: 4.65,
                            right: 4.41,
                            bottom: 1.78,
                          ),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 113.38,
                        top: 17.81,
                        child: Container(
                          width: 22.30,
                          height: 21.38,
                          padding: const EdgeInsets.only(
                            top: 2.67,
                            left: 1.86,
                            right: 2.79,
                            bottom: 1.78,
                          ),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 265.80,
                        top: 17.81,
                        child: Container(
                          width: 22.30,
                          height: 21.38,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: FlutterLogo(),
                        ),
                      ),
                      Positioned(
                        left: 27,
                        top: 11.58,
                        child: Container(
                          width: 37,
                          height: 33.42,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 7.39,
                                top: 0,
                                child: Container(
                                  width: 22.30,
                                  height: 21.38,
                                  padding: const EdgeInsets.only(
                                    top: 2.67,
                                    left: 1.86,
                                    right: 2.10,
                                    bottom: 1.78,
                                  ),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 18.35,
                                        height: 16.92,
                                        child: Stack(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 21.42,
                                child: SizedBox(
                                  width: 37,
                                  height: 12,
                                  child: Text(
                                    'Home',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFCFCFCF),
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
