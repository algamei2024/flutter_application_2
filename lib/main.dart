import 'package:flutter/material.dart';
import 'package:flutter_application_2/sign.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          'sign': (context) {
            return sign();
          },
          'about': (context) {
            return about();
          },
        },
        home: test());
  }
}

class test extends StatefulWidget {
  State<StatefulWidget> createState() {
    return myHome();
  }
}

class myHome extends State<test> {
  List<String> menu = [
    "الصفحة الرئيسية",
    "تسجيل الدخول",
    "الوجبات",
    "العملاء",
    "الطلبات",
    "الخــدمات",
    "خدمة التوصيل",
    "الاعدادات",
    "خـــروج"
  ];
  List icons = [
    Icons.home,
    Icons.supervisor_account_rounded,
    Icons.food_bank,
    Icons.timelapse,
    Icons.food_bank_rounded,
    Icons.room_service,
    Icons.phone,
    Icons.settings,
    Icons.exit_to_app,
  ];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("splash Disgn - 6"),
          actions: [
            SizedBox(width: 20,),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('about');
                },
                icon: Icon(Icons.screenshot_monitor)),
                SizedBox(width: 20,),
            Icon(Icons.legend_toggle)
          ],
        ),
        drawer: Drawer(
          child: Wrap(children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: double.infinity,
                  color: Color.fromARGB(255, 156, 172, 9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('images/person.jpg'),
                      ),
                      Text('مطعم الدار',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Divider(
                  thickness: 5,
                  color: Color.fromARGB(255, 201, 57, 32),
                ),
                Container(
                  color: Color.fromARGB(255, 12, 26, 82),
                  child: Column(
                    children: [
                      ListView.separated(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(
                              decelerationRate: ScrollDecelerationRate.normal),
                          scrollDirection: Axis.vertical,
                          separatorBuilder: (context, i) {
                            return Divider(
                              thickness: 2,
                              height: 7,
                              color: Color.fromARGB(135, 255, 255, 25),
                            );
                          },
                          itemBuilder: (context, i) {
                            return ListTile(
                              title: Text(
                                menu[i],
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              leading: Icon(icons[i], color: Colors.white),
                              trailing: Icon(Icons.arrow_forward_ios_sharp,
                                  color: Colors.white),
                            );
                          },
                          itemCount: menu.length)
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.lime,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(150)),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('sign');
                        },
                        tooltip: "App Name",
                        icon: CircleAvatar(
                          backgroundImage: AssetImage('images/person.jpg'),
                          radius: 100,
                        ),
                        iconSize: 150),
                    Text(
                      "App Name",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.lime,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(150)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
