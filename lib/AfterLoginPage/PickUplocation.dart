import 'dart:async';

import 'package:MapPreoject/AfterLoginPage/ProfilePage.dart';
import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickupLocationPage extends StatefulWidget {
  @override
  PickupLocationPageState createState() => PickupLocationPageState();
}

class PickupLocationPageState extends State<PickupLocationPage> {
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
          toolbarHeight: 148,
          flexibleSpace: topView(context)),
      extendBody: true,
      body: Stack(
        children: <Widget>[
        

          _buildGoogleMap(context),
          getButton(context, "Confirm", () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ));
          })
        ],
      ),
    );
  }

  Widget getButton(
    BuildContext context,
    String title,
    Function onClick,
  ) {
    return new Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 200),
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
                child: ImageIcon(
                  AssetImage(
                    "lib/Image_icons/forward_icon.png",
                  ),
                  color: Colors.white,
                ),
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

  Widget searchBar(
    double lat,
    double long,
  ) {
    return GestureDetector(
        onTap: () {
          _gotoLocation(lat, long);
        },
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                padding: EdgeInsets.symmetric(horizontal: 18),
                decoration: BoxDecoration(
                  color: Colors.white,
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
                      hintStyle:
                          TextStyle(color: Colors.black, fontSize: 18.0)),
                ),
              ),
            ],
          ),
        ));
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
          image: DecorationImage(
              image: AssetImage("lib/Images/1_Background.png"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          color: Colors.orange),
      child: Column(
        children: <Widget>[
          SizedBox(height: 2),
          AppBar(
            leading: ImageIcon(
              AssetImage("lib/Image_icons/back_icon.png"),
              color: Colors.black,
              size: 24,
            ),
            title: Text("Pick location"),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          searchBar(
            40.738380,
            -73.988426,
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
        markers: {newyork, gramercyMarker, newyork2, newyork3},
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
