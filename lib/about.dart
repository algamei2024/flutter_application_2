import 'package:flutter/material.dart';
class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            SizedBox(
              width: 40,
            ),
            Icon(Icons.info),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.settings),
          ],
          title: Text("MaterialApp"),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          )),
      body: Container(margin: EdgeInsets.all(20),alignment: Alignment.center,child:Text("Use constwith the constructor to improve performance.Try adding the const keyword to the constructor invocation , Use constwith the constructor to improve performance.Try adding the const keyword to the constructor invocation",textAlign: TextAlign.center,)
            
      ));
  }
}
