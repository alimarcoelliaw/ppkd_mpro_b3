import 'package:flutter/material.dart';

class Listviewmap extends StatefulWidget {
  const Listviewmap({super.key});

  @override
  State<Listviewmap> createState() => _ListviewmapState();
}

class _ListviewmapState extends State<Listviewmap> {
  final List<Map<String, dynamic>> produk = [
    {"nama": "khaf", "price": 21000, "image": "assets/images/khaf.jpg"},
    {"nama": "sombong", "price": 31000, "image": "assets/images/sombong.jpg"},
    {
      "nama": "garnierman",
      "price": 200000,
      "image": "assets/images/garnierman.jpg",
    },
    {"nama": "ponds", "price": 18000, "image": "assets/images/ponds.jpg"},

    {
      "nama": "vaselline",
      "price": 340000,
      "image": "assets/images/vaseline.jpg",
    },
    {"nama": "carave", "price": 430000, "image": "assets/images/cerave.jpg"},
    {"nama": "cantela", "price": 32000, "image": "assets/images/centella.jpg"},
    {"nama": "ms.glow", "price": 109000, "image": "assets/images/ms.glow.jpg"},
    {
      "nama": "skintivic",
      "price": 70000,
      "image": "assets/images/skintivic.jpg",
    },
    {"nama": "foreman", "price": 50000, "image": "assets/images/foreman.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //List
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),

            shrinkWrap: true,
            itemCount: produk.length,
            itemBuilder: (BuildContext context, int index) {
              final dataProduk = produk[index];
              return ListTile(
                title: Text(dataProduk["nama"]),
                subtitle: Text(dataProduk["price"].toString()),
                trailing: dataProduk["image"] == null
                    ? null
                    : CircleAvatar(child: Image.asset(dataProduk["image"])),
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Text("${index + 1}"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
