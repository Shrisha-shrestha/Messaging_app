import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/message_model.dart';
import '../screen/chat_screen.dart';
class favcontact extends StatelessWidget {
  const favcontact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),//n horizontal paddings o as to not cut off displaying while scrolling
      child: Column(
        children:<Widget> [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,),//so h-padding is placed here
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Text('Favourite contacts',style: TextStyle(
                  color:Colors.grey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),),
                IconButton(onPressed: (){}, iconSize:30.0,
                    color: Colors.grey,
                    icon:Icon(Icons.more_horiz))
              ],
            ),
          ),
          Container(
            height: 100.0,
            child:ListView.builder(
              padding: EdgeInsets.only(left:10.0,),
              scrollDirection: Axis.horizontal,
              itemCount:favorites.length ,
                itemBuilder:(context,index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_) => chatscrn(user: favorites[index],)
                    ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children:<Widget> [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage(favorites[index].img_url),
                        ),
                        SizedBox(height: 6.0,),
                        Text(favorites[index].name,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                      ),),
                      ],
                    ),
                  ),
                ) ;
                } ),
          )
        ],
      ),
    );
  }
}
