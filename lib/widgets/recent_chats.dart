import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messaging_app/models/message_model.dart';
import 'package:messaging_app/screen/chat_screen.dart';
class recentchats extends StatelessWidget {
  const recentchats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            )
        ),
        child: ClipRRect(//clips a widget
        borderRadius: BorderRadius.only(
    topLeft: Radius.circular(30.0),
    topRight: Radius.circular(30.0),
        ),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount:chatsinhome.length,
            itemBuilder:(BuildContext context,int index) {
              final message chat= chatsinhome[index];
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (_) => chatscrn(user: chat.senderinfo,)
                  ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5.0,bottom: 5.0,right: 5.0),
                  padding:EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0) ,
                  decoration:BoxDecoration(
                    color: chat.isread?Colors.white:Color(0xFFFFEFEE),
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
                              Container(
                                width: MediaQuery.of(context).size.width *0.50,//The size of the media in logical pixels (e.g, the size of the screen)
                                child: Text(chat.text,
                                    style:TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text(chat.time
                          ,style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          SizedBox(height: 5.0,),
                         chat.isread?Text('')
                  //or use SizedBox.shrink();//become as small as its parent allow
                         :Container(
                           width: 40.0,
                           height: 20.0,
                           decoration: BoxDecoration(
                             color: Theme.of(context).colorScheme.primary,
                             borderRadius: BorderRadius.circular(30.0),
                           ),
                           alignment: Alignment.center,
                           child: Text('NEW',
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 15.0,
                               fontWeight: FontWeight.bold,
                             ),),),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
