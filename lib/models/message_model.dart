import '../models/user_model.dart';

class message{
  final User senderinfo;
  final String time;
  final  String text;
  final bool isliked;
  final bool isread;

  message({required this.senderinfo,required this.time,required this.text,required this.isliked,required this.isread});
}

final User current_user = User(id:0, name: 'Current User',img_url: 'assets/images/olivia.jpg');

final User  greg= User(id:1, name: 'greg',img_url: 'assets/images/greg.jpg');
final User  james= User(id:2, name: 'james',img_url: 'assets/images/james.jpg');
final User  john= User(id:3, name: 'john',img_url: 'assets/images/john.jpg');
final User sam= User(id:4, name: 'sam',img_url: 'assets/images/sam.jpg');
final User  sophia= User(id:5, name: 'sophia',img_url: 'assets/images/sophia.jpg');

List<User> favorites = [greg,james,john,sam,sophia];

//home screen
List<message> chatsinhome =[
  message(senderinfo:current_user,time:'5:30PM',text:'My name is Shrisha Shrestha.Whats youre name',isliked:false,isread:true),
  message(senderinfo:greg,time:'7:30PM',text:'My name is Shrisha Shrestha.Whats youre name',isliked:false,isread:false),
  message(senderinfo:james,time:'5:30PM',text:'My name is Shrisha Shrestha.Whats youre name',isliked:false,isread:true),
  message(senderinfo:john,time:'10:30PM',text:'My name is Shrisha Shrestha.Whats youre name',isliked:false,isread:false),
  message(senderinfo:sam,time:'5:30PM',text:'My name is Shrisha Shrestha.Whats youre name',isliked:false,isread:true),
  message(senderinfo:sophia,time:'7:30PM',text:'My name is Shrisha Shrestha.Whats youre name',isliked:false,isread:false),
  message(senderinfo:james,time:'5:30PM',text:'My name is Shrisha Shrestha.Whats youre name',isliked:false,isread:true),
  message(senderinfo:john,time:'10:30PM',text:'My name is Shrisha Shrestha.Whats youre name',isliked:false,isread:false),
  message(senderinfo:sam,time:'5:30PM',text:'My name is Shrisha Shrestha.Whats youre name',isliked:false,isread:true),

];

//chat screen???
List<message> examplechat=[
  message(senderinfo:current_user,time:'5:30PM',text:'Hello',isliked:true,isread:true),
  message(senderinfo:greg,time:'7:30PM',text:'Hello',isliked:false,isread:true),
  message(senderinfo:current_user,time:'5:30PM',text:'Hello',isliked:true,isread:true),
  message(senderinfo:current_user,time:'10:30PM',text:'Hello',isliked:false,isread:true),
  message(senderinfo:greg,time:'5:30PM',text:'Hello',isliked:false,isread:true),
  message(senderinfo:current_user,time:'7:30PM',text:'Hello',isliked:false,isread:true),
];
