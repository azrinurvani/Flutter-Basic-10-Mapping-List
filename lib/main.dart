import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Azri",
      "Age": 25,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
    {
      "Name": "Budi",
      "Age": 29,
      "favColor": ["Red", "Green", "Blue"]
    },
    {
      "Name": "Azri",
      "Age": 25,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
    {
      "Name": "Azri",
      "Age": 25,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    },
    {
      "Name": "Azri",
      "Age": 25,
      "favColor": [
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber",
        "Black",
        "Red",
        "Amber"
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ID Apps"),
        ),
        body: ListView(
          children: myList.map((data) {
            List myFavColor = data['favColor'];
            return Card(
              margin: const EdgeInsets.all(20),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name : ${data['Name']}"),
                            Text("Age : ${data['Age']}"),
                          ],
                        ),
                      ],
                    ),
                    //favColor
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: myFavColor.map((favColor) {
                        return Container(
                          color: Colors.green,
                          child: Text(favColor),
                          margin: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 8,
                          ),
                          padding: const EdgeInsets.all(10),
                        );
                      }).toList()),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
