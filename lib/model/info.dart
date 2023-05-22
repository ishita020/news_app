class Info{
  late String url;
  late String text;
  Info({
  required this.url,required this.text
  });
  static Info fromJSON(dynamic map){
    return Info(
      url: map['urlToImage'], text: map['title']??'https://thumbs.dreamstime.com/b/news-newspapers-folded-stacked-word-wooden-block-puzzle-dice-concept-newspaper-media-press-release-42301371.jpg');
  }
}