import 'package:flutter/material.dart';

// import 'package:tugas_flutter_2/tugas_flutter_7/tugas_flutter_9/kosmetik.dart';
class Listviewtugas1 extends StatefulWidget {
  const Listviewtugas1({super.key});

  @override
  State<Listviewtugas1> createState() => _Listviewtugas1State();
}

class _Listviewtugas1State extends State<Listviewtugas1> {
  //Step 1
  final List<String> namaBuah = [
    "khaf",
    "seombong",
    "garnierman",
    "ponds",
    "vaseline",
    "carave",
    "cantela",
    "ms.glow",
    "skintific",
    "foreman",
  ];
  //
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //List
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),

            shrinkWrap: true,
            itemCount: namaBuah.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(namaBuah[index]),
                leading: CircleAvatar(child: Text("${index + 1}")),
              );
            },
          ),
        ],
      ),
    );
  }
}
