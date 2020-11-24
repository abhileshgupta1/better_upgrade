import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:MapPreoject/Model/ChatMessage.dart';
import 'package:MapPreoject/Model/Send_message_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ChatBubble.dart';
import 'Chat_appBar_Page.dart';

enum MessageType {
  Sender,
  Receiver,
}

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> chatMessage = [
    ChatMessage(
        circleAvatar: Image(image: AssetImage("lib/Images/image7.jpg")),
        message: "Hi John",
        type: MessageType.Receiver),
    ChatMessage(
        circleAvatar: Image(image: AssetImage("lib/Images/image7.jpg")),
        message: "Hope you are doin good",
        type: MessageType.Receiver),
    ChatMessage(
        circleAvatar: Image(image: AssetImage("lib/Images/image7.jpg")),
        message: "Hello Jane, I'm good what about you",
        type: MessageType.Sender),
    ChatMessage(
        circleAvatar: Image(image: AssetImage("lib/Images/image7.jpg")),
        message: "I'm fine, Working from home",
        type: MessageType.Receiver),
    ChatMessage(
        circleAvatar: Image(image: AssetImage("lib/Images/image7.jpg")),
        message: "Oh! Nice. Same here man",
        type: MessageType.Sender),
  ];

  List<SendMenuItems> menuItems = [
    SendMenuItems(icons: Icons.image, color: Colors.amber),
    SendMenuItems(icons: Icons.insert_drive_file, color: Colors.blue),
    SendMenuItems(icons: Icons.music_note, color: Colors.orange),
    SendMenuItems(icons: Icons.location_on, color: Colors.green),
    SendMenuItems(icons: Icons.person, color: Colors.purple),
  ];

  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            color: Color(0xff737373),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              child: Row(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 4,
                      width: 50,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: menuItems[index].color.shade50,
                            ),
                            height: 50,
                            width: 50,
                            child: Icon(
                              menuItems[index].icons,
                              size: 20,
                              color: menuItems[index].color.shade400,
                            ),
                          ),
                          // title: Text(menuItems[index].text),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  //     decoration: new BoxDecoration(
  //       image:DecorationImage(
  //     image:
  //   AssetImage(
  //     "lib/Images/1_Background.png",
  //   ),
  //   ) ,
  // boxShadow: [new BoxShadow(
  //   color: Colors.transparent,
  //   blurRadius: 5.0,
  // ),],

  //     borderRadius: new BorderRadius.only(
  //       topLeft: const Radius.circular(40.0),
  //       topRight: const Radius.circular(40.0),
  //     )
  //   ),
  BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
      // borderRadius: BorderRadius.circular(cornerRadius),
      // border: Border.all(color: borderColor, width: borderWidth)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ChatDetailPageAppBar(),
        body: Container(
          decoration: getBoxDecorationWithBorder(
            AssetImage(
              "lib/Images/1_Background.png",
            ),
          ),
          child: Stack(children: <Widget>[
            ListView.builder(
              itemCount: chatMessage.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatBubble(
                  chatMessage: chatMessage[index],
                  image: chatMessage[index],
                );
              },
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child:
                
                
                 Container(
               decoration: BoxDecoration(

                      
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.red,
                          blurRadius: 20.0,
                        )
                      ],
                      // image:DecorationImage(
                      //   image:
                      // AssetImage(
                      //   "lib/Images/1_Background.png",
                      // ),
                      // ) ,

                      ),

                  padding: EdgeInsets.only(left: 16, bottom: 5, top: 12,right: 16),
                  height: 140,
                  width: double.infinity,
                   child:Stack(
                     children:[
                  
            
                  //    decoration: new BoxDecoration(
                  // color: const Color(0xFF66BB6A),
                  // boxShadow: [new BoxShadow(
                  //   color: Colors.black,
                  //   blurRadius: 20.0,
                  // ),]

                  // decoration: BoxDecoration(

                      
                  //     color: const Color(0xFF66BB6A),
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(20.0),
                  //       topRight: Radius.circular(20.0),
                  //     ),
                  //     boxShadow: [
                  //       new BoxShadow(
                  //         color: Colors.black,
                  //         blurRadius: 20.0,
                  //       )
                  //     ],
                  //     // image:DecorationImage(
                  //     //   image:
                  //     // AssetImage(
                  //     //   "lib/Images/1_Background.png",
                  //     // ),
                  //     // ) ,

                  //     ),

                  // padding: EdgeInsets.only(left: 16, bottom: 5, top: 12,right: 16),
                  // height: 140,
                  // width: double.infinity,

 Column(children: [
               
                    TextField(
                      
                      decoration: InputDecoration(
                        hintText: "Please enter the text...",
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        suffixIcon: Padding(padding: EdgeInsets.only(right: 12),
                        child:  CircleAvatar(
                    radius: 8,
                    backgroundColor: CustomColors.themeRedDark,
                    child: IconButton(
                  
                        icon: 
                        //  Icon(Icons.share_sharp),iconSize: 24,
                         ImageIcon(AssetImage("lib/Image_icons/cursor.png"),
                         size: 18,
                         color: Colors.white,
                        
                         ),
                        onPressed: (){},
                    ),
                  ),
                        
                        ),
                           
                             
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(color: Colors.grey.shade100)),
                      ),
                    ),
               
                    // Row(
                    //   children: <Widget>[

                    //     // GestureDetector(
                    //     //   onTap: () {
                    //     //     showModal();
                    //     //   },
                    //     //   child: Container(
                    //     //     height: 40,
                    //     //     width: 40,
                    //     //     decoration: BoxDecoration(
                    //     //       color: Colors.blueGrey,
                    //     //       borderRadius: BorderRadius.circular(30),
                    //     //     ),
                    //     //     // child: Icon(Icons.add,color: Colors.white,size: 21,),
                    //     //   ),
                    //     // ),
                    //     SizedBox(
                    //       width: 16,
                    //     ),
                    //     Expanded(
                    //       child: TextField(
                    //         decoration: InputDecoration(
                    //             hintText: "Type message...",
                    //             hintStyle: TextStyle(color: Colors.grey.shade500),
                    //             border: InputBorder.none),
                    //       ),
                    //     ),
                    //     Align(
                    //       alignment: Alignment.bottomRight,
                    //       child: Container(
                    //         padding: EdgeInsets.only(right: 30, bottom: 0),
                    //         child: FloatingActionButton(
                    //           onPressed: () {},
                    //           child: Icon(
                    //             Icons.send,
                    //             color: Colors.white,
                    //           ),
                    //           backgroundColor: Colors.pink,
                    //           elevation: 0,
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 12)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                            backgroundColor: CustomColors.themeRedDark,
                            child: IconButton(
                                icon: Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                                onPressed: () {})),

                        CircleAvatar(
                            backgroundColor: CustomColors.themeRedDark,
                            child: IconButton(
                                icon: Icon(
                                  Icons.image,
                                  color: Colors.white,
                                ),
                                onPressed: () {})),
                        CircleAvatar(
                            backgroundColor: CustomColors.themeRedDark,
                            child: IconButton(
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                                onPressed: () {})),
                        CircleAvatar(
                            backgroundColor: CustomColors.themeRedDark,
                            child: IconButton(
                                icon: Icon(
                                  Icons.insert_emoticon,
                                  color: Colors.white,
                                ),
                                onPressed: () {})),
                        CircleAvatar(
                            backgroundColor: CustomColors.themeRedDark,
                            child: IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                                onPressed: () {}))

                        // IconButton(icon: ImageIcon(AssetImage("lib/Image_icons/recording_icon.png"),), onPressed: () {})
                      ],
                    )
                  ]),

                 ]))
           ) ]),
        ));
  }
}
