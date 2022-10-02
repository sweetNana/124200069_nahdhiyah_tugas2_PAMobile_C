import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/datakelompok.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'stopwatch.dart';
import 'daftar_anggota.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    StopwatchPage.tag: (context) => StopwatchPage(),
    DaftarAnggota.tag: (context) => DaftarAnggota()
  };

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'KerKom',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
