import 'package:flutter/material.dart';
import 'package:newsapp/Models/articles_model.dart';
import 'package:newsapp/Network/api__server.dart';
import 'package:newsapp/Widgets/articles_item_list_catalogy.dart';

class ArticlesItemList extends StatefulWidget {
  const ArticlesItemList({super.key,});

  @override
  State<ArticlesItemList> createState() => _ArticlesItemListState();
}

class _ArticlesItemListState extends State<ArticlesItemList> {
 List<Articles> data =[];
  @override
  void initState(){
    // TODO: implement initState

    super.initState();
    getNews();
  }

  getNews()async{
    data = await ApiServer().getNews(category:"entertainment");
    setState(() {

    });
  }

  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){

      return  ArticlesItemListCatalogy(articles: data[index]);

    },childCount: data.length),);
  }
}
