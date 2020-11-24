import 'package:MapPreoject/Model/ChatMessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Chat_detail_Page.dart';

// ignore: must_be_immutable
class ChatBubble extends StatefulWidget {
  ChatMessage chatMessage;
  ChatMessage image;
  ChatBubble({@required this.chatMessage,@required this.image});
  @override
  _ChatBubbleState createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return 
    Stack(
      children:[
    
    Container(
//  decoration: new BoxDecoration(
//                 image:DecorationImage(
//               image:
//             AssetImage(
//               "lib/Images/1_Background.png",
//             ),
//             ) ,
         
//             ),
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
      child: Align(
        alignment: (widget.chatMessage.type == MessageType.Receiver
            ? Alignment.topLeft
            : Alignment.topRight),
        child: 
 Container(
            decoration: BoxDecoration(
            //         image:DecorationImage(
            //   image:
            // AssetImage(
            //   "lib/Images/1_Background.png",
            // ),
            // ) ,
              borderRadius: BorderRadius.circular(30),
              color: (widget.chatMessage.type == MessageType.Receiver
                  ? Colors.white
                  : Colors.grey.shade200),
            ),
            padding: EdgeInsets.all(16),
            child: 
                
              Text(widget.chatMessage.message),
             
              
          ),
         
        
      ),
    )]);
  }
}
