import 'dart:convert';

class ProdukModel {
  final String nama;
  final int price;
  final String image;
  ProdukModel({required this.nama, required this.price, required this.image});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nama': nama, 'price': price, 'image': image};
  }

  factory ProdukModel.fromMap(Map<String, dynamic> map) {
    return ProdukModel(
      nama: map['nama'] as String,
      price: map['price'] as int,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukModel.fromJson(String source) =>
      ProdukModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
