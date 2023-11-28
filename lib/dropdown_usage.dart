import 'dart:developer';

import 'package:flutter/material.dart';

class DropdownUsage extends StatefulWidget {
  const DropdownUsage({Key? key}) : super(key: key);

  @override
  State<DropdownUsage> createState() => _DropdownUsageState();
}

class _DropdownUsageState extends State<DropdownUsage> {
  String? _selectedCitty;
  final List<String> _allCities = [
    "Düzce",
    "Rize",
    "Yalova",
    "İzmir",
    "Van",
    "Manisa",
    "Adana"
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: const Text("Select City"),
        icon: const Icon(Icons.arrow_downward),
        iconSize: 14,
        underline: Container(
          height: 4,
          color: Colors.purple,
        ),
        style: const TextStyle(color: Colors.red),
        /*items: [
           DropdownMenuItem(
            child: Text("Ankara Sehri"),
            value: "Ankara",
          ),
          DropdownMenuItem(
            child: Text("Bursa Sehri"),
            value: "Bursa",
          ),
          DropdownMenuItem(
            child: Text("İzmir Sehri"),
            value: "İzmir",
          ),
          DropdownMenuItem(
            child: Text("Yalova Sehri"),
            value: "Yalova",
          ),       
        ], */
        items: _allCities
            .map(
              (String oAnkiSehir) => DropdownMenuItem(
                value: oAnkiSehir,
                child: Text(oAnkiSehir),
              ),
            )
            .toList(),
        value: _selectedCitty,
        onChanged: (String? newCity) {
          setState(() {
            log("Success $newCity");
            _selectedCitty = newCity;
          });
        },
      ),
    );
  }
}
