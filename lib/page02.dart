import 'package:flutter/material.dart';

class Page02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Page02'),
        RaisedButton(
          child: Text('push Page01'),
          onPressed: () {
            Navigator.pushNamed(context, '/page01');
          },
        ),
        RaisedButton(
          child: Text('push Page03'),
          onPressed: () {
            Navigator.pushNamed(context, '/page03');
          },
        ),
        RaisedButton(
          child: Text('pop'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
