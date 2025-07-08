import 'package:data_app/screens/home_screen.dart';
import 'package:data_app/screens/launch_screen.dart';
import 'package:data_app/screens/login_screen.dart';
import 'package:data_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,

        )
      ),
      initialRoute: '',
      routes: {
        '/launc_screen' : (context) =>  LaunchScreen(),
        '/login_screen' : (context) =>  LoginScreen(),
        '/register_screen' : (context) =>  RegisterScreen(),
        '/home_screen' : (context) =>  HomeScreen(),
      },
    );
  }
}
