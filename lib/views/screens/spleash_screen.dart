import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/routes.dart';

class Splesh_screen extends StatefulWidget {
  const Splesh_screen({Key? key}) : super(key: key);

  @override
  State<Splesh_screen> createState() => _Splesh_screenState();
}

class _Splesh_screenState extends State<Splesh_screen> {
  FlutterLogoStyle Style = FlutterLogoStyle.markOnly;

  changePage() {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        Style = FlutterLogoStyle.horizontal;
      });
    });

    Timer.periodic(const Duration(seconds: 5), (timer) {
      Navigator.of(context).pushReplacementNamed(MyRoutes.home);
      timer.cancel();
    });
  }

  @override
  void initState() {
    super.initState();
    changePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              // image: AssetImage('assets/images/dhvani1.png'),
              image: AssetImage('assets/images/valorant-backround.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250,
                ),
                Image(
                  image: AssetImage(
                    'assets/logo/logo.png',
                  ),
                  height: 120,
                  width: 120,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "VALORANT",
                  style: TextStyle(
                      fontFamily: 'ValorantFont',
                      color: Colors.white,
                      fontSize: 30),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
