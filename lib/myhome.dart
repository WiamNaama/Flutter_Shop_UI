import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_shope/details.dart';

class MyHome extends StatefulWidget {
  MyHome({Key key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/5.jpg',
                fit: BoxFit.cover,
                height: 400.0,
                width: double.infinity,
              ),
              Center(
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'WELCOME TO OUR COLLECTION',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 300.0,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Details()));
                    },
                    mini: true,
                    backgroundColor: Colors.white,
                    elevation: 0.0,
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ),
                  )
                ]),
              )
            ],
          ),
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/10.jpg',
                fit: BoxFit.cover,
                height: 400.0,
                width: double.infinity,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
