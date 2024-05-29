import 'package:api_call/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../controller/api_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TextEditingController controller = TextEditingController();
    //TabController controller = TabController(length: , vsync: vsync)
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("VALORANT",
              style:
                  TextStyle(fontFamily: 'ValorantFont', color: Colors.white)),
          backgroundColor: Color(0xff171925),
          centerTitle: true,
          bottom: TabBar(
              indicatorColor: Color(0xffff4654),
              mouseCursor: SystemMouseCursors.click,
              indicatorSize: TabBarIndicatorSize.label,
              splashFactory: InkSparkle.splashFactory,
              labelColor: Color(0xffff4654),
              labelPadding: EdgeInsets.symmetric(
                horizontal: 50,
              ),
              tabs: [
                Tab(
                  child: Text(
                    "AGENTS",
                    // style: TextStyle(color: Colors.black54),
                  ),
                ),
                Tab(
                  child: Text("ARSENAL"),
                ),
              ]),
        ),
        backgroundColor: Color(0xff171925),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                children: [
                  Consumer<ApiController>(
                    builder: (context, provider, child) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: provider.alldata.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  print("object");
                                  Navigator.of(context).pushNamed(
                                    MyRoutes.detail,
                                    arguments: provider.alldata[index],
                                  );
                                },
                                child: Container(
                                  height: 200,
                                  width: 470,
                                  decoration: BoxDecoration(
                                    color: Color(0xff1f2731),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    alignment: Alignment.center,
                                    children: [
                                      Text(
                                          provider.alldata[index].developerName,
                                          style: GoogleFonts.bebasNeue(
                                            letterSpacing: 4,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 80,
                                            color: Color(0xff2e363f),
                                          )),
                                      Align(
                                        alignment: Alignment(-0.38, 0),
                                        child: Text(
                                          provider.alldata[index].description,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 32,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text(
                                        "data",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Positioned(
                                        bottom: 11,
                                        right: -0.39,
                                        child: Image(
                                          image: NetworkImage(provider
                                              .alldata[index].killfeedPortrait),
                                          height: 250,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Center(
              child: Text("data"),
            ),
            // Center(
            //   child: Column(
            //     children: [
            //       Text(
            //         "data",
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
