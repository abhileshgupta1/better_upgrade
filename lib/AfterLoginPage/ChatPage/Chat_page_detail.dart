
import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:flutter/material.dart';

import 'Chat_detail_Page.dart';



// ignore: must_be_immutable
class ChatUsersList extends StatefulWidget{
  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessageRead;
  ChatUsersList({@required this.text,@required this.secondaryText,@required this.image,@required this.time,@required this.isMessageRead});
  @override
  _ChatUsersListState createState() => _ChatUsersListState();
}

class _ChatUsersListState extends State<ChatUsersList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ChatDetailPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: 
          
        Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.image),
                    maxRadius: 30,
                  ),
                  SizedBox(width: 16,),

                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(widget.text),
                          SizedBox(height: 6,),
                          Text(widget.secondaryText,style: TextStyle(fontSize: 12,color: Colors.black),),
                         Container(
                        margin:
                            EdgeInsets.symmetric(horizontal:0 , vertical: 18),
                        height: 2.0,
                        width: double.infinity,
                        color: CustomColors.themeRedDark,
                      ),
 

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                child:  Text(widget.time,style: TextStyle(fontSize: 12,color: widget.isMessageRead?Colors.black:Colors.red),),
            
              )
           
               
            
          ],
        ),
        
      ),
    );
  }
}
