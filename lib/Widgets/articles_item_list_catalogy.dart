import 'package:flutter/material.dart';
import '../Models/articles_model.dart';


class ArticlesItemListCatalogy extends StatefulWidget {
  const ArticlesItemListCatalogy({super.key, required this.articles,});

  final Articles articles;

  @override
  State<ArticlesItemListCatalogy> createState() => _ArticlesItemListCatalogyState();
}

class _ArticlesItemListCatalogyState extends State<ArticlesItemListCatalogy> {

  Widget build(BuildContext context) {
Uri uri=Uri.parse("https://pub.dev/packages/url_launcher/example");
    String errorimage="https://img.freepik.com/free-vector/images-concept-illustration_114360-218.jpg?ga=GA1.1.635320984.1721479703&semt=ais_hybrid";
    return  Container(
        margin: EdgeInsets.all(5),
        width: double.infinity,
        child: Column(
          children: [
            Container(
                height: 300,
                width: double.infinity,
                child: Image(
                  image: NetworkImage("${ widget.articles.urlImage!=null?widget.articles.urlImage:errorimage}"),fit: BoxFit.fill,)),
            Text("${widget.articles.title}",overflow: TextOverflow.ellipsis,maxLines: 1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("${widget.articles.desc}",overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(color: Colors.grey),),
          ],
        ),

    );
  }
}



