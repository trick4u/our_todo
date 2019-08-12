import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop;
            },
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            controller: scrollController,
          ),
        ),
      ),
    );
  }

  var flexibleSpace = SliverAppBar(
    expandedHeight: 200,
    pinned: true,
    flexibleSpace: FlexibleSpaceBar(
      title: Text(
        'Hey Tushar \n this is your to do list',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 35.0,
        ),
      ),
    ),
  );
}
