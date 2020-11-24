import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:flutter/material.dart';

import 'ACRepairPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double circleRadius = 120;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
// appBar: AppBar(

      // flexibleSpace: topView(context),

      //     iconTheme: IconThemeData(color: Colors.transparent),
      //     elevation: 0,
      //     backgroundColor: Colors.transparent,
      //     toolbarHeight: 200,
      //     flexibleSpace: topView(context)),
      // extendBody: true,

      // appBar: AppBar(
      //   centerTitle:true ,
      //   title: Text('Profile'),
      // ),
      body:

          //  Container(
          //       decoration: getBoxDecorationWithBorder(
          //     AssetImage(
          //       "lib/Images/1_Background.png",
          //     ),
          //   ),
          //  ),
          Container(
              decoration: getBoxDecorationWithBorder(
                AssetImage(
                  "lib/Images/1_Background.png",
                ),
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    height: 800,
                    child: Stack(children: [
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 0),
                            child: topView(context),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 160),
                            child: stackView(),
                          ),
                        ],
                      ),
                    ]),
                  ))),
    );
  }

  Widget stackView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Stack(alignment: Alignment.topCenter, children: <Widget>[
        Padding(
            padding: EdgeInsets.only(
              top: circleRadius / 2.2,
            ),
            child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                      offset: Offset(0.0, 5.0),
                    ),
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: circleRadius / 1.5,
                      ),
                      Text(
                        'John Die',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30.0),
                      ),
                      Text(
                        '+91 95615545',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.lightBlueAccent),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        height: 1.0,
                        color: Colors.black,
                      ),
                      profileDetailContainer(
                          "Email", "Abhilesh@gmail.com", "Age", "38"),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 20),
                      //   child: Divider(
                      //     color: static Color themeRedDark = Color.fromARGB(255, 75,30, 4);,
                      //     height: 8,
                      //   ),
                      // ),
                      Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                          height: 1.0,
                          color: CustomColors.themeRedDark),
                      profileDetailContainer("Gender", "Male", "About Talent",
                          "Electricity Engineers"),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        height: 1.0,
                        color: CustomColors.themeRedDark,
                      ),
                      profileDetailContainer("Price For The Talent", "100",
                          "About Talent", "Electricity Engineers"),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        height: 1.0,
                        color: CustomColors.themeRedDark,
                      ),
                      profileDetailContainer(
                        "Post Uploaded By Laborer",
                        "Engineers",
                        "About Talent",
                        "Electricity Engineer",
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        height: 1.0,
                        color: CustomColors.themeRedDark,
                      ),
                      profileDetailContainer("Timing At Home Visiting",
                          "11.00 AM", "Timing At In-Store", "10:00 AM"),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        height: 1.0,
                        color: CustomColors.themeRedDark,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      getButton()
                    ]))),

        ///Image Avatar
        Container(
          width: circleRadius,
          height: circleRadius,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            shape: BoxShape.rectangle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8.0,
                offset: Offset(0.0, 5.0),
              ),
            ],
          ),
          child: Padding(
              padding: EdgeInsets.all(0.0),
              child: Container(
                child: Image(
                    image: NetworkImage(
                        "https://media.gettyimages.com/photos/joyous-woman-infront-of-wall-picture-id981594838?s=2048x2048"),
                    fit: BoxFit.cover),
              )

              /// replace your image with the Icon
              ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 65, horizontal: 15),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromRGBO(75, 30, 0, 2),
                radius: 20,
                child: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              CircleAvatar(
                  backgroundColor: Color.fromRGBO(75, 30, 0, 2),
                  radius: 20,
                  child: Icon(
                    Icons.chat,
                    color: Colors.white,
                  )),
              //  ImageIcon(
              //    AssetImage("lib/Image_icons/chat_icon.png"),
              //  ),
              Spacer(),
              ImageIcon(
                AssetImage(
                  "lib/Image_icons/heart_icon.png",
                ),
                color: Colors.black,
                size: 30,
              ),
            ],
          ),
        ),
        // Positioned(
        //   top: 120,
        //   chi
        // )
      ]),
    );
  }

  Widget getButton() {
    return Container(
        height: 40,
        width: 250,
        decoration: BoxDecoration(
            color: CustomColors.themeRedDark,
            borderRadius: BorderRadius.circular(8)),
        child: FlatButton(
          child: Text(
            "BOOK",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ACRepairServices(),
                ));
          },
        ));
  }



  Widget profileDetailContainer(
      String text, String text1, String title, String title1) {
    return Container(
      color: Colors.white,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    text1,
                    style: TextStyle(
                        fontSize: 14.0, color: Colors.black54, fontFamily: ''),
                  ),
                ],
              ),
            ),
            Text(
              "|",
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    title1,
                    style: TextStyle(
                        fontSize: 14.0, color: Colors.black54, fontFamily: ''),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topView(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://media.gettyimages.com/photos/joyous-woman-infront-of-wall-picture-id981594838?s=2048x2048"),
              fit: BoxFit.cover),
          color: Colors.white),
      child: Column(
        children: <Widget>[
          SizedBox(height: 2),
          AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        ],
      ),
    );
  }

  BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
    );
  }
}
