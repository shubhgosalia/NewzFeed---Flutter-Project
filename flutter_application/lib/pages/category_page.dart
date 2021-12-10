import 'package:flutter/material.dart';
//import 'package:circular_placeholder/circular_placeholder.dart';
import 'package:flutter/src/painting/box_decoration.dart';
//import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class signin1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/newzfeed_logoooo_new.png',
              fit: BoxFit.contain,
              height: 42,
            ),
            Container(padding: const EdgeInsets.all(8.0), child: Text(''))
          ],
        ),
      ),
      //   appBar: AppBar(
      //     toolbarHeight: 30,
      //  backgroundColor: Color(0xff1C2574),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.vertical(
      //         bottom: Radius.circular(5),
      //       ),
      //     ),

      //   ),
      // body: Wrap(
      //   // We changed from Row to Wrap
      //   Axis: Axis.vertical,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //color: Colors.green,
          children: <Widget>[
            Row(
              children: [
                Container(
                  color: Colors.white,
                  child: SizedBox(
                    height: 198.0,
                    width: 198.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 101.0,
                      height: 101.0,
                      child: new Container(
                        alignment: Alignment.center,
                        width: 101.0,
                        height: 101.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,

                          // child: Container(
                          // image: DecorationImage(
                          //   image:
                          // DecorationImage ()]  Image.asset(
                          //        'build/flutter_assets/images/business.png',
                          //     ),
                          // ),
                        ),
                        // ),
                        child: Image.asset(
                          'assets/images/business.png',
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
                  color: Colors.white,
                  child: SizedBox(
                    height: 198.0,
                    width: 198.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 101.0,
                      height: 101.0,
                      child: new Container(
                        alignment: Alignment.center,
                        width: 101.0,
                        height: 101.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/technology.png',
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
                  color: Colors.white,
                  child: SizedBox(
                    height: 198.0,
                    width: 198.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 101.0,
                      height: 101.0,
                      child: new Container(
                        alignment: Alignment.center,
                        width: 101.0,
                        height: 101.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/sports.png',
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
                      "Business",
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
                      "Technology",
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
                      "Sports",
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
                  color: Colors.white,
                  child: SizedBox(
                    height: 198.0,
                    width: 198.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 101.0,
                      height: 101.0,
                      child: new Container(
                        alignment: Alignment.center,
                        width: 101.0,
                        height: 101.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,

                          // child: Container(
                          // image: DecorationImage(
                          //   image:
                          // DecorationImage ()]  Image.asset(
                          //        'build/flutter_assets/images/business.png',
                          //     ),
                          // ),
                        ),
                        // ),
                        child: Image.asset(
                          'assets/images/health_&_medicine.png',
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
                  color: Colors.white,
                  child: SizedBox(
                    height: 198.0,
                    width: 198.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 101.0,
                      height: 101.0,
                      child: new Container(
                        alignment: Alignment.center,
                        width: 101.0,
                        height: 101.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Entertainment.png',
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
                  color: Colors.white,
                  child: SizedBox(
                    height: 198.0,
                    width: 198.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 101.0,
                      height: 101.0,
                      child: new Container(
                        alignment: Alignment.center,
                        width: 101.0,
                        height: 101.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/General.png',
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
                      "Health ",
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
                      "Entertainment",
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
                      "General",
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
                  color: Colors.white,
                  child: SizedBox(
                    height: 198.0,
                    width: 198.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 101.0,
                      height: 101.0,
                      child: new Container(
                        alignment: Alignment.center,
                        width: 101.0,
                        height: 101.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,

                          // child: Container(
                          // image: DecorationImage(
                          //   image:
                          // DecorationImage ()]  Image.asset(
                          //        'build/flutter_assets/images/business.png',
                          //     ),
                          // ),
                        ),
                        // ),
                        child: Image.asset(
                          'assets/images/Govt._&_Politics.png',
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
                  color: Colors.white,
                  child: SizedBox(
                    height: 198.0,
                    width: 198.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 101.0,
                      height: 101.0,
                      child: new Container(
                        alignment: Alignment.center,
                        width: 101.0,
                        height: 101.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/lifestyle.png',
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
                  color: Colors.white,
                  child: SizedBox(
                    height: 198.0,
                    width: 198.0,
                    child: new Container(
                      alignment: Alignment.center,
                      width: 101.0,
                      height: 101.0,
                      child: new Container(
                        alignment: Alignment.center,
                        width: 101.0,
                        height: 101.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Science.png',
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
                      "Politics",
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
                      "Lifestyle",
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
                      "Science",
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
            // Container(
            //   //alignment: Alignment.center,
            //   color: Colors.white,
            //   child: SizedBox(
            //     height: 43.0,
            //     width: 414.0,
            //     child: Text(
            //       "1/2",
            //       textAlign: TextAlign.end,
            //       style: TextStyle(
            //         fontSize: 42.0,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   //inactiveIconColor: Colors.grey,
      //   //activeIconColor: Colors.blueAccent,
      //   //circleColor: Colors.white,
      //   // textColor: Colors.blueAccent,
      //   tabs: [
      //     TabData(
      //       iconData: Icons.home,
      //       title: "Home",
      //     ),
      //     TabData(
      //       iconData: Icons.category,
      //       title: "Category",
      //     ),
      //     TabData(iconData: Icons.list, title: "List"),
      //     TabData(iconData: Icons.account_box, title: "Profile")
      //   ],
      // ),
    );
  }
}
