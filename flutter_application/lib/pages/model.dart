import 'package:flutter/foundation.dart';

class Source {
  final String id;
  final String name;
  final String description;
  final String url;
  final String category;
  final String language;
  final String country;

  Source(
      {required this.id,
      required this.name,
      required this.description,
      required this.url,
      required this.category,
      required this.language,
      required this.country});

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        url: json['url'],
        category: json['category'],
        language: json['language'],
        country: json['country']);
  }

  factory Source.fromJsonForArticles(Map<String, dynamic> json) {
    return Source(
        id: json['id'],
        name: json['name'],
        url: '',
        language: '',
        description: '',
        country: '',
        category: '');
  }
}

class NewsApi {
  final String status;
  final List<Source> sources;

  NewsApi({required this.status, required this.sources});

  factory NewsApi.fromJson(Map<String, dynamic> json) {
    return NewsApi(
        status: json['status'],
        sources: (json['sources'] as List)
            .map((sources) => Source.fromJson(sources))
            .toList());
  }
}

class Articles {
  final Source sources;
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  Articles(
      {required this.sources,
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
        sources: Source.fromJsonForArticles(json['source']),
        author: json['author'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publishedAt: json['publishedAt'],
        content: json['content']);
  }
}
