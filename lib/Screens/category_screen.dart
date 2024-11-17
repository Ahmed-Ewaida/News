import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/category_item_view.dart';



class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$category",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25,fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: CustomScrollView(
        slivers: [CategoryItemView(category: category)],
      ),
    );
  }
}
