import '../models/user_model.dart';

class message{
  final User senderinfo;
  final String time;
  final  String text;
  final bool isliked;
  late final bool isread;

  message({required this.senderinfo,required this.time,required this.text,required this.isliked,required this.isread});
}

final User Current_user = User(id:0, name: 'Current User',img_url: 'assets/images/olivia.jpg');

final User  Greg= User(id:1, name: 'Greg',img_url: 'assets/images/greg.jpg');
final User  James= User(id:2, name: 'James',img_url: 'assets/images/james.jpg');
final User  John= User(id:3, name: 'John',img_url: 'assets/images/john.jpg');
final User Sam= User(id:4, name: 'Sam',img_url: 'assets/images/sam.jpg');
final User  Sophia= User(id:5, name: 'Sophia',img_url: 'assets/images/sophia.jpg');

List<User> favorites = [Greg,James,John,Sam,Sophia,James,John,Sam,Sophia];



//home screen
List<message> chatsinhome =[
  message(senderinfo:Current_user,time:'5:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:true),
  message(senderinfo:Greg,time:'7:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:false),
  message(senderinfo:James,time:'5:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:true),
  message(senderinfo:John,time:'10:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:false),
  message(senderinfo:Sam,time:'5:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:false),
  message(senderinfo:Sophia,time:'7:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:false),
  message(senderinfo:Current_user,time:'5:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:true),
  message(senderinfo:Greg,time:'7:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:false),
  message(senderinfo:James,time:'5:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:true),
  message(senderinfo:John,time:'10:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:false),
  message(senderinfo:Sam,time:'5:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:true),
  message(senderinfo:Sophia,time:'7:30PM',text:'Hey, how\'s it going? What did you do today?',isliked:false,isread:false),

];

//chat screen???
List<message> examplechat=[
  message(senderinfo:Current_user,time:'5:30PM',text:'Hello',isliked:true,isread:true),
  message(senderinfo:Greg,time:'7:30PM',text:'Hello',isliked:false,isread:true),
  message(senderinfo:Current_user,time:'5:30PM',text:'Hello',isliked:true,isread:true),
  message(senderinfo:Current_user,time:'10:30PM',text:'Hello',isliked:false,isread:true),
  message(senderinfo:Greg,time:'5:30PM',text:'Hello',isliked:false,isread:true),
  message(senderinfo:Current_user,time:'7:30PM',text:'Hello',isliked:false,isread:true),
];
