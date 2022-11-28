import 'package:figmaaap/DrawerScreen.dart';
import 'package:figmaaap/Home.dart';
import 'package:figmaaap/LoginPage.dart';
import 'package:figmaaap/profile.dart';
import 'package:figmaaap/setting.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int index = 0;
  List<Widget> list = [Home(), profile(), setting()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.orange,
        ),
        body: list[index],
        drawer: MyDrawer(
          onTap: (ctx, i) {
            setState(() {
              index = i;
              Navigator.pop(ctx);
            });
          },
        ),
      ),
    );
  }
}
