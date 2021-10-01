import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class profile_page_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      alignment: Alignment.centerLeft,
      width: 320,
      height: 160,
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 25.0, // soften the shadow
            spreadRadius: -8, //extend the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              15.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: new BoxDecoration(
              color: fromCssColor("#D9455A"),
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(15.0),
                bottomLeft: const Radius.circular(15.0),
              ),
            ),
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            width: 190,
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmoothStarRating(
                  allowHalfRating: false,
                  onRated: (v) {},
                  starCount: 5,
                  rating: 5,
                  size: 18.0,
                  isReadOnly: true,
                  color: Colors.orange,
                  borderColor: Colors.orange,
                  spacing: 0.0,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            // width: 130,
            width: 110,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://firebasestorage.googleapis.com/v0/b/minuso2.appspot.com/o/ProductReviewImages%2Ftjp0GYrLjlyrdMolU9vM%2Fdoraemon.png?alt=media&token=397f0e65-ab67-407b-ae2f-f3366924b869"),
                  fit: BoxFit.cover),
              borderRadius: new BorderRadius.only(
                topRight: const Radius.circular(15.0),
                bottomRight: const Radius.circular(15.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
