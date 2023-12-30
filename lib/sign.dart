import 'package:flutter/material.dart';

class sign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            SizedBox(width: 40,),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('about');
                },
                icon: Icon(Icons.info)),
            SizedBox(width: 20,),
             Icon(Icons.settings),
          ],
          title: Text("Container"),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back),
          )),
          body:Container(
            child: Column(children: [
              Container(child:Text("I am Programmanc",style: TextStyle(color: Colors.white),),color:Colors.blue,width:double.infinity,margin: EdgeInsets.all(5),height:150,alignment: Alignment.center,),
              Container(child: Text("Hai,I am Slanting"),transform:Matrix4.skew(0.0,0.2),color:Colors.blue,height:80,width: double.infinity,margin: EdgeInsets.all(10),alignment: Alignment.center,),
              Container(child: Text("Hai,I am Slanting"),transform:Matrix4.skew(0.2,0.4),color:Colors.blue,height:80,width: double.infinity,margin: EdgeInsets.all(10),alignment: Alignment.center),
              SizedBox(height:90),
              Stack(alignment: Alignment.center,clipBehavior: Clip.antiAlias,
              children: [
                Container(color:Color.fromARGB(255, 192, 153, 36),width:150,height:150),
                Container(color:Color.fromARGB(255, 12, 32, 121),width:100,height:100),
                Container(color:Colors.green,width:50,height:50),
                Container(color:Color.fromARGB(255, 193, 179, 35),width:20,height:20),
              ],)
            ]),
          ),
    );
  }
}
