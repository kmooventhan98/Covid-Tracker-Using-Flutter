import 'package:flutter/material.dart';

import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid.in',
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/covid.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Covid Traker\n',
                      style: Theme.of(context).textTheme.headline4),
                  TextSpan(
                      text: 'Track India Cases',
                      style: Theme.of(context).textTheme.headline5),
                ]),
              )
            ],
          ),
        ),
        FittedBox(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DashBoard();
                }),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              margin: EdgeInsets.only(bottom: 25.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0), color: Colors.red),
              child: Row(
                children: [
                  Text('Show Details'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
