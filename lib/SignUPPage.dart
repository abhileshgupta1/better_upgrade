import 'package:MapPreoject/RegistrationOTP.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/services.dart';
import 'Common/CustomColor.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

// final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  List<String> _list = <String>['', 'Male', 'Female', 'TransGender', 'Other'];
  String _gender = '';
 

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
              "lib/Images/Background2.jpeg",
            ),
          )),

          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                // height: MediaQuery.of(context).size.height,
                width:12 ,
                // height: MediaQuery.of(context).size.height,
              ),
              new Container(
                  width: 130,
                  height: 130,
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 5.0, color: Colors.white)),
                  child: CircleAvatar(
                    radius: 48,
                    backgroundImage:AssetImage("lib/Images/ProfileImage.jpg"),
                    //  _imageFile == null
                    //     ? DataManager.shared.profileImage()
                    //     : FileImage(File(_imageFile.path)),
                    // backgroundColor: Colors.transparent,
                child: InkWell(
                  // child:  _imageFile == null ? DataManager.shared.profileImage() : Image.file(File(_imageFile.path)),
                  onTap: () {
                    showModalBottomSheet(
                      
                        context: context,
                        builder: ((builder) => bottomsheet(context)));
                  },
                ),
              ),
                  ) ,
                  SizedBox(height: 4,),
              Text("SIGN UP",style: TextStyle(fontSize: 20,color: CustomColors.themeRedDark),),
                  
              SizedBox(
                height: 5,
              ),
              textFormField(context, TextInputType.name, "First Name",
                  _emailController, ImageIcon(AssetImage("lib/Image_icons/profile_icon.png",),)),
              textFormField(context, TextInputType.name, "Last Name",
                  _passwordController, ImageIcon(AssetImage("lib/Image_icons/profile_icon.png",),)),
                   textFormField(context, TextInputType.emailAddress, "Email",
                  _emailController,ImageIcon(AssetImage("lib/Image_icons/message_email_icon.png",),) ),
                  dropDownButton(ImageIcon(AssetImage("lib/Image_icons/gender.png",),color:Color.fromRGBO(134, 102, 56, 1) ,),context , "Gender", ),
              // textFormField(context, "Gender",
              //     _passwordController, Icon(Icons.arrow_drop_down,size: 50,color: Colors.brown,)),
              textFormField(context, TextInputType.text, "City",
                  _emailController,  ImageIcon(AssetImage("lib/Image_icons/skyline.png",),color:Color.fromRGBO(134, 102, 56, 1),)
           
                  
                  ),
                  moreFieldButton((){
                    
                  }),
             
                 
             
              
              getButton(context, "SIGN UP ", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>RegistrationOTP(),));
                
              }, )
            ],
          ),
          )
        ],
      ),
    );
  }
  Widget dropDownButton(ImageIcon icon ,BuildContext context,String text , ){
    return  new Container(
      height: 60,
      margin: EdgeInsets.symmetric( horizontal: 40,),
      child:FormField(
                    builder: (FormFieldState state) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: text,
                        ),
                        isEmpty: _gender == '',
                        child: new DropdownButtonHideUnderline(
                          child: new DropdownButton(
                            elevation: 2,
                            dropdownColor: Colors.green,
                            icon: icon, iconSize: 40,
                             
                            value: _gender,
                            isDense: true,
                            onChanged: (String newValue) {
                              setState(() {
                                // newContact.favoriteColor = newValue;
                                _gender = newValue;
                                state.didChange(newValue);
                              });
                            },
                            items: _list.map((String value) {
                              return new DropdownMenuItem(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      );
                    },
                  ));
  }
  
  void takephoto(ImageSource source) async {
    // final pickedFile = await _imagePicker.getImage(
    //   source: source,
    // );
    // setState(() {
    //   // _imageFile = pickedFile;
    // });
  }

  Widget bottomsheet(BuildContext context) {
    return Container(
   
         
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        // decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/Images/1_Background.png"))),
        child: Column(
          
          children: <Widget>[
            Text(
              "Choose Profile Photo",
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.camera),
                  onPressed: () {
                    takephoto(ImageSource.camera);
                  },
                  label: Text("Camera"),
                ),
                FlatButton.icon(
                  icon: Icon(Icons.image),
                  onPressed: () {
                    takephoto(ImageSource.gallery);
                  },
                  label: Text("Galery"),
                )
              ],
            )
          ],
        ));
  }
  Widget moreFieldButton(Function onPressed ){
    return Container(
      margin: EdgeInsets.only(right:40),
      child: FlatButton(child: 
       Align(alignment: Alignment.bottomRight,child: Text("More Fields",style: TextStyle(fontSize: 20,color: CustomColors.themeRedDark),),),
     
      onPressed: onPressed
      
      ,),
    );

    
    
  }

  Widget getButton(
      BuildContext context, String title, Function onClick,) {
    return new Container(
        width: MediaQuery.of(context).size.width,
        height: Constants.kButtonsHeight,
        margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
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
          decoration: InputDecoration(
            fillColor: Colors.black,
            
            
            suffixIcon: icon, labelText: text,),
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
