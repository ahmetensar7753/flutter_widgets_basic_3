// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';

class BasicButtons extends StatelessWidget {
  const BasicButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            log("Long press");
          },
          style: TextButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          child: const Text("textButton"),
        ),
        TextButton.icon(
          onPressed: () {},
          style: ButtonStyle(
            //backgroundColor: MaterialStateProperty.all(Colors.red),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.teal;
              }
              return null;
            }),
            foregroundColor: MaterialStateProperty.all(Colors.yellow),
            overlayColor: MaterialStateProperty.all(
              Colors.yellow.withOpacity(0.5),
            ),
          ),
          icon: const Icon(Icons.add),
          label: const Text("Text button with icon"),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.yellow,
          ),
          child: const Text("Elevated Button"),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text("Elevated with Icon"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("Outlined Button"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            side: const BorderSide(color: Colors.purple, width: 3),
          ),
          label: const Text("Outlined with Icon"),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.black, width: 2),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          label: const Text("Outlined with Icon"),
        ),
      ],
    );
  }
}
