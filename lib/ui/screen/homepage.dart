import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/ui/screen/widget/card_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF9F9FB),
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30.0,
            ),
          ),
          actions: <Widget>[
            new RawMaterialButton(
              onPressed: () {},
              child: new Icon(
                Icons.notifications,
                color: Colors.black,
                size: 30.0,
              ),
              shape: new CircleBorder(),
              fillColor: Colors.grey[200],
              elevation: 0.0,
            ),
          ],
        ),
        body: Container(
          color: Color(0xffF9F9FB),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TopContainer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Popular project",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Text("- ALL",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
                Slider(),
                BottomContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Your investment",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          new FloatingActionButton(
            onPressed: () {},
            child: Text(
              "3",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            shape: new CircleBorder(),
            elevation: 0.0,
            backgroundColor: Colors.grey[200],
          ),
        ],
      ),
    );
  }
}

class TopContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 6.0,
              width: 6.0,
              decoration: new BoxDecoration(
                color: Color(0xff162997),
                shape: BoxShape.circle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '36.90 ETH',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            Text(
              ' /5 392 USD',
              style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Chip(
                label: Text(
                  '+2.54 ETH',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color(0xff162997),
              ),
              Text(
                "  last month",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 450.0,
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return SlideCard();
          },
        );
      }).toList(),
    );
  }
}
