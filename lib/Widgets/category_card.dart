import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/category_item.dart';

import '../Models/category.dart';
class CategoryCard extends StatelessWidget {
   CategoryCard({super.key});
  final List<Category> CategoryiItem= [
    Category(
        name: "Sports",
        image:
        "https://img.freepik.com/free-photo/sports-tools_53876-138077.jpg?ga=GA1.1.635320984.1721479703&semt=ais_hybrid"),
    Category(
        name: "Health",
        image:
        "https://img.freepik.com/premium-photo/heart-hands-doctor-with-red-heart-screen_1122354-8484.jpg?ga=GA1.1.635320984.1721479703&semt=ais_hybrid"),
    Category(
        name: "Business",
        image:
        "https://img.freepik.com/premium-photo/business-team-with-laptop-tablet-pc-computer-papers-having-discussion-modern-office_533890-4889.jpg?ga=GA1.1.635320984.1721479703&semt=ais_hybrid"),
    Category(
        name: "Technology",
        image:
        "https://img.freepik.com/premium-photo/technology-theme-black-background-with-blue-highlights-futuristic-technological-vibes_163892-4596.jpg?ga=GA1.1.635320984.1721479703&semt=ais_hybrid"),
    Category(
        name: "General",
        image:
        "https://img.freepik.com/premium-photo/group-soldiers-are-walking-line_130412-107551.jpg?ga=GA1.1.635320984.1721479703&semt=ais_hybrid"),
      Category(
        name: "science",
        image:
        "https://img.freepik.com/free-vector/colorful-science-objects-icons-vector-set_1308-131667.jpg?ga=GA1.1.635320984.1721479703&semt=ais_hybrid"),
        ];
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(itemCount: CategoryiItem.length,scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
        return CategoryItem(category: CategoryiItem[index],);
          }),
    );
  }
}
