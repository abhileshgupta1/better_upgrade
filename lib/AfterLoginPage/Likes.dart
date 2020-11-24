
import 'package:flutter/material.dart';

class Likes extends StatefulWidget {
  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text("Likes"),
        ),
      body:  Stack(
        children: [
          Container(
              decoration: getBoxDecorationWithBorder(
            AssetImage(
              "lib/Images/1_Background.png",
            ),
          )),
          Center(
            child: Text("Likes"),
          )
        ]
    ));
  }
   BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
      // borderRadius: BorderRadius.circular(cornerRadius),
      // border: Border.all(color: borderColor, width: borderWidth)
    );
  }
}