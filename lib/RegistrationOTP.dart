

import 'package:MapPreoject/AfterLoginPage/BottomBar.dart';
import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';



import 'Common/CustomColor.dart';


class RegistrationOTP extends StatefulWidget {
  @override
  _RegistrationOTPState createState() => _RegistrationOTPState();
}

class _RegistrationOTPState extends State<RegistrationOTP> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: getBoxDecorationWithBorder(
            AssetImage(
              "lib/Images/Background2.jpeg",
            ),
          )),
          SingleChildScrollView(
            child: 
          
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 150,
                  width: 150,
                  decoration: getBoxDecorationWithBorder(
                    AssetImage("lib/Images/logo_2.png"),
                  )),
                   SizedBox(
                height: 10,
              ),
                  Text("Registration",style:TextStyle(color: CustomColors.themeRedDark,fontSize: 18)),
              SizedBox(
                height: 20,
              ),
               Text("Enter the 6 digit code send to\n your mobile number",textAlign: TextAlign.center,style:TextStyle(fontSize: 18)),
              SizedBox(
                height: 40,
              ),
              pinFormField(context, ),
             
              SizedBox(
                height: 30,
              ),
              getButton(context, "CONTINUE ", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
                
              }, )
            ],
          ),)
        ],
          
      ),
    );
  }

  Widget getButton(
      BuildContext context, String title, Function onClick,) {
    return new Container(
        width: MediaQuery.of(context).size.width,
        height: Constants.kButtonsHeight,
        margin: EdgeInsets.all(40.0),
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
             Padding(
               padding: EdgeInsets.only(left: 80),
               child: ImageIcon(AssetImage("lib/Image_icons/forward_icon.png",),color: Colors.white,),
             )
               
           
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

  BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
      // borderRadius: BorderRadius.circular(cornerRadius),
      // border: Border.all(color: borderColor, width: borderWidth)
    );
  }

  Widget pinFormField(BuildContext context,
      ) {
     return 
    
    Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PinEntryTextField(
            showFieldAsBox: false,
            isTextObscure: true,
            fields: 6,
            onSubmit: (String pin){


            }, // end onSubmit
          ), // end PinEntryTextField()
        ), // end Padding()
      );
  }
}

class Constants {
  static double kButtonsHeight = 60.0;
}
