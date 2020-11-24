import 'dart:async';
import 'package:MapPreoject/AfterLoginPage/Drawerbar.dart';
import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'LaborersList.dart';

class HomePage extends StatefulWidget {
  @override
 HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // flexibleSpace: topView(context),
        
        iconTheme: IconThemeData(color: Colors.transparent),
        elevation: 0,
       backgroundColor: Colors.transparent,
        toolbarHeight:148,
       
        
      
        flexibleSpace: topView(context)
      
      ),
      drawer: Container(
        width: 240,
        child: NavDrawer()
      
    ),
      
  extendBody: true,
        body: 
      Stack(
        children: <Widget>[
          
          //  Container(
          //     decoration: getBoxDecorationWithBorder(
          //   AssetImage(
          //     "lib/Images/1_Background.png",
          //   ),
          // )),
         
          
          _buildGoogleMap(context),
          _buildContainer(),
            
        ],
      ),
   
    
    );
  }
    BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
      // borderRadius: BorderRadius.circular(cornerRadius),
      // border: Border.all(color: borderColor, width: borderWidth)
    );
  }

  Widget topView(BuildContext context) {
    return Container(
      height: 180.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
       image: DecorationImage(image: AssetImage("lib/Images/1_Background.png"),fit: BoxFit.cover),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          color: Colors.orange),
      child: Column(
        children: <Widget>[
          SizedBox(height: 2),
          AppBar(
            
          
            leading: ImageIcon(AssetImage("lib/Image_icons/side_bar_icon.png"),color: Colors.black,),
            actions: [
              IconButton(
                icon: ImageIcon(AssetImage("lib/Image_icons/Search.png"),color: Colors.black,),
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => LaborersList(),));
                },
              )
            ],
            title: Padding(
              padding: EdgeInsets.only(right: 5),
              child: new Text(
                "300 Mount leabran Rowndar CA 102201 USA",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.bold),
              ),
            ),
          
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(80)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  circleImage(),
                  circleImage(),
                  circleImage(),
                  circleImage(),
                  circleImage(),
                ]),
          )
        ],
      ),
    );
  }

  Widget circleImage() {
    return new Container(
      margin: const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 5, right: 5),
      child: new CircleAvatar(
        backgroundImage:
            new NetworkImage('http://thecatapi.com/api/images/get?format=src'),
        radius: 20.0,
      ),
    );
  }
  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 40.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
                  40.738380,
                  -73.988426,
                  "Tree Bistro"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
                  40.712776, -74.005974,
                  "New York"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://lh5.googleusercontent.com/p/AF1QipMKRN-1zTYMUVPrH-CcKzfTo6Nai7wdL7D8PMkt=w340-h160-k-no",
                  40.738380, -73.988426,
                  "Gramercy Tavern"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(String _image, double lat, double long, String restaurantName) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
      child: Container(
         
         
        child: new FittedBox(
          child: Container(
           decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/Images/1_Background.png"),fit: BoxFit.cover),
           borderRadius: BorderRadius.circular(24.0),
           
           ),
            
              // color: Colors.orange,
              // elevation: 2.0,
              // borderRadius: BorderRadius.circular(24.0),
              // shadowColor: Color(0x802196F3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Stack(children: [
                            Container(
                            
                              width: 41,
                              height: 41,
                              child: new CircleAvatar(
                                backgroundImage: new NetworkImage(
                                    'http://thecatapi.com/api/images/get?format=src'),
                                radius: 20.0,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                  top: 34,
                                ),
                                child: Container(
                                    height: 12,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(80),
                                        color: Colors.black),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text("2.5 Star",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 8)),
                                    )))
                          ])),
                      Padding(
                        padding: EdgeInsets.only(top: 12, left: 8),
                        child: myDetailsContainer1(restaurantName),
                      )
                     
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      child: myDetailsContainer(),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget myDetailsContainer() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Distance",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Row(
                
                children: [
                  IconButton(
                    icon: ImageIcon(AssetImage("lib/Image_icons/location_min.png")),
                    // Icon(
                    //   Icons.location_city,
                    //   size: 18,
                    // ),
                    onPressed: () {},
                  ),
                  Text("6.80 km", style: TextStyle(fontSize: 12)),
                ]),
          )
        ],
      )),
      Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              "Time",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            // padding: EdgeInsets.only(left: 1),
            child: Row(children: [
              IconButton(
                icon: ImageIcon(AssetImage("lib/Image_icons/online_icon.png"),color: Colors.deepOrange,size: 20,),
                onPressed: () {},
              ),
              Text(
                "12 min",
                style: TextStyle(fontSize: 12),
              ),
            ]),
          )
          // 6284287859
        ],
      )),
      Padding(
          padding: EdgeInsets.only(left: 8,right: 8),
          child: Container(
            child: Row(children: [
              CircleAvatar(
                radius: 20,
                backgroundColor:  CustomColors.themeRedDark,
                child: IconButton(
                  
                        icon:  
                        // ImageIcon(AssetImage("lib/Image_icons/phone_icon.png"),),
                        
                         Icon(Icons.phone),iconSize: 24,
                  
                  onPressed: () {},
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: CircleAvatar(
                    radius: 21,
                    // backgroundColor: Colors.blue,
                    child: IconButton(
                 
                        icon: 
                        //  Icon(Icons.share_sharp),iconSize: 24,
                         ImageIcon(AssetImage("lib/Image_icons/cursor.png"),),
                        onPressed: (){},
                    ),
                  ))
            ]),
          ))
    ]);
  }

  Widget myDetailsContainer1(String restaurantName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Container(
              child: Text(
            restaurantName,
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(height: 5.0),
        Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child: Text(
              "300 Mount leabran Rowndvar CA  102201 USA",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 10.0,
              ),
            )),

            // Container(
            //     child: Text(
            //   "102201 USA ",
            //   style: TextStyle(
            //     color: Colors.black54,
            //     fontSize: 10.0,
            //   ),
            // )),

           
          ],
        )),

       
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: LatLng(40.729640, -73.983510), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          newyork,
          gramercyMarker,
          newyork2,
          newyork3
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat, long),
      zoom: 15,
      tilt: 50.0,
      bearing: 45.0,
    )));
  }
}

Marker gramercyMarker = Marker(
  markerId: MarkerId('gramercy'),
  position: LatLng(40.738380, -73.988426),
  infoWindow: InfoWindow(title: 'Gramercy Tavern'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);



Marker newyork = Marker(
  markerId: MarkerId('Newyork'),
  position: LatLng(40.712776, -74.005974),
  infoWindow: InfoWindow(title: 'New Tork'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork2 = Marker(
  markerId: MarkerId('newyork2'),
  position: LatLng(40.729640, -73.983510),
  infoWindow: InfoWindow(title: 'Tree Bistro'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);
Marker newyork3 = Marker(
  markerId: MarkerId('newyork3'),
  position: LatLng(40.719109, -74.000183),
  infoWindow: InfoWindow(title: 'Le Coucou'),
  
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueOrange,
  ),
);

