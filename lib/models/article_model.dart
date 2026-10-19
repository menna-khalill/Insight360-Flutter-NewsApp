
class ArticleModel {
  final String? author;
  final String? image;
  final String? date;
  final String? title;
  final String? description;
  final String? con;

  const ArticleModel({
    this.author,
    this.image,
    this.date,
    this.title,
    this.description,
    this.con,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      author: json['author'] as String?,
      image: json['urlToImage'] as String?,
      date: json['publishedAt'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      con: json['content'] as String?,
    );
  }
}
