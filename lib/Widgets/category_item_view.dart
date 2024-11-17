import 'package:flutter/material.dart';
import 'package:newsapp/Models/articles_model.dart';
import 'package:newsapp/Network/api__server.dart';
import 'package:newsapp/Widgets/articles_item_list_catalogy.dart';


class CategoryItemView extends StatefulWidget {
  const CategoryItemView({super.key, required this.category});
  final String category;
  @override
  State<CategoryItemView> createState() => _CategoryItemViewState();
}

class _CategoryItemViewState extends State<CategoryItemView> {
  List<Articles> future=[];

  @override
  void initState() {
    // TODO: implement initState
    getNews();
    super.initState();

  }
  void getNews()async{
    future =await ApiServer().getNews(category: widget.category);
    setState(() {

    });
  }
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){

      return  ArticlesItemListCatalogy(articles: future[index]);

    },childCount: future.length),);
  }
}
