import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;

  final String image;

  final bool active;

  const MenuItem({
    Key key,
    this.title,
    this.image,
    this.active,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 25.0),
        padding:
            EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0, right: 15.0),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.yellow.shade700),
            color: active ? Colors.yellow.shade800 : Colors.transparent,
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: <Widget>[
            Image(height: 20, image: AssetImage(image)),
            SizedBox(width: 10),
            Text(title, style: TextStyle(fontWeight: FontWeight.w700))
          ],
        ));
  }
}
