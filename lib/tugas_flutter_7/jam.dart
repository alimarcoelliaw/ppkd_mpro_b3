import 'package:flutter/material.dart';

class Jam extends StatefulWidget {
  const Jam({super.key});

  @override
  State<Jam> createState() => _JamState();
}

class _JamState extends State<Jam> {
  TimeOfDay? pilihWaktu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Atur Pengingat"),
            SizedBox(height: 8),
            ElevatedButton(
              child: Text("Pilih Waktu Pengingat"),
              onPressed: () async {
                final TimeOfDay? pickerDate = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (pickerDate != null) {
                  setState(() {});
                  pilihWaktu = pickerDate;
                }
              },
            ),
            SizedBox(height: 8),
            Text(
              pilihWaktu == null
                  ? "Waktu belum dipilih"
                  : "Pengingat diatur pukul: ${pilihWaktu!.hour.toString()} : ${pilihWaktu!.minute.toString()}",
            ),
          ],
        ),
      ),
    );
  }
}
