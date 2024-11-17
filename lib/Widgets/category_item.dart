import 'package:flutter/material.dart';
import 'package:newsapp/Models/category.dart';
import 'package:newsapp/Screens/category_screen.dart';
class CategoryItem extends StatelessWidget {
 const  CategoryItem({super.key, required this.category,});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child:  InkWell(
          splashColor: Colors.red,
          onTap:(){
             Navigator.of(context).push(MaterialPageRoute(builder: (context){
               return CategoryScreen(category: category.name);
             }));
          },
          child: Container(
            margin: EdgeInsets.all(5),
            height: 100,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage("${category.image}")
                )
            ),
            child: Center(child: Text("${category.name}",style: TextStyle(fontSize: 30,color: Color(0xffffffff),fontWeight: FontWeight.bold),)),
          ),
        )
    );
  }
}
