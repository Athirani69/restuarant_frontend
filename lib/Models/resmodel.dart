// To parse this JSON data, do
//
//     final restaurant = restaurantFromJson(jsonString);

import 'dart:convert';

List<Restaurant> restaurantFromJson(String str) => List<Restaurant>.from(json.decode(str).map((x) => Restaurant.fromJson(x)));

String restaurantToJson(List<Restaurant> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Restaurant {
  String id;
  String orderid;
  String custname;
  String custfon;
  String fddtails;
  String price;
  int v;

  Restaurant({
    required this.id,
    required this.orderid,
    required this.custname,
    required this.custfon,
    required this.fddtails,
    required this.price,
    required this.v,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
    id: json["_id"],
    orderid: json["orderid"],
    custname: json["custname"],
    custfon: json["custfon"],
    fddtails: json["fddtails"],
    price: json["Price"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "orderid": orderid,
    "custname": custname,
    "custfon": custfon,
    "fddtails": fddtails,
    "Price": price,
    "__v": v,
  };
}
