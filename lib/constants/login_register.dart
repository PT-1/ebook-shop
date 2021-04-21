

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget name(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;

  return Container(
    width: deviceWidth * 0.80,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        maxLines: 1,
        decoration: new InputDecoration(
          hintText: "Pratik Tiwari",
        ),
      ),
    ),
  );
}



Widget email(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;

  return Container(
    width: deviceWidth * 0.80,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        maxLines: 1,
        decoration: new InputDecoration(
          hintText: "abc@efg.com",
        ),
      ),
    ),
  );
}

Widget password(BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;

  return Container(
    width: deviceWidth * 0.80,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        maxLines: 1,
        decoration: new InputDecoration(
          hintText: "***********",
        ),
      ),
    ),
  );
}
