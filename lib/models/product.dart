// To parse this JSON data, do
//
//     final product = productFromMap(jsonString);

import 'dart:convert';

class Product {
  Product(
      {required this.available,
      this.picture,
      required this.name,
      required this.price,
      this.id});

  bool available;
  String? picture;
  String name;
  int price;
  String? id;

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        available: json["available"],
        picture: json["picture"],
        name: json["name"],
        price: json["price"],
      );

  Map<String, dynamic> toMap() => {
        "available": available,
        "picture": picture,
        "name": name,
        "price": price,
      };

  Product copy() => Product(
      available: this.available,
      picture: this.picture,
      name: this.name,
      price: this.price,
      id: this.id);
}
