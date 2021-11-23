import 'package:flutter/material.dart';
import 'model.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'list_article.dart';

Future<List<Source>> fetchNewsSource() async {
  final response = await http.get(Uri.parse(
      'http://newsapi.org/v2/sources?apiKey=62413e0055bb42c79f8dc33502e339d1'));
  if (response.statusCode == 200) {
    List sources = json.decode(response.body)['sources'];
    return sources.map((source) => new Source.fromJson(source)).toList();
  } else {
    throw Exception('FAILED TO LOAD');
  }
}

void main() => runApp(SourceScreen());

class SourceScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SourceScreenState();
}

class SourceScreenState extends State<SourceScreen> {
  var list_sources;
  var refreshkey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    refereshListSource();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Newz feed',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Newz Feed'),
        ),
        body: Center(
          child: RefreshIndicator(
            key: refreshkey,
            child: FutureBuilder<List<Source>>(
              future: list_sources,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  List<Source>? sources = snapshot.data;
                  return new ListView(
                      children: sources!
                          .map((sources) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ArticleScreen(source: sources)));
                                },
                                child: Card(
                                  elevation: 2.0,
                                  color: Colors.white,
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 14.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 3.0),
                                        width: 100.0,
                                        height: 140.0,
                                        child: Image.asset(
                                            'assets/images/news.png'),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 30.0,
                                                            bottom: 15.0),
                                                    child: Text(
                                                      '${sources.name}',
                                                      style: TextStyle(
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              child: Text(
                                                '${sources.description}',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 5.0, bottom: 5.0),
                                              child: Text(
                                                'CATEGORY: ${sources.category}',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ))
                          .toList());
                }

                return CircularProgressIndicator();
              },
            ),
            onRefresh: refereshListSource,
          ),
        ),
      ),
    );
  }

  Future<Null> refereshListSource() async {
    refreshkey.currentState?.show(atTop: false);

    setState(() {
      list_sources = fetchNewsSource();
    });

    return null;
  }
}
