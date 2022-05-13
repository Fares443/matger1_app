import 'package:flutter/material.dart';
import 'package:matger1_app/widget/HomeBady.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan[700],
            elevation: 0,
            title: Text('مرحبا بكم بمتجر الاكترونيات'),
            actions: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(onPressed: (){},
                  icon: Icon(Icons.menu)),
            )],
          ),
      body: HomeBady(),

    );
  }
}
