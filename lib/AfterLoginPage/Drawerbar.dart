import 'package:flutter/material.dart';


class NavDrawer extends StatefulWidget {
  @override  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override  Widget build(BuildContext context) {
    return Scaffold(
 
   
       body: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Abhilesh",style: TextStyle(color: Colors.black),),
              accountEmail: new Text("ABhileshBHupta74@gmail.com",style: TextStyle(color: Colors.black),),
              // decoration: new BoxDecoration(
              //   image: new DecorationImage(
              //     image: new ExactAssetImage('assets/images/lake.jpeg'),
              //     fit: BoxFit.cover,
              //   ),
              // ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.gettyimages.com/photos/joyous-woman-infront-of-wall-picture-id981594838?s=2048x2048")),
            ),
            new ListTile(
                leading: Icon(Icons.watch_later),
                title: new Text("ScheduleService"),
                onTap: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleService(),));
                }),
            new ListTile(
                leading: Icon(Icons.expand_less),
                title: new Text("ACRepairServices"),
                onTap: () {
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => ACRepairServices(),));
                }),
            // new ListTile(
            //     leading: Icon(Icons.shopping_cart),
            //     title: new Text("Shopping"),
            //     onTap: () {
            //       Navigator.pop(context);
            //     }),
            // new ListTile(
            //     leading: Icon(Icons.apps),
            //     title: new Text("Apps"),
            //     onTap: () {
            //       Navigator.pop(context);
            //     }),
            // new ListTile(
            //     leading: Icon(Icons.dashboard),
            //     title: new Text("Docs"),
            //     onTap: () {
            //       Navigator.pop(context);
            //     }),
            // new ListTile(
            //     leading: Icon(Icons.settings),
            //     title: new Text("Settings"),
            //     onTap: () {
            //       Navigator.pop(context);
            //     }),
            // new Divider(),
            // new ListTile(
            //     leading: Icon(Icons.info),
            //     title: new Text("About"),
            //     onTap: () {
            //       Navigator.pop(context);
            //     }),
            // new ListTile(
            //     leading: Icon(Icons.power_settings_new),
            //     title: new Text("Logout"),
            //     onTap: () {
            //       Navigator.pop(context);
            //     }),
          ],
        ),
    
    );
  }
}