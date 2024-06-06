import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_installasi_flutter/utils/global.colors.dart';
import 'package:test_installasi_flutter/view/welcomepage.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Get.to(const Welcomepage());
      });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body:  Center(
      child: Image.asset('assets/icons/iconLanding.png'),
      ),
      );
    
  }
}

       // child: Text(
          //'CekIn',
          //style: TextStyle(
            //color: Colors.white,
            //fontSize: 35,
            //fontWeight: FontWeight.bold,
          //),
        //) ,
      //),
    //);
  //}
//}