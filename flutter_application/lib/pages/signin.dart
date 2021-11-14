import 'package:flutter/material.dart';
//import 'package:circular_placeholder/circular_placeholder.dart';

class signin1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("qwqwq"),
      //   elevation: 1.0,
      // ),

      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(130.0), // here the desired height
      appBar: AppBar(
        toolbarHeight: 30,
        // title: Container(
        //     // child: Align(
        //     //   alignment: Alignment(-0.16, 1),
        //     //   // child: Image.asset(
        //     //   //   "assets/images/newzfeed_logoooo_new.png",
        //     //   //   fit: BoxFit.fill,
        //     //   //   height: 80,
        //     //   //   width: 80,
        //     //   // ),
        //     // ),
        //     ),
        backgroundColor: Color(0xff1C2574),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(5),
          ),
        ),
        // actions: [
        //   IconButton(
        //       icon: Icon(MyTheme.themeNotifier.value == ThemeMode.light
        //           ? Icons.dark_mode
        //           : Icons.light_mode),
        //       onPressed: () {
        //         MyTheme.themeNotifier.value =
        //             MyTheme.themeNotifier.value == ThemeMode.light
        //                 ? ThemeMode.dark
        //                 : ThemeMode.light;
        //       })
        // ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //color: Colors.green,
        children: <Widget>[
          Row(
            children: [
              Container(
                color: Colors.indigo,
                child: SizedBox(
                  height: 198.0,
                  width: 198.0,
                  child: new Container(
                    alignment: Alignment.center,
                    width: 180.0,
                    height: 180.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 180.0,
                      height: 180.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 198.0,
                  width: 18.0,
                ),
              ),
              Container(
                color: Colors.indigo,
                child: SizedBox(
                  height: 198.0,
                  width: 198.0,
                  child: new Container(
                    alignment: Alignment.center,
                    width: 180.0,
                    height: 180.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 180.0,
                      height: 180.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 47.0,
                  width: 198.0,
                  child: Text(
                    "Category 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),

                  //child: Circl
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 47.0,
                  width: 18.0,
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 47.0,
                  width: 198.0,
                  child: Text(
                    "Category 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),

                  //child: Circl
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.indigo,
                child: SizedBox(
                  height: 198.0,
                  width: 198.0,
                  child: new Container(
                    alignment: Alignment.center,
                    width: 180.0,
                    height: 180.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 180.0,
                      height: 180.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 198.0,
                  width: 18.0,
                ),
              ),
              Container(
                color: Colors.indigo,
                child: SizedBox(
                  height: 198.0,
                  width: 198.0,
                  child: new Container(
                    alignment: Alignment.center,
                    width: 180.0,
                    height: 180.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 180.0,
                      height: 180.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 47.0,
                  width: 198.0,
                  child: Text(
                    "Category 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),

                  //child: Circl
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 47.0,
                  width: 18.0,
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 47.0,
                  width: 198.0,
                  child: Text(
                    "Category 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),

                  //child: Circl
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.indigo,
                child: SizedBox(
                  height: 198.0,
                  width: 198.0,
                  child: new Container(
                    alignment: Alignment.center,
                    width: 180.0,
                    height: 180.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 180.0,
                      height: 180.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 198.0,
                  width: 18.0,
                ),
              ),
              Container(
                color: Colors.indigo,
                child: SizedBox(
                  height: 198.0,
                  width: 198.0,
                  child: new Container(
                    alignment: Alignment.center,
                    width: 180.0,
                    height: 180.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 180.0,
                      height: 180.0,
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 47.0,
                  width: 198.0,
                  child: Text(
                    "Category 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),

                  //child: Circl
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 47.0,
                  width: 18.0,
                ),
              ),
              Container(
                color: Colors.white,
                child: SizedBox(
                  height: 47.0,
                  width: 198.0,
                  child: Text(
                    "Category 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),

                  //child: Circl
                ),
              ),
            ],
          ),
          Container(
            //alignment: Alignment.center,
            color: Colors.black,
            child: SizedBox(
              height: 13.0,
              width: 414.0,
            ),
          ),
          Container(
            //alignment: Alignment.center,
            color: Colors.white,
            child: SizedBox(
              height: 43.0,
              width: 414.0,
              child: Text(
                "1/2",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 42.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
