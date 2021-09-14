import 'dart:ui';

import 'package:flutter/material.dart';

class Range extends StatefulWidget {
  @override
  _RangeState createState() => _RangeState();
}

class _RangeState extends State<Range> {
  RangeValues range = RangeValues(1.0, 200000.0);

  RangeValues interest = RangeValues(1.0, 20.0);

  RangeValues loantenure = RangeValues(1.0, 30.0);
  late double valuesofmoney = 0.0;
  late double interestsrate = 0.0;
  late double loanyrs = 0.0;
  late String ispressed;
  late bool isclicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Loan Amount",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  width: 250,
                  child: TextFormField(
                    controller: TextEditingController()
                      ..text = valuesofmoney.toString(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Container(
                            width: 40,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Icon(
                              Icons.attach_money,
                              color: Colors.black,
                            ))),
                  ),
                )
              ],
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                activeTickMarkColor: Colors.orange,
                thumbColor: Colors.orange,
                overlayColor: Colors.orange,
                trackHeight: 10,
                valueIndicatorColor: Colors.orange),
            child: RangeSlider(
              min: 1.0,
              max: 200000.0,
              activeColor: Colors.grey,
              divisions: 10000,
              inactiveColor: Colors.orange,
              values: range,
              labels: RangeLabels(valuesofmoney.toString(), "200000"),
              onChanged: (val) {
                setState(() {
                  valuesofmoney = val.start;
                });
              },
              onChangeEnd: (val) {
                setState(() {
                  range = val;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Interest Rate",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  width: 250,
                  child: TextFormField(
                    controller: TextEditingController()
                      ..text = interestsrate.toString(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        suffixIcon: Container(
                            width: 40,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Icon(
                              Icons.recommend,
                              color: Colors.black,
                            ))),
                  ),
                )
              ],
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                activeTickMarkColor: Colors.orange,
                thumbColor: Colors.orange,
                overlayColor: Colors.orange,
                trackHeight: 10,
                valueIndicatorColor: Colors.orange),
            child: RangeSlider(
              min: 1,
              max: 20,
              activeColor: Colors.grey,
              divisions: 5,
              inactiveColor: Colors.orange,
              values: interest,
              labels: RangeLabels(interestsrate.toString(), "20"),
              onChanged: (val) {
                setState(() {
                  interestsrate = val.start;
                });
              },
              onChangeEnd: (val) {
                setState(() {
                  interest = val;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Loan Tenurity",
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                  width: 100,
                  child: TextFormField(
                    controller: TextEditingController()
                      ..text = loanyrs.toString(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
                activeTickMarkColor: Colors.orange,
                thumbColor: Colors.orange,
                overlayColor: Colors.orange,
                trackHeight: 10,
                valueIndicatorColor: Colors.orange),
            child: RangeSlider(
              min: 1,
              max: 30,
              activeColor: Colors.grey,
              divisions: 10,
              inactiveColor: Colors.orange,
              values: loantenure,
              labels: RangeLabels(loanyrs.toString(), "30"),
              onChanged: (val) {
                setState(() {
                  loanyrs = val.start;
                });
              },
              onChangeEnd: (val) {
                setState(() {
                  loantenure = val;
                });
              },
            ),
          ),
          Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(),
              child:
                  TextButton(onPressed: () {}, child: Text("Calculate EMI"))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Your EMI is \n "),
          )
        ],
      ),
    );
  }
}
