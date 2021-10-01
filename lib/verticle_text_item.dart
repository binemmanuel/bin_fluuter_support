import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

class verticle_text_item extends StatelessWidget {
  var one;
  var two;
  verticle_text_item(one, two) {
    this.one = one;
    this.two = two;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$one",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "$two",
          style: TextStyle(fontSize: 12, color: fromCssColor("#8752A1")),
        ),
      ],
    );
  }
}
