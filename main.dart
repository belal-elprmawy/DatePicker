import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State {

  DateTime now = DateTime.now();

  String increaseDate(DateTime date) {
    now = date.add(Duration(days: 1));
    return parseDate(now);
  }

  String decreaseDate(DateTime date) {
    now = date.subtract(Duration(days: 1));
    return parseDate(now);
  }

  String parseDate(DateTime date) {
    return date.year.toString() +
        " -" +
        date.month.toString() +
        " -" +
        date.day.toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      decreaseDate(now);
                      setState(() {
                      });
                    },
                  ),
                  Text(parseDate(now)),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      increaseDate(now);
                      setState(() {
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
