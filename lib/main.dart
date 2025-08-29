import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/tugas_flutter_15/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      initialRoute: LoginAPIScreen.id,
      routes: {
        '/login_api': (context) => LoginAPIScreen(),
        LoginAPIScreen.id: (context) => LoginAPIScreen(),
        // SplashScreen.id: (context) => SplashScreen(),
        // '/homepage': (context) => TugasFlutter7(),
        //  PostApiScreen.id: (context) => PostApiScreen(),
      },
    );
  }
}
