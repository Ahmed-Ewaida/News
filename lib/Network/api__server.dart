import 'package:dio/dio.dart';
import 'package:newsapp/Models/articles_model.dart';

class ApiServer{
  final Dio dio=Dio();
  final String _url ="https://newsapi.org/v2/top-headlines?country=us&apiKey=99b7ce6d61ba46efa75ce7d0c7ed6cfd&category=";

 getNews({required String category})async{
  Response response= await dio.get("$_url$category");
  Map<String,dynamic> jsonData=response.data;
  List<dynamic> articlesData=jsonData["articles"];

  List<Articles> articlesModel=[];

  for (var i in articlesData){
    Articles articles=Articles(title: i["title"], urlImage: i["urlToImage"], desc: i["description"],url: i["url"]);
    articlesModel.add(articles);
  }


  return articlesModel;

 }
}