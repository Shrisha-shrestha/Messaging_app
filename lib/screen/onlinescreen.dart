import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messaging_app/screen/chat_screen.dart';
import '../models/message_model.dart';
import '../models/user_model.dart';
class onlinescrn extends StatelessWidget {
  List<User> online=[Greg,James,John,Sam,Sophia,Greg,James,John,Sam,Sophia];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('ONLINE',style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),),
      elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Active Contacts',style: TextStyle(
                      color:Colors.white,
                      fontSize: 15.0,
                       letterSpacing: 2.0,
                    ),),
                    Text('Last seen at:',style: TextStyle(
                      color:Colors.white,
                      fontSize: 15.0,
                      letterSpacing: 2.0,
                    ),),
                  ],
                ),
              ),
            ],
          ),
         Row(
           children: <Widget>[
             Padding(
               padding: const EdgeInsets.only(top: 25.0,right: 10.0,left: 10.0),
               child: Container(
                 height:MediaQuery.of(context).size.height * 0.80 ,
                 width:MediaQuery.of(context).size.width * 0.94 ,
                 decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
          )
      ),
          child: ClipRRect(//clips a widget
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),bottomLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),bottomRight: Radius.circular(30.0),
              ),

                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount:chatsinhome.length,
                  itemBuilder:(BuildContext context,int index) {
                    final message chat= chatsinhome[index];
                    return GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(
                          builder: (_) => chatscrn(user: favorites[index],)
                      ),
                      );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 5.0,bottom: 5.0,right: 5.0),
                        padding:EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0) ,
                        decoration:BoxDecoration(
                            color:Color(0xFFFFEFEE),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),
                              bottomRight:Radius.circular(20.0), )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:<Widget> [
                            Row(
                              children:<Widget> [
                                CircleAvatar(
                                  radius: 30.0,
                                  backgroundImage: AssetImage(chat.senderinfo.img_url),
                                ),
                                SizedBox(width: 10.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:<Widget> [
                                    Text(chat.senderinfo.name,
                                      style:TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(chat.time
                                  ,style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),

               ),
             )
             ),],
         ),
        ],
      ),


      // Container(
      //   decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(30.0),
      //         topRight: Radius.circular(30.0),
      //       )
      //   ),
      //   child: ClipRRect(//clips a widget
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(30.0),
      //       topRight: Radius.circular(30.0),
      //     ),
      //     child: ListView.builder(
      //       scrollDirection: Axis.vertical,
      //       itemCount:chatsinhome.length,
      //       itemBuilder:(BuildContext context,int index) {
      //         final message chat= chatsinhome[index];
      //         return GestureDetector(
      //           onTap: (){Navigator.push(context, MaterialPageRoute(
      //               builder: (_) => chatscrn(user: favorites[index],)
      //           ),
      //           );
      //           },
      //           child: Container(
      //             margin: EdgeInsets.only(top: 5.0,bottom: 5.0,right: 5.0),
      //             padding:EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0) ,
      //             decoration:BoxDecoration(
      //                 color:Color(0xFFFFEFEE),
      //                 borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),
      //                   bottomRight:Radius.circular(20.0), )
      //             ),
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children:<Widget> [
      //                 Row(
      //                   children:<Widget> [
      //                     CircleAvatar(
      //                       radius: 30.0,
      //                       backgroundImage: AssetImage(chat.senderinfo.img_url),
      //                     ),
      //                     SizedBox(width: 10.0,),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children:<Widget> [
      //                         Text(chat.senderinfo.name,
      //                           style:TextStyle(
      //                             color: Colors.grey,
      //                             fontSize: 15.0,
      //                             fontWeight: FontWeight.bold,
      //                           ),),
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //                 Column(
      //                   children: <Widget>[
      //                     Text(chat.time
      //                       ,style: TextStyle(
      //                         color: Colors.grey,
      //                         fontSize: 15.0,
      //                         fontWeight: FontWeight.bold,
      //                       ),),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         );
      //       },
      //     ),
      //   ),
      // ),


    );
  }
}
