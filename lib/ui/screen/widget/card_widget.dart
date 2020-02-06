import 'package:flutter/material.dart';
import 'package:ui_challenge/ui/screen/detailpage.dart';
import 'package:ui_challenge/ui/screen/widget/detailLine_widget.dart';
import 'package:ui_challenge/ui/screen/widget/paddingText_widget.dart';
import 'package:ui_challenge/ui/screen/widget/text_category_widget.dart';

class SlideCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailPage(
                  image:
                      "https://image.freepik.com/free-vector/abstract-colorful-flow-shapes-background_52683-21041.jpg",
                  id: 1)),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    topRight: const Radius.circular(10)),
                child: Image(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      'https://image.freepik.com/free-vector/abstract-colorful-flow-shapes-background_52683-21041.jpg'),
                ),
              ),
            ),
            Detail()
          ],
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextCategory(
            text: "Technology",
          ),
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
          DetailLine(
            topLeft: "85%",
            topRight: "1 673.17 ETH",
            bottomLeft: "15 day left",
            bottomRight: "Collected",
            percent: 0.85,
            withIcon: true,
          )
        ],
      ),
    );
  }
}
