import 'package:MapPreoject/AfterLoginPage/PickUplocation.dart';
import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:flutter/material.dart';

class LaborersList extends StatefulWidget {
  @override
  _LaborersListState createState() => _LaborersListState();
}

class _LaborersListState extends State<LaborersList> {
  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.transparent),
          elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          flexibleSpace: topView(context)),
      extendBody: true,

      // appBar: AppBar(
      //   centerTitle:true ,
      //   title: Text('Profile'),
      // ),
      body: Container(
          decoration: getBoxDecorationWithBorder(
            AssetImage(
              "lib/Images/1_Background.png",
            ),
          ),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 1000,
                child: Stack(children: [
                  Stack(
                    children: [
                      searchBar(),
                      // ListView.builder(
                      //   itemCount: 50,
                      //   itemBuilder: (context, index) {
                      //     return listofServicePersons();
                      //   },
                      // )
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 70),
                          child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return Stack(
                                  children: [
                                    listofServicePersons(),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 220, horizontal: 90),
                                      child: getButton(),
                                    )
                                  ],
                                );
                              }))

                      // Container(
                      //   margin: EdgeInsets.only(top: 160),
                      //   child: stackView(),
                      // ),
                    ],
                  ),
                ]),
              ))),
    );
  }

  Widget getButton() {
    return Container(
        height: 40,
        width: 180,
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
                  builder: (context) => PickupLocationPage(),
                ));
          },
        ));
  }

  Widget listofServicePersons() {
    return
        // GestureDetector(
        //   onTap: () {
        //   },

        Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      height: 240,
      width: double.infinity,
      child: //   child:
          Column(children: [
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(left: 12, top: 12),
                  child: circleImage(
                      "https://media.gettyimages.com/photos/joyous-woman-infront-of-wall-picture-id981594838?s=2048x2048"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 2, top: 20),
                child: personDetailText(),
              ),
              Expanded(flex: 1, child: iconImageStatus())
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          height: 1.0,
          color: CustomColors.themeRedDark,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: [
              profileDetailContainer(
                  ImageIcon(
                      AssetImage("lib/Image_icons/message_email_icon.png")),
                  "rajes@gmail.com",
                  ImageIcon(
                      AssetImage("lib/Image_icons/message_email_icon.png")),
                  "+ 915 8555454564"),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 2),
                height: 1.0,
                color: CustomColors.themeRedDark,
              ),
            ],
          ),
        )
      ]),
    );
  }

  Widget profileDetailContainer(
      ImageIcon icon, String email, ImageIcon imageIcon, String phoneNumber) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ImageIcon(AssetImage("lib/Image_icons/message_email_icon.png")),
                Text(
                  email,
                  style: TextStyle(
                      fontSize: 14.0, color: Colors.black54, fontFamily: ''),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Text(
                "|",
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ImageIcon(AssetImage("lib/Image_icons/message_email_icon.png")),
                Text(
                  phoneNumber,
                  style: TextStyle(
                      fontSize: 12.0, color: Colors.black54, fontFamily: ''),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget personDetailText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "JOHN Dow",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Eleectik",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        // SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text("distance"), Text("Time")],
        ),
        Row(
          children: [
            IconButton(
              icon: ImageIcon(
                AssetImage("lib/Image_icons/location_min.png"),
                color: Colors.deepOrange,
              ),
              onPressed: () {},
            ),
            Text(
              "12 min",
              style: TextStyle(fontSize: 12),
            ),
            IconButton(
              icon: ImageIcon(
                AssetImage("lib/Image_icons/online_icon.png"),
                color: Colors.deepOrange,
              ),
              onPressed: () {},
            ),
            Text(
              "12 min",
              style: TextStyle(fontSize: 12),
            ),
          ],
        )
      ],
    );
  }

  Widget iconImageStatus() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: ImageIcon(AssetImage("lib/Image_icons/heart_icon.png")),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: ImageIcon(
              AssetImage("lib/Image_icons/phone_icon_with_background.png")),
        )

        // ImageIcon(AssetImage("lib/Image_icons/phone_icon_with_background.png"))
      ],
    );
  }

  Widget circleImage(String _image) {
    return Container(
        child: Stack(children: [
      Container(
        width: 80,
        height: 80,
        child: new CircleAvatar(
          backgroundImage: new NetworkImage(_image),
          radius: 20.0,
        ),
      ),
      Padding(
          padding: EdgeInsets.only(
            top: 70,
          ),
          child: Container(
              height: 20,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.black),
              child: Align(
                alignment: Alignment.center,
                child: Text("2.5 Star",
                    style: TextStyle(color: Colors.white, fontSize: 14)),
              )))
    ]));
  }

  Widget topView(BuildContext context) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/Images/1_Background.png"),
              // "https://media.gettyimages.com/photos/joyous-woman-infront-of-wall-picture-id981594838?s=2048x2048"),
              fit: BoxFit.cover),
          color: Colors.white),
      child: Column(
        children: <Widget>[
          SizedBox(height: 2),
          AppBar(
            title: Text(
              "Laborers List",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            centerTitle: true,
            leading: Icon(Icons.arrow_back),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
        ],
      ),
    );
  }

  Widget searchBar() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            padding: EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: Color(0xFFE0E0E0),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: TextField(
              cursorColor: Colors.white,
              style: TextStyle(fontSize: 16.0, color: Colors.black),
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 16,
                  ),
                  border: InputBorder.none,
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18.0)),
            ),
          ),
        ],
      ),
    );
  }

  // Widget getDetailOfLaborerslist(){
  //   return Container(
  //     height: 150,
  //     width: 330,
  //     decoration: BoxDecoration(color:  Colors.white,borderRadius: BorderRadius.circular(8)),

  //   );
  // }
  BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
      // borderRadius: BorderRadius.circular(cornerRadius),
      // border: Border.all(color: borderColor, width: borderWidth)
    );
  }

  // Widget _buildContainer() {
  //   return Container(
  //     margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
  //     height: 250,
  //     color: Colors.white,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       //  crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         SizedBox(
  //           height: double.infinity,
  //           width: 100,
  //           child: Container(
  //             margin: EdgeInsets.only(left: 12),
  //             child: circleImage(""),
  //           ),
  //         ),
  //         Container(
  //           child: getPersonalDetail(),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // Widget _buildContainer() {
  //   return Align(
  //     alignment: Alignment.topCenter,
  //     child: Container(
  //       // margin: EdgeInsets.symmetric(vertical: 40.0),
  //       height: 250.0,
  //       child: ListView(
  //         scrollDirection: Axis.vertical,
  //         children: <Widget>[

  //            _boxes(
  //                 "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",

  //                 "Tree Bistro"),

  //           SizedBox(width: 10.0),
  //           // Padding(
  //           //   padding: const EdgeInsets.all(8.0),
  //           //   child: _boxes(
  //           //       "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",

  //           //       "New York"),
  //           // ),
  //           // SizedBox(width: 10.0),
  //           // Padding(
  //           //   padding: const EdgeInsets.all(8.0),
  //           //   child: _boxes(
  //           //       "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",

  //           //       "Gramercy Tavern"),
  //           // ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget getPersonalDetail() {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Distance"),
          Divider(),
          Text("Time"),

          // Padding(
          //   padding: EdgeInsets.only(left: 20),
          //   child: Text(
          //     "Distance",
          //     style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 12.0,
          //         fontWeight: FontWeight.bold),
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.only(left: 8),
          //   child: Row(

          //       children: [
          //         IconButton(
          //           icon: ImageIcon(AssetImage("lib/Image_icons/location_min.png")),
          //           // Icon(
          //           //   Icons.location_city,
          //           //   size: 18,
          //           // ),
          //           onPressed: () {},
          //         ),
          //         Text("6.80 km", style: TextStyle(fontSize: 12)),
          //       ]),
          // )
        ],
      ),
      Row(
        children: [
          IconButton(
            icon: ImageIcon(
              AssetImage("lib/Image_icons/online_icon.png"),
              color: Colors.deepOrange,
            ),
            onPressed: () {},
          ),
          Text(
            "12 min",
            style: TextStyle(fontSize: 12),
          ),
          IconButton(
            icon: ImageIcon(
              AssetImage("lib/Image_icons/online_icon.png"),
              color: Colors.deepOrange,
            ),
            onPressed: () {},
          ),
          Text(
            "12 min",
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    ]);
  }
  // Container(
  //     child: Column(
  //   crossAxisAlignment: CrossAxisAlignment.start,
  //   mainAxisAlignment: MainAxisAlignment.start,
  //   children: [
  //     Padding(
  //       padding: EdgeInsets.only(left: 20),
  //       child: Text(
  //         "Time",
  //         style: TextStyle(
  //             color: Colors.black,
  //             fontSize: 12.0,
  //             fontWeight: FontWeight.bold),
  //       ),
  //     ),
  // Container(
  //   padding: EdgeInsets.only(left: 2),
  //   child: Row(children: [
  //     IconButton(
  //       icon: ImageIcon(AssetImage("lib/Image_icons/online_icon.png"),color: Colors.deepOrange,),
  //       onPressed: () {},
  //     ),
  //     Text(
  //       "12 min",
  //       style: TextStyle(fontSize: 12),
  //     ),
  //   ]
  //   ),
  // )
  // 6284287859

  // Padding(
  //     padding: EdgeInsets.only(left: 12,right: 12),
  //     child: Container(
  //       child: Column(
  //         children: [
  //         CircleAvatar(
  //           radius: 24,
  //           backgroundColor: Colors.red,
  //           child: IconButton(

  //                   icon:
  //                   // ImageIcon(AssetImage("lib/Image_icons/phone_icon.png"),),

  //                    Icon(Icons.phone),iconSize: 24,

  //             onPressed: () {},
  //           ),
  //         ),
  //         Padding(
  //             padding: EdgeInsets.only(left: 12, right: 12),
  //             child: CircleAvatar(
  //               radius: 24,
  //               // backgroundColor: Colors.blue,
  //               child: IconButton(

  //                   icon:
  //                   //  Icon(Icons.share_sharp),iconSize: 24,
  //                    ImageIcon(AssetImage("lib/Image_icons/cursor.png"),),
  //                   onPressed: (){},
  //               ),
  //             ))
  //       ]),
  //     ))

  Widget myRowLocation() {
    return Padding(
        padding: EdgeInsets.only(left: 0, right: 12),
        child: Container(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.only(left: 0, right: 0),
              child: CircleAvatar(
                radius: 24,
                // backgroundColor: Colors.blue,
                child: IconButton(
                  icon: Icon(Icons.phone),
                  //  Icon(Icons.share_sharp),iconSize: 24,
                  //  ImageIcon(AssetImage("lib/Image_icons/cursor.png"),),
                  onPressed: () {},
                ),
              ),
            ),
            Divider(
              height: 12,
            ),
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.black,
              child: IconButton(
                icon:

                    // ImageIcon(AssetImage("lib/Image_icons/phone_icon.png"),),

                    Icon(Icons.phone),
                iconSize: 24,
                onPressed: () {},
              ),
            ),
          ]),
        ));
  }

  Widget myDetailsContainer1(String personName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          personName,
          style: TextStyle(
              color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5.0),
        Text(
          "Electrical Engineers",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 15.0,
          ),
        )
      ],
    );
  }
}
