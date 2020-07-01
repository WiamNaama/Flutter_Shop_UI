import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/7.jpg'),
                        fit: BoxFit.cover)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
              Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                    child: Center(
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.black,
                      ),
                    ),
                    mini: true,
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    onPressed: () {}),
              ),
            ],
          )
        ],
      ),
    );
  }
}
