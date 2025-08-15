import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/tugas_flutter_11/preference/shared_preferance.dart';
import 'package:tugas_flutter_2/tugas_flutter_2/tugasflutter6/start.dart';

class LogoutApp extends StatelessWidget {
  const LogoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    void logoutAccount(BuildContext context) {
      PreferenceHandler.removeLogin();
      Future.delayed(const Duration(seconds: 3)).then((value) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("Logout berhasil")));
        Future.delayed(const Duration(seconds: 3)).then((value) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const TugasFlutter6()),
            (Route<dynamic> route) => false,
          );
        });
      });
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              logoutAccount(context);
            },
            child: Text('Logout'),
          ),
        ],
      ),
    );
  }
}
