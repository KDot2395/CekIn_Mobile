import 'package:flutter/material.dart';
import 'package:test_installasi_flutter/components/body.dart';
//import 'package:test_installasi_flutter/utils/global.colors.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body(),);
      //body: SingleChildScrollView(
        //child: SafeArea(
          //child: Container(
           // width: double.infinity,
            //padding: const EdgeInsets.all(15.0),
           // child: Column(
              //children: [
                //Text(
                 // 'Logo',
               // style: TextStyle(
                  //color: GlobalColors.mainColor,
                 // fontSize: 35,
                 // fontWeight: FontWeight.bold,
                //),
                //)],
              //),
            //),
        //),
      //),
    //);
  }
}