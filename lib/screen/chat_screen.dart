
import 'package:flutter/material.dart';
import 'package:messaging_app/models/message_model.dart';
import 'package:messaging_app/models/user_model.dart';

class chatscrn extends StatefulWidget {

final User user;
chatscrn({required this.user});

  @override
  State<chatscrn> createState() => _chatscrnState();
}

class _chatscrnState extends State<chatscrn> {
  MessageBubble(message msg,bool isMe,bool isliked){
    final Container Mge=Container(
      width: MediaQuery.of(context).size.width * 0.75,
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
      margin: isMe ? EdgeInsets.only(
          top:8.0,bottom: 8.0,left: 80.0) : EdgeInsets.only(
        top:8.0,bottom: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(msg.time,
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),),
          SizedBox(height: 8.0,),
          Text(msg.text,
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),),
        ],
      ),
      decoration: BoxDecoration(
        color: isMe?Theme.of(context).colorScheme.secondary: Color(0xFFFFEFEE),
        borderRadius: isMe ? BorderRadius.only(
            topLeft:Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0)
        ):
        BorderRadius.only(
            topRight:Radius.circular(15.0),
            bottomRight: Radius.circular(15.0)
        ) ,
      ),
    );
    if(isMe){return Mge;}
    return Row(
      children: <Widget>[
        Mge,
        IconButton(
          iconSize:30.0,
          color: isliked? Colors.red :Colors.black,
          icon: Icon(isliked?Icons.favorite:Icons.favorite_border_outlined),
          onPressed:(){},
        ),
      ],
    );
  }

  Messagecomposer()
  {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
    children: <Widget>[
    IconButton(
    iconSize:30.0,
    color:Theme.of(context).colorScheme.primary,
  icon: Icon(Icons.photo),
  onPressed:(){},
    ),
  Expanded(child: TextField(
    textCapitalization: TextCapitalization.sentences,
    onChanged: (value){
      setState(() {
       // msg=value;
      });
    },
    decoration: InputDecoration.collapsed(//to remove red line
      hintText: 'Send a message',
    ),
  )),
  IconButton(
  iconSize:30.0,
  color:Theme.of(context).colorScheme.primary,
  icon: Icon(Icons.send),
  onPressed:(){},
    ),
    ],
    )
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: Text(widget.user.name,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),),
        centerTitle: true,
      actions: <Widget>[IconButton(
      iconSize:30.0,
      color: Colors.white,
      icon: Icon(Icons.more_horiz),
      onPressed:(){},
    ),],
      elevation: 0.0,
      ),
    body: GestureDetector(
      onTap: ()=> FocusScope.of(context).unfocus(),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),),
                ),
            child:ClipRRect(//clips a widget
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child:ListView.builder(
                reverse: true,
                padding: EdgeInsets.only(top: 15.0),
                scrollDirection: Axis.vertical,
                    itemCount: examplechat .length,
                    itemBuilder: (context,index){
                  final message msg=examplechat[index];
                  final bool isMe=msg.senderinfo.id == Current_user.id;
                  return MessageBubble(msg,isMe,msg.isliked);
                }),
            ),
          ),
          ),
          Messagecomposer(),
        ],
      ),
    ),
    );
  }
}
