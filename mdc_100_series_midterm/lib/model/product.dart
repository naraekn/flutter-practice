import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Category { Seoul, Daegu, Busan, all }

class Product {
  const Product({
    @required this.category,
    @required this.id,
    @required this.name,
    @required this.location,
    @required this.phoneNum,
    @required this.starRate,
    @required this.description,
  })  : assert(category != null),
        assert(id != null),
        assert(name != null),
        assert(location != null),
        assert(phoneNum != null),
        assert(starRate != null),
        assert(description != null);

  final Category category;
  final int id;
  final String name;
  final String location;
  final String phoneNum;
  final int starRate;
  final String description;

  String get assetName => 'images/$id-0.jpg';

  @override
  String toString() => "$name (id=$id)";
}
