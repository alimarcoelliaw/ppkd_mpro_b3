import 'package:flutter/material.dart';

class checkbox1 extends StatefulWidget {
  const checkbox1({super.key});

  @override
  State<checkbox1> createState() => _checkbox1State();
}

class _checkbox1State extends State<checkbox1> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text("saya menyetujui semua persayaratan yang berlaku"),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: isCheck,
                onChanged: (value) {
                  setState(() {
                    isCheck = value!;
                  });
                },
              ),
              Text(
                isCheck == true
                    ? "lanjutkan pendaftaran diperbolehkan"
                    : "anda belum bisa melanjutkan",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
