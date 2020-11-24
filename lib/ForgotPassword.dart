import 'package:MapPreoject/ChangePassword.dart';
import 'package:flutter/material.dart';

import 'Common/CustomColor.dart';


class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar( 
      //   // backgroundColor: Colors.transparent,
      // ),
      body: 
      
      
      Stack(
        children: [
       
            
                    Container(
                     
              decoration: getBoxDecorationWithBorder(
            AssetImage(
              "lib/Images/Background2.jpeg",
            ),
          )),
       
          SingleChildScrollView(child: 
          
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
                SizedBox(height: 60,),
              Container(
                height: 130,
                width: 130,
                  decoration: getBoxDecorationWithBorder(
                    AssetImage("lib/Images/forgot_icons.png",)
                  )),
                   SizedBox(
                height: 15,
              ),
                  Text("Forgot Password",style:TextStyle(color: CustomColors.themeRedDark,fontSize: 18)),
              SizedBox(
                height: 30,
              ),
               Text("Enter your Email ID to verify\n Your account",style:TextStyle(fontSize: 18),textAlign: TextAlign.center,),
             
             
              SizedBox(
                height: 40,
              ),
              textFormField(context, TextInputType.text, "Email Address",
                  _emailController, ImageIcon(AssetImage("lib/Image_icons/message_email_icon.png",),)),
                  
             
              SizedBox(
                height: 30,
              ),
              getButton(context, "CONTINUE ", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
                
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

  // BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
  //   return BoxDecoration(
  //     image: DecorationImage(image: image, fit: BoxFit.cover),
  //     // borderRadius: BorderRadius.circular(cornerRadius),
  //     // border: Border.all(color: borderColor, width: borderWidth)
  //   );
  // }

  Widget textFormField(BuildContext context, TextInputType textInputType,
      String text, TextEditingController textEditingController, ImageIcon icon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 40),
      child: Column(children: <Widget>[
        TextFormField(
          decoration: InputDecoration(suffixIcon: icon, labelText: text),
          keyboardType: TextInputType.emailAddress,
          
          // autovalidate: true,
        )
      ]),
    );
  }
}

class Constants {
  static double kButtonsHeight = 60.0;
}
