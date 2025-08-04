import 'package:flutter/material.dart';

class Tugas3Flutter extends StatelessWidget {
  const Tugas3Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("tugas flutter 3"),
      centerTitle: true,
      backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [Text("nama:")]),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            Row(children: [Text("email:")]),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            Row(children: [Text("nomor telepon:")]),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            Row(children: [Text("dekripsi:")]),
            TextField(decoration: InputDecoration(border: OutlineInputBorder())),
            GridView.count(
              shrinkWrap: true,
              padding: EdgeInsets.all(8.0),
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: Colors.red),
                    ),
                    Center(child: Text("satu")),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: Colors.yellow),
                    ),
                    Center(child: Text("dua")),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 184, 54, 244)),
                    ),
                    Center(child: Text("tiga")),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: Colors.green),
                    ),
                    Center(child: Text("empat")),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 0, 158, 53)),
                    ),
                    Center(child: Text("lima")),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(color: const Color.fromARGB(255, 6, 0, 92)),
                    ),
                    Center(child: Text("enam")),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
