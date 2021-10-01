import 'package:for_bin/prodile_page_card.dart';
import 'package:for_bin/verticle_text_item.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            fromCssColor("#B3608D"),
            fromCssColor("#B96886"),
            fromCssColor("#D58D66"),
            fromCssColor("#ECAD4C"),
            fromCssColor("#FBC13B")
          ]),
        )),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choice.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 150,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      verticle_text_item(0, "Reviews Given"),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      maxRadius: 34,
                      minRadius: 30,
                      child: Text("V"),
                    ),
                    Text(
                      "Vinay Maheshwari",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      verticle_text_item(0, "Voted Helpfull"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                verticle_text_item(0, "Voted Helpfull"),
                verticle_text_item(0, "Voted Helpfull"),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CarouselSlider(
            options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.8),
            items: [profile_page_card(), profile_page_card()],
          )
        ],
      ),
    );
  }

  void choiceAction(String choice) {
    print("Working");
  }
}

class Constants {
  static const String Subscribe = "Subscribe";
  static const String Settings = "Settings";
  static const String SignOut = "Sign out";

  static const List<String> choice = <String>[Subscribe, Settings, SignOut];
}
