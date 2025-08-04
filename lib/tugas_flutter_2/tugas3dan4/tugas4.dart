import 'package:flutter/material.dart';

class Tugas4flutter extends StatelessWidget {
  const Tugas4flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tugas flutter 4"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [Text("nama:")]),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(children: [Text("email:")]),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(children: [Text("nomor telepon:")]),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(children: [Text("dekripsi:")]),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
    );
  }
}
