import 'package:flutter/material.dart';
class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedindex = 0;
  final List <String> categories= ['Messages','Online','Groups','Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color:  Theme.of(context).colorScheme.primary,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
          itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){setState(() {
              selectedindex=index;
            });
              },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
              child: Text(categories[index],style: TextStyle(
                color: index == selectedindex?Colors.amber:Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),),
            ),
          );
          },
      ),
    );
  }
}
