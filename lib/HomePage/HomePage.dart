import 'package:flutter/material.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          HomePageV1(),
        ]),
      ),
    );
  }
}

class HomePageV1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          clipBehavior: Clip.antiAlias,
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
                ),
              ),
              Positioned(
                left: 59.17,
                top: 741,
                child: Transform(
                  transform: Matrix4.identity()
                    ..translate(0.0, 0.0)
                    ..rotateZ(0.24),
                  child: Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                  ),
                ),
              ),
              Positioned(
                left: 284,
                top: 196,
                child: Opacity(
                  opacity: 0.80,
                  child: Container(
                    width: 209,
                    height: 349.36,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 8,
                          top: 31,
                          child: Container(
                            width: 194.57,
                            height: 318.36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 85.19,
                                  child: Container(
                                    width: 194,
                                    height: 208,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFAFAFA),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.31),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 17.44,
                                  top: 0,
                                  child: Container(
                                    width: 177.14,
                                    height: 161.11,
                                    padding: const EdgeInsets.only(
                                      top: 107.12,
                                      left: 19.40,
                                      right: 20.24,
                                      bottom: 20.24,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 137.49,
                                          height: 33.74,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFDFE1E1),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(42),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 24.18,
                                  top: 161.11,
                                  child: Text(
                                    'Berlin, Germany',
                                    style: TextStyle(
                                      color: Color(0xFF332821),
                                      fontSize: 17,
                                      fontFamily: 'Alegreya Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 24.18,
                                  top: 181.35,
                                  child: Container(
                                    width: 62,
                                    height: 71.36,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: SizedBox(
                                            width: 43,
                                            height: 65,
                                            child: Text(
                                              '13',
                                              style: TextStyle(
                                                color: Color(0xFF332821),
                                                fontSize: 54,
                                                fontFamily: 'Alegreya Sans',
                                                fontWeight: FontWeight.w700,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 43.02,
                                          top: 18.56,
                                          child: SizedBox(
                                            width: 10,
                                            height: 14,
                                            child: Text(
                                              '°C',
                                              style: TextStyle(
                                                color: Color(0xFF332821),
                                                fontSize: 11.81,
                                                fontFamily: 'Alegreya Sans',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 57.36,
                                          child: SizedBox(
                                            width: 62,
                                            height: 14,
                                            child: Text(
                                              'Sunday, 4 pm',
                                              style: TextStyle(
                                                color: Color(0x7F332821),
                                                fontSize: 11.81,
                                                fontFamily: 'Alegreya Sans',
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
                                Positioned(
                                  left: 127.93,
                                  top: 202.44,
                                  child: Container(
                                    width: 61,
                                    height: 30,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 60.73,
                                          height: 14,
                                          padding: const EdgeInsets.all(9),
                                          decoration: ShapeDecoration(
                                            color: Color(0x7FE4C0C8),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.87),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Partly Sunny',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF332821),
                                                  fontSize: 9,
                                                  fontFamily: 'Alegreya Sans',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        Container(
                                          width: 42.18,
                                          height: 14,
                                          padding: const EdgeInsets.all(9),
                                          decoration: ShapeDecoration(
                                            color: Color(0x3F7A7EA1),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.87),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Rain',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF332821),
                                                  fontSize: 9,
                                                  fontFamily: 'Alegreya Sans',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
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
                                  left: 28,
                                  top: 278.36,
                                  child: Container(
                                    width: 137,
                                    height: 40,
                                    padding: const EdgeInsets.all(9),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFE9C939),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.18),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 58.20,
                                          height: 13.50,
                                          child: Text(
                                            'VIEW STATS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.81,
                                              fontFamily: 'Alegreya Sans',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
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
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 209,
                            height: 187,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://via.placeholder.com/209x187"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -111,
                top: 210,
                child: Opacity(
                  opacity: 0.80,
                  child: Container(
                    width: 194.57,
                    height: 335.36,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 17,
                          child: Container(
                            width: 194.57,
                            height: 318.36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 85.19,
                                  child: Container(
                                    width: 194,
                                    height: 208,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFAFAFA),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.31),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 17.44,
                                  top: 0,
                                  child: Container(
                                    width: 177.14,
                                    height: 161.11,
                                    padding: const EdgeInsets.only(
                                      top: 107.12,
                                      left: 19.40,
                                      right: 20.24,
                                      bottom: 20.24,
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 137.49,
                                          height: 33.74,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFDFE1E1),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(42),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 24.18,
                                  top: 161.11,
                                  child: Text(
                                    'Moscow, Russia',
                                    style: TextStyle(
                                      color: Color(0xFF332821),
                                      fontSize: 17,
                                      fontFamily: 'Alegreya Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 24.18,
                                  top: 181.35,
                                  child: Container(
                                    width: 62,
                                    height: 71.36,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Text(
                                            '-4',
                                            style: TextStyle(
                                              color: Color(0xFF332821),
                                              fontSize: 54,
                                              fontFamily: 'Alegreya Sans',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 43.02,
                                          top: 18.56,
                                          child: SizedBox(
                                            width: 10,
                                            height: 14,
                                            child: Text(
                                              '°C',
                                              style: TextStyle(
                                                color: Color(0xFF332821),
                                                fontSize: 11.81,
                                                fontFamily: 'Alegreya Sans',
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 0,
                                          top: 57.36,
                                          child: SizedBox(
                                            width: 62,
                                            height: 14,
                                            child: Text(
                                              'Sunday, 4 pm',
                                              style: TextStyle(
                                                color: Color(0x7F332821),
                                                fontSize: 11.81,
                                                fontFamily: 'Alegreya Sans',
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
                                Positioned(
                                  left: 128,
                                  top: 204,
                                  child: Container(
                                    width: 61,
                                    height: 16,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 42.18,
                                          height: 14,
                                          padding: const EdgeInsets.all(9),
                                          decoration: ShapeDecoration(
                                            color: Color(0x7F6A75BA),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.87),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Snow',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 9,
                                                  fontFamily: 'Alegreya Sans',
                                                  fontWeight: FontWeight.w500,
                                                  height: 0,
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
                                  left: 28,
                                  top: 278.36,
                                  child: Container(
                                    width: 137,
                                    height: 40,
                                    padding: const EdgeInsets.all(9),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF658ED9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.18),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 58.20,
                                          height: 13.50,
                                          child: Text(
                                            'VIEW STATS',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11.81,
                                              fontFamily: 'Alegreya Sans',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
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
                          left: 14,
                          top: 0,
                          child: Container(
                            width: 166,
                            height: 169,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 3,
                                  top: 0,
                                  child: Container(
                                    width: 157,
                                    height: 169,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://via.placeholder.com/157x169"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 165,
                                  top: 106,
                                  child: Container(
                                    width: 19,
                                    height: 199,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFC4C4C4),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
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
              ),
              Positioned(
                left: 72,
                top: 191,
                child: Container(
                  width: 230,
                  height: 377,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 101,
                        child: Container(
                          width: 230,
                          height: 247,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFAFAFA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 20,
                                offset: Offset(4, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 0,
                        child: Container(
                          width: 210,
                          height: 191,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 23,
                                top: 127,
                                child: Container(
                                  width: 163,
                                  height: 40,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFDFE1E1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -50,
                                top: -114,
                                child: Container(
                                  width: 299,
                                  height: 298,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://via.placeholder.com/299x298"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        top: 180,
                        child: Text(
                          'Los Angeles, CA, USA',
                          style: TextStyle(
                            color: Color(0xFF332821),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 18,
                        top: 204,
                        child: Container(
                          width: 76,
                          height: 85,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text(
                                  '15',
                                  style: TextStyle(
                                    color: Color(0xFF332821),
                                    fontSize: 64,
                                    fontFamily: 'Alegreya Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 51,
                                top: 22,
                                child: Text(
                                  '°C',
                                  style: TextStyle(
                                    color: Color(0xFF332821),
                                    fontSize: 14,
                                    fontFamily: 'Alegreya Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 68,
                                child: Text(
                                  'Sunday, 11 am',
                                  style: TextStyle(
                                    color: Color(0x7F332821),
                                    fontSize: 14,
                                    fontFamily: 'Alegreya Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 141,
                        top: 229,
                        child: Container(
                          width: 72,
                          height: 36,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                width: 72,
                                height: 16,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: Color(0x7FD4426F),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Strong Winds',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'Alegreya Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: 50,
                                height: 16,
                                padding: const EdgeInsets.all(10),
                                decoration: ShapeDecoration(
                                  color: Color(0x7F6A75BA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Cloudy',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'Alegreya Sans',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
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
                        left: 34,
                        top: 330,
                        child: Container(
                          width: 163,
                          height: 47,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: Color(0xFF5E4FC1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 69,
                                height: 16,
                                child: Text(
                                  'VIEW STATS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
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
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 108,
                top: 588,
                child: Container(
                  width: 160,
                  height: 92,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 1,
                        top: 68,
                        child: Container(
                          width: 159,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 34,
                                top: 1,
                                child: Text(
                                  'Wind',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Alegreya Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 103,
                                top: 1,
                                child: Text(
                                  '19 km/h',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Alegreya Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.only(
                                    top: 3,
                                    left: 3,
                                    right: 3,
                                    bottom: 3.43,
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
                                        width: 18,
                                        height: 17.57,
                                        child: Stack(),
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
                        left: 0,
                        top: 34,
                        child: Container(
                          width: 160,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 34,
                                top: 1,
                                child: Text(
                                  'Humidity',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Alegreya Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 126,
                                top: 1,
                                child: Text(
                                  '90%',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Alegreya Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.only(
                                    top: 3,
                                    left: 8,
                                    right: 8.30,
                                    bottom: 3.81,
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
                                        width: 7.70,
                                        height: 17.19,
                                        child: Stack(),
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
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 160,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  padding: const EdgeInsets.only(
                                    top: 4,
                                    left: 5,
                                    right: 4.12,
                                    bottom: 3.64,
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
                                        width: 14.88,
                                        height: 16.36,
                                        child: Stack(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 34,
                                top: 1,
                                child: Text(
                                  'Pressure',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Alegreya Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 97,
                                top: 1,
                                child: Text(
                                  '1010 hPA',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Alegreya Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
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
                left: 29,
                top: 726,
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
                                      color: Color(0xFF00CCFF),
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
