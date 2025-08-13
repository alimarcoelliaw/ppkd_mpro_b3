import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/tugasflutter6/start.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/tugas_flutter_7.dart';
// import 'package:tugas_flutter_2/tugas_flutter_7/tugas_flutter_7.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: TugasFlutter7(),
      initialRoute: '/',
      routes: {
        '/': (context) => const TugasFlutter6(),

        '/home': (context) => TugasFlutter7(),
        // TugasFlutter7.id: (context) => const TugasFlutter7(),
      },
    );
  }
}
