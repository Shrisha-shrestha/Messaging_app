import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/message_model.dart';
import '../models/user_model.dart';
import '../screen/onlinescreen.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {

  int selectedindex = 0;
  final List<User> online = [Greg,James,John,Sam];
  final List<String> categories = ['Online','Groups','VideoCalls','Stories'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color:  Theme.of(context).colorScheme.primary,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
          itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedindex=index;
              });
                if(index==0){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (_) => onlinescrn(),
                  ),);
                };
            },
            child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 30.0),

              child: Text( categories[index],
                style:  GoogleFonts.lato(
                  color: index == selectedindex?Colors.amberAccent:Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          );
          },
      ),
    );
  }
}
