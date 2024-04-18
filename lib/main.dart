import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';


import 'package:flutter_application_1/features/auth/registeration/view/page/registeration.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/loginPage.dart';
import 'package:flutter_application_1/features/auth/registeration/view/component/forget_password.dart';



void main() async {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
       debugShowCheckedModeBanner: false,
       home:SplashScreen() 
     );
 
  }
  
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Delay navigation by 1 second (adjust the duration as needed)
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Rgister()), // Navigate to the registration screen
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/favplant.jpg'), // Display the splash screen image
      ),
    );
  }
}


