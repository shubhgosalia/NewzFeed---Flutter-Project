import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bottom_nav.dart';
import 'package:flutter_application_1/pages/lightdark.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_application_1/pages/NewsCard.dart';

final String API_KEY = "62413e0055bb42c79f8dc33502e339d1";
final String end_point = "https://newsapi.org/v2/";
String apiURL() {
  String url = end_point + "top-headlines?sources=techcrunch&apiKey=" + API_KEY;
  return url;
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final List<NewsCard> _news = <NewsCard>[];
  var resBody;
  bool loading = true;
  Brightness bright = Brightness.light;

  getUserInfo() async {
    var res = await http
        .get(Uri.parse(apiURL()), headers: {"Accept": "application/json"});
    resBody = json.decode(res.body);
    if (resBody['status'] == 'ok') {
      _news.clear();
      print(resBody['articles']);
      for (var data in resBody['articles']) {
        print(data);
        _news.add(new NewsCard(
          title: data['title'],
          author: data['author'],
          description: data['description'],
          name: data['source']['name'],
          url: data['url'],
          urlToImage: data['urlToImage'],
        ));
      }
      setState(() {
        loading = false;
        print("Loaded Data");
      });
    } else {
      print("Something Went Wrong" + resBody);
    }
  }

  Widget _buildBody() {
    if (loading) {
      return new Center(
        child: new CircularProgressIndicator(),
      );
    } else {
      return new Column(
        children: <Widget>[
          new Flexible(
              child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _news[index],
            itemCount: _news.length,
          )),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
        actions: [
          IconButton(
              icon: Icon(MyTheme.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                MyTheme.themeNotifier.value =
                    MyTheme.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
        //title: new Text("Newz Feed"),
      ),
      body: new Center(
        child: _buildBody(),
      ),
      drawer: new Drawer(
        child: new ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: <Widget>[
            const DrawerHeader(
                child: const Center(
                    child: const Text(
              'Newz Feed',
              style: TextStyle(fontSize: 22.0),
            ))),
            new ListTile(
              title: const Text('Home'),
              selected: true,
              onTap: () {},
            ),
            const Divider(),
            new ListTile(
              title: const Text('Light'),
              onTap: () {
                Get.changeTheme(ThemeData.light());
              },
            ),
            new ListTile(
              title: const Text('Dark'),
              onTap: () {
                Get.changeTheme(ThemeData.dark());
              },
            ),
            const Divider(),
            new ListTile(
              title: new Text("Settings"),
              onTap: () {},
            ),
            new ListTile(
              title: new Text("Bookmark"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }
}
