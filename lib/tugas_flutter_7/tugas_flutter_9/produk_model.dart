import 'package:flutter/material.dart';
import 'package:tugas_flutter_2/tugas_flutter_7/tugas_flutter_9/models/model1.dart';

class Model1 extends StatefulWidget {
  const Model1({super.key});

  @override
  State<Model1> createState() => _Model1State();
}

class _Model1State extends State<Model1> {
  final List<ProdukModel> produkModel = [
    ProdukModel(nama: "khaf", price: 21000, image: "assets/images/khaf.jpg"),
    ProdukModel(
      nama: "sombong",
      price: 31000,
      image: "assets/images/sombong.jpg",
    ),
    ProdukModel(
      nama: "garnierman",
      price: 200000,
      image: "assets/images/garnierman.jpg",
    ),
    ProdukModel(nama: "ponds", price: 18000, image: "assets/images/ponds.jpg"),
    ProdukModel(
      nama: "vaseline",
      price: 340000,
      image: "assets/images/vaseline.jpg",
    ),
    ProdukModel(
      nama: "cerave",
      price: 430000,
      image: "assets/images/cerave.jpg",
    ),
    ProdukModel(
      nama: "centella",
      price: 32000,
      image: "assets/images/centella.jpg",
    ),
    ProdukModel(
      nama: "ms.glow",
      price: 109000,
      image: "assets/images/ms.glow.jpg",
    ),
    ProdukModel(
      nama: "skintivic",
      price: 70000,
      image: "assets/images/skintivic.jpg",
    ),
    ProdukModel(
      nama: "foreman",
      price: 50000,
      image: "assets/images/foreman.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: produkModel.length,
        itemBuilder: (BuildContext context, int index) {
          final dataProdukModel = produkModel[index];
          return ListTile(
            title: Text(dataProdukModel.nama),
            subtitle: Text(dataProdukModel.price.toString()),
            trailing: Image.asset(dataProdukModel.image),
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text("${index + 1}"),
            ),
          );
        },
      ),
    );
  }
}
