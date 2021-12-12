import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleSourceScreen extends StatefulWidget {
  ArticleSourceScreen(
      {Key? key,
      this.sourceId = "NewzFeed",
      this.sourceName = "NewzFeed",
      this.isCategory: false})
      : super(key: key);
  final sourceId;
  final sourceName;
  final isCategory;
  @override
  _ArticleSourceScreenState createState() => new _ArticleSourceScreenState(
      sourceId: this.sourceId,
      sourceName: this.sourceName,
      isCategory: this.isCategory);
}

class _ArticleSourceScreenState extends State<ArticleSourceScreen> {
  _ArticleSourceScreenState({this.sourceId, this.sourceName, this.isCategory});
  var data;
  final sourceId;
  final sourceName;
  final isCategory;
  bool change = false;
  final WebView flutterWebviewPlugin = new WebView();
  final auth = FirebaseAuth.instance;
  var userDatabaseReference;
  var articleDatabaseReference;

  Future getData() async {
    var response;

    if (isCategory) {
      response = await http.get(
          Uri.parse('https://newsapi.org/v2/top-headlines?category=' +
              sourceId +
              '&language=en'),
          headers: {
            "Accept": "application/json",
            "X-Api-Key": "62413e0055bb42c79f8dc33502e339d1"
          });
    } else {
      response = await http.get(
          Uri.parse('https://newsapi.org/v2/top-headlines?sources=' + sourceId),
          headers: {
            "Accept": "application/json",
            "X-Api-Key": "62413e0055bb42c79f8dc33502e339d1"
          });
    }

    if (mounted) {
      this.setState(() {
        data = jsonDecode(response.body);
      });
    }

    return "Success!";
  }

  void initState() {
    super.initState();
    this.getData();
  }

  Column buildButtonColumn(IconData icon) {
    Color color = Theme.of(context).primaryColor;
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        new Icon(icon, color: color),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(sourceName),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body: data == null
          ? const Center(child: const CircularProgressIndicator())
          : data["articles"].length != 0
              ? new ListView.builder(
                  itemCount: data == null ? 0 : data["articles"].length,
                  padding: new EdgeInsets.all(8.0),
                  itemBuilder: (BuildContext context, int index) {
                    return new GestureDetector(
                      child: new Card(
                        elevation: 1.7,
                        child: new Padding(
                          padding: new EdgeInsets.all(10.0),
                          child: new Column(
                            children: [
                              new Row(
                                children: <Widget>[
                                  new Padding(
                                    padding: new EdgeInsets.only(left: 4.0),
                                  ),
                                  new Padding(
                                    padding: new EdgeInsets.all(5.0),
                                    child: new Text(
                                      data["articles"][index]["source"]["name"],
                                      style: new TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              new Row(
                                children: [
                                  new Expanded(
                                    child: new GestureDetector(
                                      child: new Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          new Padding(
                                            padding: new EdgeInsets.only(
                                                left: 4.0,
                                                right: 8.0,
                                                bottom: 8.0,
                                                top: 8.0),
                                            child: new Text(
                                              data["articles"][index]["title"],
                                              style: new TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          new Padding(
                                            padding: new EdgeInsets.only(
                                                left: 4.0,
                                                right: 4.0,
                                                bottom: 4.0),
                                            child: new Text(
                                              data["articles"][index]
                                                  ["description"],
                                              style: new TextStyle(
                                                color: Colors.grey[500],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        _launchUrl(
                                          data["articles"][index]["url"],
                                        );
                                      },
                                    ),
                                  ),
                                  new Column(
                                    children: <Widget>[
                                      new Padding(
                                        padding: new EdgeInsets.only(top: 8.0),
                                        child: new SizedBox(
                                          height: 100.0,
                                          width: 100.0,
                                          child: new Image.network(
                                            data["articles"][index]
                                                ["urlToImage"],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
              : new Center(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Icon(Icons.chrome_reader_mode,
                          color: Colors.grey, size: 60.0),
                      new Text(
                        "No articles saved",
                        style:
                            new TextStyle(fontSize: 24.0, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
    );
  }

  _launchUrl(String url) async {
    await launch(url);
  }
}
