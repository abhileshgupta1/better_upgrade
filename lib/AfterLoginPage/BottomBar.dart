

// import 'package:MapPreoject/AfterLoginPage/Booking.dart';
// import 'package:MapPreoject/AfterLoginPage/Likes.dart';
// import 'package:MapPreoject/AfterLoginPage/Message.dart';
// import 'package:MapPreoject/AfterLoginPage/ProfilePage.dart';


// import 'package:flutter/material.dart';

// import 'Home.dart';





// class BottomBar extends StatefulWidget {
//   @override
//   _BottomBarState createState() => new _BottomBarState();
// }

// class _BottomBarState extends State<BottomBar> {
//   int _page = 2;
//   final List<Widget> screens = [
//       ProfilePage(),
//              Booking(),
//              HomePage(),
//              Likes(),
//              Message(),
//   ];
 
//   PageController _c;
//   @override
//   void initState(){
//     _c =  new PageController(
//       initialPage: _page,
//     );
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {

//    String profileselected = "lib/Image_icons/profile_icon.png";
//   //  String profileUnSelected = "lib/Image_icons/profile_icon.png";
//    String bookingSelected = "lib/Image_icons/booking_icon.png";
//   //  String bookingUnSelected = "lib/Image_icons/booking_icon.png";
//    String homeSelected = "lib/Image_icons/booking_icon.png";
//   //  String homeUnselected = "";
//     // String homeUnselected = "lib/Image_icons/home_icon.png";
//      String likeselected = "lib/Image_icons/like.png";  
//       // String likeUnselected = "lib/Image_icons/like.png";
//         String messageselected = "lib/Image_icons/message_icon.png";
//           // String messageUnselected = "lib/Image_icons/message_icon.png";
//     return new Scaffold(
      
//         floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.green,
//         child: 
           
        
//         // ImageIcon(AssetImage("lib/Image_icons/home_icon.png")),
//         Icon(Icons.home),
        
//          onPressed: (){
//            setState(() {
//              _c.jumpToPage(2);
//               _page = 2; 
//            });
//                 },
       
//         ),
//          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    
//       bottomNavigationBar: 
      
//       BottomNavigationBar(
//         // backgroundColor: Colors.transparent,
//         fixedColor: Colors.transparent,
//         currentIndex: _page,
        
//         onTap: (index){
//           _page = index;
//           this._c.jumpToPage(index);
//             },
//         items: <BottomNavigationBarItem>[
          
//           new BottomNavigationBarItem(icon: ImageIcon(AssetImage(profileselected),color: Colors.red,),
       
//           label: "PROFILE",),
         
          
//         new BottomNavigationBarItem(icon: ImageIcon(AssetImage( bookingSelected ),
//         color:Colors.red), 
//         label: "BOOKING"),
        
//         new BottomNavigationBarItem(icon: ImageIcon(AssetImage( homeSelected ),color: Colors.red),
//         label: "",
//         ),
      
//          new BottomNavigationBarItem(icon: ImageIcon(AssetImage( likeselected ),
//          color: Colors.red), 
//          label: "Likes"),
        
//           new BottomNavigationBarItem(icon: ImageIcon(AssetImage( messageselected,),size: 28,
//           color: Colors.red), 
//           label: "MESSAGE",),
         
//       ],
//       ),
//       // Icon(Icons.home,color: Colors.black)
//       body: 
//       // Container(
//         // color: Colors.red,
     
//       //   decoration:  BoxDecoration(
//       //  image: DecorationImage(image: AssetImage("lib/Images/1_Background.png"),fit: BoxFit.fill),),

//         // child:
      
//       new PageView(
//         controller: _c,
//         onPageChanged: (newPage){
//           setState((){
//             this._page=newPage;
//           });
//         },
//         children: <Widget>[
//              screens[0],
//                screens[1],
//                  screens[2],
//                    screens[3],
//                      screens[4],
//               ],
//             ),
          
        
//     //  ) 
//      );
//   }
// }
//   Widget getNavigatorButton(ImageIcon icon,String text,Function _page){
//     return MaterialButton(
//                     minWidth: 40,
//                     onPressed: () {
//                       setState(() {
//                         _page = 
                           
                        
//                       });
//                     },
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: <Widget>[
//                         Icon(
//                           Icons.person,
//                           color: currentTab == 0 ? Colors.black : Colors.brown,   
//                     ),
                        
//                         Text(
//                           'Profile',
//                           style: TextStyle(
//                             color: currentTab == 0 ? Colors.black : Colors.brown,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//   }
// }



import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:flutter/material.dart';

import 'BookingPage.dart';
import 'Home.dart';
import 'Likes.dart';

import 'Message.dart';
import 'ProfilePage.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int currentTab = 0; 
  final List<Widget> screens = [
     ProfilePage(),
            Booking(),
             HomePage(),
             Likes(),
             Message(),
    
  ]; 
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.themeRedDark,
        child: Icon(Icons.home),
      //  ImageIcon(AssetImage("lib/Image_icons/home_icon.png"),),
        // IconButton(icon: ImageIcon(AssetImage("lib/Images/home_icon.png")),
        // onPressed: (){},
         onPressed: (){
           setState(() {
                        currentScreen =
                            screens[2];
                        currentTab = 2;
                      });
          
       },
        ),
       
        // ImageIcon(AssetImage("lib/Images/home_icon.png")),
        
        // ImageIcon(AssetImage("lib/Images/home_icon.png"),size: 24,),
      
    
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(
          
        ),
        notchMargin: 4,
        child: Container(
          decoration:  BoxDecoration(
       image: DecorationImage(image: AssetImage("lib/Images/1_Background.png"),fit: BoxFit.cover),),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 32,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                           screens[0];
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ImageIcon(AssetImage("lib/Image_icons/profile_icon.png"),color: currentTab == 0 ? Colors.black : Colors.brown, ),
                        // Icon(
                        //   Icons.person,),
                
                        
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.black : Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 32,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                           screens[1];
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       ImageIcon(AssetImage("lib/Image_icons/booking_icon.png"),color: currentTab == 0 ? Colors.black : Colors.brown, ),
                          // color: currentTab == 1 ? Colors.black : Colors.brown,   
                    // ),
                        
                        Text(
                          'Booking',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.black : Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 32,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            screens[2]; 
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Icon(
                        //   Icons.date_range,
                        //   color: currentTab == 1 ? Colors.black : Colors.brown,
                        // ),
                        // Text(
                        //   'Home',
                        //   style: TextStyle(
                        //     color: currentTab == 1 ?Colors.black : Colors.brown,
                        //   ),
                        // ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 32,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            screens[3];
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       ImageIcon(AssetImage("lib/Image_icons/like.png"),color: currentTab == 0 ? Colors.black : Colors.brown, ),
                         
                        // Icon(
                        //   Icons.thumb_up_alt,
                        //   color: currentTab == 3 ? Colors.black : Colors.brown,
                        // ),
                        Text(
                          'Likes',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.black : Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 32,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                             screens[4]; // if user taps on this dashboard tab will be active
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                         ImageIcon(
                           AssetImage("lib/Image_icons/message_icon.png"),color: currentTab == 0 ? Colors.black : Colors.brown, ),
                          
                         
                        Text(
                          'Message',
                          style: TextStyle(
                            color: currentTab == 4 ? Colors.black : Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }

   
}
