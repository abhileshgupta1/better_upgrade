

import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        centerTitle:true ,
        title: Text('Booking'),
      ),
         body: Stack(
        children: [
          Container(
              decoration: getBoxDecorationWithBorder(
            AssetImage(
              "lib/Images/1_Background.png",
            ),
          )),
          Center(
            child: Text("Booking")
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