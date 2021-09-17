import 'dart:convert';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:gift/Bitcoin.dart';
import 'package:http/http.dart' as http;

class Shapes extends StatefulWidget {
  @override
  _ShapesState createState() => _ShapesState();
}

//https://api.coingecko.com/api/v3/coins/bitcoin/market_chart?vs_currency=usd&days=2
class _ShapesState extends State<Shapes> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  List<double> price = [];
  List<double> val = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("demo app"),
      ),
      body: SingleChildScrollView(
        child: Container(width: 300.0, height: 100.0, child: Text("datas")),
      ),
    );
  }

  Future<void> getdata() async {
    var url =
        "https://api.coingecko.com/api/v3/coins/bitcoin/market_chart?vs_currency=usd&days=2";

    var res = await http.get(Uri.parse(url));
    Bitcoin b = Bitcoin.fromJson(json.decode(res.body));
  }
}
