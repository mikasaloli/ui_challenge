import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
          child: Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                    ),
                    Text(
                      ' /5 392 USD',
                      style:
                          TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[Text("+2.54 ETH"), Text(" last month")],
                ),
                Text('test'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
