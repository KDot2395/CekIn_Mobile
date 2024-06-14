import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'Login/loginpage.dart';
import 'dashboard/profile/logout.dart';
import 'package:test_installasi_flutter/view/splash.view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashView(),
        '/profile': (context) => ProfilePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}