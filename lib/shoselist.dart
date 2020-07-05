import 'package:flutter/material.dart';

class ShoseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/images/9.jpg',
              fit: BoxFit.cover,
              height: 160,
              width: 160,
            ),
            Text(
              '\$34',
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/images/9.jpg',
              fit: BoxFit.cover,
              height: 160,
              width: 160,
            ),
            Text(
              '\$34',
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
            ),
          ],
        )
      ],
    );
  }
}
