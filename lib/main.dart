import 'package:api_call/controller/api_controller.dart';
import 'package:api_call/utils/routes.dart';
import 'package:api_call/views/screens/detail_page.dart';
import 'package:api_call/views/screens/home_page.dart';
import 'package:api_call/views/screens/spleash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (contex) => ApiController(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.spleash,
      theme: ThemeData(fontFamily: 'ValorantFont'),
      routes: {
        MyRoutes.spleash: (context) => Splesh_screen(),
        MyRoutes.home: (context) => HomePage(),
        MyRoutes.detail: (context) => DetailPage(),
      },
    );
  }
}
