
import 'package:MapPreoject/Model/ChatModel.dart';
import 'package:flutter/material.dart';

import 'ChatPage/Chat_page_detail.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        text: "Jane Russel",
        secondaryText: "Awesome Setup",
        image: "lib/Images/image1.jpg",
        time: "11:39AM"),
    ChatUsers(
        text: "Glady's Murphy",
        secondaryText: "That's Great",
        image: "lib/Images/image2.jpg",
        time: "12:39PM"),
    ChatUsers(
        text: "Jorge Henry",
        secondaryText: "Hey where are you?",
        image: "lib/Images/image3.jpg",
        time: "12:50PM"),
    ChatUsers(
        text: "Philip Fox",
        secondaryText: "Busy! Call me ",
        image: "lib/Images/image4.jpg",
        time: "12:55PM"),
    ChatUsers(
        text: "Debra Hawkins",
        secondaryText: "Thankyou, It's awesome",
        image: "lib/Images/image5.jpg",
        time: "2:55PM"),
    ChatUsers(
        text: "Jacob Pena",
        secondaryText: "will update you in evening",
        image: "lib/Images/image6.jpg",
        time: "2:59PM "),
    ChatUsers(
        text: "Andrey Jones",
        secondaryText: "Can you please share the file?",
        image: "lib/Images/image7.jpg",
        time: "4:52PM"),
    ChatUsers(
        text: "John Wick",
        secondaryText: "How are you?",
        image: "lib/Images/image7.jpg",
        time: "4:55PM"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Message"),
        // ),
        body: Stack(children: [
      Container(
          decoration: getBoxDecorationWithBorder(
            AssetImage(
              "lib/Images/1_Background.png",
            ),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: chatIndox(),
          )),
       ]));
  }

  BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
      // borderRadius: BorderRadius.circular(cornerRadius),
      // border: Border.all(color: borderColor, width: borderWidth)
    );
  }

  Widget chatIndox() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 12, right: 16, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 IconButton(icon: ImageIcon(AssetImage("lib/Image_icons/back_icon.png")), onPressed: (){}) ,
                 Padding(padding: EdgeInsets.only(left: 90,),
                 child:Text(
                  "My Chat",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                 )

                // Container(
                //   padding:
                //       EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                //   height: 30,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(30),
                //     color: Colors.pink[50],
                //   ),
                //   child: Row(
                //     children: <Widget>[

                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search...",
              hintStyle: TextStyle(color: Colors.grey.shade400),
              suffixIcon: Icon(
                Icons.search,
                color: Colors.grey.shade400,
                size: 20,
              ),
              filled: true,
              fillColor: Colors.grey.shade100,
              contentPadding: EdgeInsets.all(8),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.grey.shade100)

                  ),
            ),
          ),
        ),
        ListView.builder(
          itemCount: chatUsers.length,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 16),
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return ChatUsersList(
              text: chatUsers[index].text,
              secondaryText: chatUsers[index].secondaryText,
              image: chatUsers[index].image,
              time: chatUsers[index].time,
              isMessageRead: (index == 0 || index == 3) ? true : false,
            );
          },
        ),
      ],
    );
  }
}

