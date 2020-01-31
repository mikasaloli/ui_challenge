import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui_challenge/ui/screen/widget/paddingText_widget.dart';

class SlideCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
     elevation: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(10),
                topRight: const Radius.circular(10)),
            child: Image(
              fit: BoxFit.contain,
              image: NetworkImage(
                  'https://image.freepik.com/free-vector/abstract-colorful-flow-shapes-background_52683-21041.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Technology",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4652AF),
                        fontSize: 12)),
                TextPaddingTop(
                  text: '"Flu Forecast" - Future of Medicine',
                  fontsizevalue: 23,
                  paddingvalue: 10,
                  fontWeightvalue: FontWeight.bold,
                ),
                TextPaddingTop(
                    fontsizevalue: 13,
                    paddingvalue: 10,
                    fontWeightvalue: FontWeight.w200,
                    text:
                        "Mini 3-axis, 4K /60fps, rotatable lens, wireless preview and remote control..."),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("85%",
                          style: TextStyle(
                              color: Color(0xff4652AF),
                              fontWeight: FontWeight.bold)),
                      Text(
                        "1 673.17 ETH",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: 0.85,
                    progressColor: Color(0xff4652AF),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
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
                      ),
                      Text(
                        "Collected",
                        style: TextStyle(fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
