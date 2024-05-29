import 'package:api_call/controller/api_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiController c = Provider.of<ApiController>(context);
    // Map data = ModalRoute.of(context)!.settings.arguments ?? as Map<String, dynamic>;

    return SafeArea(
      child: Scaffold(
        body: Consumer<ApiController>(builder: (context, pro, _) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ROLE"),
                          SizedBox(
                            width: 50,
                          ),
                          Text("ABILITY"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 380,
                width: 510,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/valorant-backround-1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment(-0.50, -0.36),
                  child: Text(
                    "hello",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 11,
                right: 15,
                left: 25,
                top: 50,
                child: Image(
                    image: NetworkImage(
                        "data:image/png;base64,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")),
              ),
            ],
          );
        }),
      ),
    );
  }
}
