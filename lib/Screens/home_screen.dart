import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/articles_item_list.dart';
import 'package:newsapp/Widgets/category_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Latest ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30,fontStyle: FontStyle.italic),),
              Text('News',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 25,fontStyle: FontStyle.italic),),
            ],
          ),),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryCard(),),
         ArticlesItemList(),
        ],
      )
    );

  }
}
