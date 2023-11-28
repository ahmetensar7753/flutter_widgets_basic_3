import 'dart:developer';

import 'package:flutter/material.dart';

class PopupMenuUsage extends StatefulWidget {
  const PopupMenuUsage({Key? key}) : super(key: key);

  @override
  State<PopupMenuUsage> createState() => _PopupMenuUsageState();
}

class _PopupMenuUsageState extends State<PopupMenuUsage> {
  List<String> colors = ["blue", "green", "red", "yellow"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String city) {
          log("Selected city : $city");
          setState(() {});
        },
        itemBuilder: (BuildContext context) {
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(
              child: Text("Ankara"),
              value: "Ankara",
            ),
            PopupMenuItem(
              child: Text("Bursa"),
              value: "Bursa",
            ),
            PopupMenuItem(
              child: Text("Van"),
              value: "Van",
            ),
          ]; */
          return colors
              .map(
                (String color) => PopupMenuItem(
                  value: color,
                  child: Text(color),
                ),
              )
              .toList();
        },
      ),
    );
  }
}
