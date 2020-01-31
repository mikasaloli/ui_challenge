import 'package:flutter/material.dart';

class TextPaddingTop extends StatelessWidget {
  final String text;
  final double paddingvalue;
  final double fontsizevalue;
  final FontWeight fontWeightvalue;
  TextPaddingTop({this.text,this.paddingvalue,this.fontsizevalue,this.fontWeightvalue});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingvalue),
      child: Text(text,
          style: TextStyle(fontWeight: fontWeightvalue?? FontWeight.normal, fontSize: fontsizevalue)),
    );
  }
}
