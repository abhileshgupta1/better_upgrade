
import 'package:MapPreoject/ForgotPassword.dart';
import 'package:flutter/material.dart';

import 'Common/CustomColor.dart';
import 'SignUPPage.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        
        children: [
          Container(
              decoration: getBoxDecorationWithBorder(
            AssetImage(
              "lib/Images/1_Background.png",
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
                height: 20,
              ),
                  Text("Sign In",style: TextStyle(color: CustomColors.themeRedDark,fontSize: 24),),
              SizedBox(
                height: 30,
              ),
              textFormField(context, TextInputType.emailAddress, "Email",
                  _emailController, ImageIcon(AssetImage("lib/Image_icons/message_email_icon.png",),)),
              textFormField(context, TextInputType.visiblePassword, "Password",
                  _passwordController, ImageIcon(AssetImage("lib/Image_icons/padlock.png"))
                  // Icon(Icons.lock)
                  ),
                   SizedBox(
                height: 20,
              ),
                  forgetButton((){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword(),));
                    
                  },"FORGOT PASSWORD ?"),
              SizedBox(
                height: 20,
              ),
              getButton(context, "SIGN IN ", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                
              }, )
            ],
          ),
          )],
      ),
    );
  }
  Widget forgetButton(Function onPressed, String title){
    return Container(
      // margin: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        // height: Constants.kButtonsHeight,
  
        child: FlatButton(
          onPressed: onPressed,
          child: 
            
              
                    
              
                Text(
                  title,
                  style: TextStyle(
                    color: CustomColors.themeRedDark,
                    fontSize: 20,
                  ),
                ),
              
          )
        
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
