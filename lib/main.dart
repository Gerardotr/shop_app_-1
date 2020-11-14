import 'package:flutter/material.dart';
import 'package:shop_app/src/pages/tabs_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color.fromRGBO(233, 233, 235, 1),
          accentColor: Color.fromRGBO(146, 45, 202, 1),
          fontFamily: 'OpenSans',
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'OpenSans'),
          )),
      title: 'ShopApp',
      initialRoute: '',
      routes: {'/': (BuildContext context) => TabsPage()},
    );
  }
}
