import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listmodel {
  late final String name;
  late final int num;
  late List<Carditem> carditem;

  listmodel({required this.name, required this.num, required this.carditem});
}

class Carditem {
  late String cardname;
  late String profession;
  late String image;

  Carditem(
      {required this.cardname, required this.profession, required this.image});
}
