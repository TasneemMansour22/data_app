import 'package:data_app/screens/home_screen.dart';
import 'package:data_app/screens/launch_screen.dart';
import 'package:data_app/screens/login_screen.dart';
import 'package:data_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              titleTextStyle: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp
              ),
              iconTheme: const IconThemeData(color: Colors.black),
            ),
          ),
          initialRoute: '/launc_screen',
          routes: {
            '/launc_screen': (context) => LaunchScreen(),
            '/login_screen': (context) => LoginScreen(),
            '/register_screen': (context) => RegisterScreen(),
            '/home_screen': (context) => HomeScreen(),
          },
        );
      },
    );
  }
}
// .sp for fonts // .w for width // .h for hieght
