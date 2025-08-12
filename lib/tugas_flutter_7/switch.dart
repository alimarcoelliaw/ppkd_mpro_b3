import 'package:flutter/material.dart';

class switch1 extends StatefulWidget {
  const switch1({super.key});

  @override
  State<switch1> createState() => _switch1State();
}

class _switch1State extends State<switch1> {
  // bool isCheck = false;
  bool modeGelap = false;
  // String? dropdownSelect;
  // DateTime? selectedDate;
  // TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: modeGelap ? Colors.black : Colors.white,
      body: Column(
        children: [
          Text(
            "aktifkan mode gelap",
            style: TextStyle(
              color: modeGelap == true ? Colors.white : Colors.black,
            ),
          ),
          Row(
            children: [
              Switch(
                activeColor: Colors.red,
                value: modeGelap,
                onChanged: (value) {
                  setState(() {
                    modeGelap = value;
                  });
                },
              ),
              Text(
                modeGelap == true ? "mode gelap aktif" : "mode terang aktif",
                style: TextStyle(
                  color: modeGelap == true ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
