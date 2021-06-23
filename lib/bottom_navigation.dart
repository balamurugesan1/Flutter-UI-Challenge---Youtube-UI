import 'package:flutter/material.dart';

Color normalcolor = Colors.grey.shade100;
Color selectedcolor = Colors.red;

BottomAppBar bottomappbar = BottomAppBar(
  color: Colors.black,
  child: Container(
    color: Colors.black,
    height: 55.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.home,
              color: selectedcolor,
            ),
            Text(
              "Home",
              style: TextStyle(color: selectedcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.whatshot,
              color: normalcolor,
            ),
            Text(
              "Trending",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.subscriptions,
              color: normalcolor,
            ),
            Text(
              "Subscriptions",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.email,
              color: normalcolor,
            ),
            Text(
              "Inbox",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              Icons.folder,
              color: normalcolor,
            ),
            Text(
              "Library",
              style: TextStyle(color: normalcolor),
            ),
          ],
        ),
      ],
    ),
  ),
);
