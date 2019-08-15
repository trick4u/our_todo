import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.subtitle, this.title});

  final String subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      child: Container(
        height: 150,
        width: 150,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(offset: Offset(2, 2), blurRadius:5.0,color: Colors.grey.shade200),
          ],
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.lightBlueAccent, width: 5.0),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
              ),
              SizedBox(
                height: 5,
              ),
              Text(subtitle),
            ],
          ),
        ),
      ),
    );
  }
}
