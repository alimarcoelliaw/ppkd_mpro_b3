import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Tanggal Lahir")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Pilih Tanggal Lahir"),
              SizedBox(height: 8),
              ElevatedButton(
                child: Text("Pilih Tanggal Lahir"),
                onPressed: () async {
                  final DateTime? pickerDate = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1945),
                    lastDate: DateTime(2100),
                  );
                  if (pickerDate != null) {
                    setState(() {});
                    selectedDate = pickerDate;
                  }
                },
              ),
              SizedBox(height: 8),
              // Text(selectedDate.toString()),
              Text(
                selectedDate == null
                    ? "Tanggal belum dipilih"
                    : DateFormat(
                        'EEEE, dd MMMM yyyy',
                        "id_ID",
                      ).format(selectedDate!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
