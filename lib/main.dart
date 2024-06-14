import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_installasi_flutter/dashboard/Profile/landingprofile.dart';
import 'package:test_installasi_flutter/view/splash.view.dart';
import 'Login/loginpage.dart'; // Correct the import path if necessary

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
        '/profile': (context) => Landingprofile(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
