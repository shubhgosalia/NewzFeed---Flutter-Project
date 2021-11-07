import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final String name, urlToImage, url, title, author, description;
  NewsCard(
      {required this.name,
      required this.title,
      required this.urlToImage,
      required this.description,
      required this.author,
      required this.url});

  @override
  Widget build(BuildContext context) {
    return new Card(
      elevation: 4.0,
      child: new Container(
          padding: new EdgeInsets.all(12.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  child: new CircleAvatar(
                    child: new Text(name[0]),
                  )),
              new Expanded(
                  child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    child: new Text(
                      title,
                      style: TextStyle(fontSize: 18.0),
                    ),
                    margin: EdgeInsets.only(bottom: 10.0),
                  ),
                  new Text(description)
                ],
              ))
            ],
          )),
    );
  }
}
