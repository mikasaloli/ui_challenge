import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {
  final String image;
  final int id;
  const DetailPage({Key key,this.image,this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: id,
        child: Image(
                    fit: BoxFit.contain,
                    image: NetworkImage(image),
                  ),
      ),
    );
  }
}