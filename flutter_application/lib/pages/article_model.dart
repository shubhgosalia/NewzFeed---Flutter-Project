class ArticleModel {
  String? author;
  String title;
  String description;
  String url;
  String urlToImage;

  String? content;
  ArticleModel(
      {this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      this.content});
}
