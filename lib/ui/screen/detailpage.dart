import 'package:flutter/material.dart';
import 'package:ui_challenge/ui/screen/widget/paddingText_widget.dart';
import 'package:ui_challenge/ui/screen/widget/text_category_widget.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final int id;
  const DetailPage({Key key, this.image, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Hero(
            tag: id,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(image),
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(40),
                  topRight: const Radius.circular(40)),
              child: Container(
                height: MediaQuery.of(context).size.height / 1.5,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextCategory(
                            text: "Technology",
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                color: Colors.grey,
                                size: 15,
                              ),
                              Text(
                                "15 days left",
                                style: TextStyle(fontWeight: FontWeight.w100),
                              ),
                            ],
                          )
                        ],
                      ),
                      TextPaddingTop(
                        text: '"Flu Forecast" - Future of Medicine',
                        fontsizevalue: 25,
                        paddingvalue: 30,
                        fontWeightvalue: FontWeight.bold,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
