import 'package:flutter/material.dart';
import 'dart:ui';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFFFAFAFA), Color(0xFF00CCFF)],
        ),
        color: Color(0xFF00CCFF),
      ),
      child: Container(
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
                      borderRadius: BorderRadius.circular(30)),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 20,
                      offset: Offset(4, 0),
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
                  color: Color(0xFF332821),
                  fontSize: 20,
                  fontFamily: 'Poppins',
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
                  color: Color(0x7F332821),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 10,
              child: Container(
                width: 320,
                height: 57,
                decoration: ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
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
