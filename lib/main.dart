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
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 30,right: 10,bottom: 20),
                  //   child: Text(
                  //     '.',
                  //     style:
                  //         TextStyle(fontWeight: FontWeight.bold, fontSize: 40,color: Color(0xff162997)),
                  //     textAlign: TextAlign.center,
                  //   ),
                  // ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                        '36.90 ETH',
                           style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                        '/5 392 USD',
                      ),
                  ),
                ],
              ),
              Text('test'),
              Text('test'),
            ],
          ),
        ),
      ),
    );
  }
}
