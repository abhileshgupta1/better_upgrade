
import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:flutter/material.dart';

import 'BottomBar.dart';

class BookingConfim extends StatefulWidget {
  @override
  _BookingConfimState createState() => _BookingConfimState();
}

class _BookingConfimState extends State<BookingConfim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: getBoxDecorationWithBorder(
          AssetImage(
            "lib/Images/1_Background.png",
          ),
        ),

      ),
      Padding(padding: EdgeInsets.symmetric(vertical: 200,horizontal: 50),
      child: bookingDetail(),
      )
      
    ]));
  }

  BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
    );
  }

  Widget bookingDetail() {
    return Column(
        children: [
          Image.asset("lib/Image_icons/booking_confirm_icon.png"),
          SizedBox(height: 12,),

          Text("BOOKING"),
          SizedBox(height: 12,),
Text('''
These good thoughts for kids have 
  been arranged according to their 
subject,so that it is easy for parents 
  to pick the right one,according 
        to the situation.'''),
         SizedBox(height: 20,),
        getButton(context, "Go To HomePage ", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  Home (),));
                
              }, )
        ],

    );
  }
  Widget getButton(
      BuildContext context, String title, Function onClick,) {
    return new Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
        width: 250,
        height: 60,
        // margin: EdgeInsets.all(40.0),
        child: FlatButton(
          onPressed: onClick,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ImageIcon(AssetImage("lib/Image_icons/forward_icon.png",),color: Colors.white,),
           
               
           
              // Icon(
              //   Icons.arrow_forward,
              //   color: Colors.white,
              //   size: 22,
              // )
            ],
          ),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(8.0)),
          color: CustomColors.themeRedDark,
        ));
  }

}
