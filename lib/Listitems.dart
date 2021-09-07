import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:gift/listmodel.dart';
import 'package:gift/listmodel.dart';

import 'listmodel.dart';

class Listitems extends StatefulWidget {
  @override
  _ListitemsState createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {
  List<String> names = [
    "Food",
    "Arts & Entertainment",
    "Music",
    "Writing",
    "Sports & Gaming",
    "Design & Style",
    "Business",
    "Science & Tech",
    "Home & Lifestyle",
    "Community & Government",
    "Wellness"
  ];
  var its;
  List<listmodel> items = [
    listmodel(name: "FOOD", num: 16, carditem: [
      Carditem(
          cardname: "Wolfhong pock",
          profession: "Teaches Cooking",
          image: "assets/images/wolf.jpg"),
      Carditem(
          cardname: "Gordon Romsay",
          profession: "Teaches Cooking || Restaurant recipes at Home",
          image: "assets/images/gordon.jpg"),
      Carditem(
          cardname: "Thomas Keller",
          profession: "Teaches Cooking Technique 1 Vegetable pasta",
          image: "assets/images/thomas.jpg"),
      Carditem(
          cardname: "Ron  Finley",
          profession: "Teaches Gradening ",
          image: "assets/images/ron.jpeg"),
      Carditem(
          cardname: "Massimo  Battora",
          profession: "Teaches Modern Italian Cooking ",
          image: "assets/images/massimo.jpg")
    ]),
    listmodel(name: "Arts & Entertainment", num: 52, carditem: [
      Carditem(
          cardname: "Judd Apatow",
          profession: "Teaches Comedy",
          image: "assets/images/judd.jpg"),
      Carditem(
          cardname: "deadmau5",
          profession: "Teaches music",
          image: "assets/images/dead.jpg"),
      Carditem(
          cardname: "Judy Blume",
          profession: "Teaches writing",
          image: "assets/images/judy.jpg")
    ]),
    listmodel(name: "Music", num: 16, carditem: [
      Carditem(
          cardname: "deadmau5",
          profession: "Teaches music",
          image: "assets/images/dead.jpg"),
      Carditem(
          cardname: "Christaina Aguilera",
          profession: "Teaches singing",
          image: "assets/images/christ.jpg"),
      Carditem(
          cardname: "Usher ",
          profession: "Teaches the art of performance",
          image: "assets/images/usher.jpg"),
      Carditem(
          cardname: "Carlos Santana",
          profession: "Teaches Guitar",
          image: "assets/images/carlos.jpg")
    ]),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Try Film and TV"),
        leading: Icon(Icons.search, size: 20, color: Colors.white),
        actions: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_sharp,
                  size: 30,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.compare_arrows_sharp,
                  size: 30,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                  size: 30,
                ),
                title: Text(""))
          ]),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              color: Colors.blueGrey,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width / 2.5,
              child: ListView.builder(
                  itemCount: names.length,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1.5, vertical: 0.5),
                      child: Container(
                        height: 80,
                        color: Colors.blueGrey,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Card(
                              color: Colors.blueGrey,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 180,
                                    height: 80,
                                    child: Text(
                                      names[index],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 1.7,
            child: ListView.builder(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(items[index].name,
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              items[index].num.toString() + " classes ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: items[index].carditem.length,
                                  itemBuilder: (context, index2) {
                                    return Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 180,
                                            width: 110,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20))),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                  items[index]
                                                      .carditem[index2]
                                                      .image,
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: AutoSizeText(
                                                      items[index]
                                                          .carditem[index2]
                                                          .cardname,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color:
                                                              Colors.white))),
                                              AutoSizeText(
                                                  items[index]
                                                      .carditem[index2]
                                                      .profession,
                                                  maxLines: 3,
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white))
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
