
import 'package:MapPreoject/AfterLoginPage/PaymentMethod.dart';
import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';



class ScheduleService extends StatefulWidget {

  @override
  _ScheduleServiceState createState() => _ScheduleServiceState();
}

class _ScheduleServiceState extends State<ScheduleService> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();
  int _selection = 0;

  selectTime(int timeSelected) {
    setState(() {
      _selection = timeSelected;
    });
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.transparent),
            elevation: 0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 60,
            flexibleSpace: topView(context)),
        extendBody: true,
        body: Container(
            decoration: getBoxDecorationWithBorder(
              AssetImage(
                "lib/Images/1_Background.png",
              ),
            ),
            child: 
            
           SingleChildScrollView(
             child:
                  Stack(
                    children: [
                     Padding(padding: EdgeInsets.symmetric(vertical: 0),

                     child:  scheduleServiceDetail(),
                    ),
                     
                     
                       Padding(
                padding: EdgeInsets.symmetric(horizontal: 12,vertical: 200),
                child: scheduleTimeDetail(),
              ),
                          Padding(
                padding: EdgeInsets.symmetric(vertical: 500,horizontal: 12),
                child: totalAmountAndButton(),
              ),
                      
                  
                   
                                            
              //  Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 12,vertical: 200),
              //   child: scheduleTimeDetail(),
              // ),
              //  Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 12,vertical: 350),
              //   child: totalAmountAndButton(),
              // )
               
            
                    ])
            
     ) ));
  }

  Widget totalAmountAndButton() {
    return 
    Container(
      
     
      child:
    Row(
      children: [
       Column(
         children:[
            Text("Total"),
            Text(
              "\$10",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
         ]
       ),
  
        Spacer(),
        Container(
          height: 70,
          width: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: CustomColors.themeRedDark,
          ),
          child: FlatButton(
              onPressed: () {
         Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethod(),));
              },
              child: Row(
                children: [
                  Text(
                    "Process",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              )),
        )
      ],
    ));
  }

  Widget scheduleTimeDetail() {
    return Container(
        padding: EdgeInsets.only(left: 6, top: 12, right: 0),
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        height: 240,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: <Widget>[
              Text(
              "At what time should the service provide arrive ?",
              style: TextStyle(fontSize: 18),
            
          ),
              // Text("At what time should the service provide arrive ?",textAlign:TextAlign.start),
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  InkWell(
                    
                    onTap: () {
                      setState(() {
                        _selection = 1;
                      });
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          
                          decoration: BoxDecoration(
                              color:
                                  _selection == 1 ? CustomColors.themeRedDark : CustomColors.lightgray ,
                              borderRadius: BorderRadius.circular(4),
                              border:
                                  Border.all(color: CustomColors.lightgray)),
                          height: 50,
                          width: 150,
                          child:Center(child: 
                          Text(
                              "11:00 - 12:00",
                              style: TextStyle(fontWeight: FontWeight.bold,color:  _selection == 1 ? Colors.white : Colors.black),
                            ),
                          )
                        ),
                       
                            
                            // Text(
                            //   "11:00 - 12:00",
                            //   style: TextStyle(fontWeight: FontWeight.bold,color:  _selection == 1 ? Colors.white : Colors.black),
                            // ),
                         
                      ],
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selection = 2;
                      });
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color:
                                  _selection == 2 ? CustomColors.themeRedDark : CustomColors.lightgray ,
                              borderRadius: BorderRadius.circular(4),
                              border:
                                  Border.all(color: CustomColors.lightgray)),
                          height: 50,
                          width: 150,
                          // color: _selection == 2 ? CustomColors.themeRedDark : CustomColors.lightgray ,
                        
                        
                        child:   Center(child: 
                          Text(
                              "13:00 - 14:00",
                              style: TextStyle(fontWeight: FontWeight.bold,color:  _selection == 2 ? Colors.white : Colors.black),
                            ),
                          )),
                        // Row(
                        //   children: <Widget>[
                        //     Center(
                        //       child: Text(
                        //         "12:00 - 13:00",
                        //         style: TextStyle(fontWeight: FontWeight.bold,color: _selection == 2 ? Colors.white : Colors.black),
                        //       ),
                        //     )
                          // ],
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        )
  );
  }
//        Expanded(flex: 1,
//        child: Container(
//          height: 40,
//          width: 60,
//          decoration: BoxDecoration(borderRadius:
//       BorderRadius.circular(8),
//       color: Colors.grey
// ),
//          child: Center(
//          child:
//          Text("text")
//          )
//        ),
//        ),

//       Spacer(),

//        Expanded(flex: 1,
//        child: Container(
//          height: 40,
//          width: 60,
//          decoration: BoxDecoration(borderRadius:
//       BorderRadius.circular(8),
//       color: Colors.grey
// ),
//          child: Center(
//          child:
//          Text("text")
//          )

//        ),
//        ),

//         Row(
//           children: [
//              Expanded(flex: 1,
//        child: Container(
//          height: 40,
//          width: 60,
//          decoration: BoxDecoration(borderRadius:
//       BorderRadius.circular(8),
//       color: Colors.grey
// ),
//          child: Text("text")

//        ),
//        ),
//           ],
        // )

      

  Widget scheduleServiceDetail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      height: 180,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25, top: 15),
            child: Text(
              "When would you like Your service ?",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          dateModified(),
        ],
      ),
    );
  }

  Widget dateModified() {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: DatePicker(
              DateTime.now(),
              width: 70,
              height: 100,
              controller: _controller,
              initialSelectedDate: DateTime.now(),
              selectionColor: CustomColors.themeRedDark,
              selectedTextColor: Colors.white,
              inactiveDates: [
                DateTime.now().add(Duration(days: 3)),
                DateTime.now().add(Duration(days: 4)),
                DateTime.now().add(Duration(days: 7))
              ],
              onDateChange: (date) {
                // New date selected
                setState(() {
                  _selectedValue = date;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget topView(BuildContext context) {
    return Container(
      // height: 250,
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
              " Schedule Service ",
              style: TextStyle(color: Colors.black, fontSize: 24),
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

  BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
    );
  }
}

// class TimeSelection extends StatefulWidget {
//   @override
//   _TimeSelectionState createState() => _TimeSelectionState();
//   }
//    class _TimeSelectionState extends State<TimeSelection> {
//        int _selection = 0;

//       selectTime(int timeSelected) {
//        setState(() {
//        _selection = timeSelected;
//           });
//          }

//          @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//     child: Scaffold(
     

//        body: Container(
//       padding: EdgeInsets.all(30),
//       child: Column(
//         children: <Widget>[
//           Row(
//             children: <Widget>[
//               InkWell(
//                 onTap: () {
//                   setState(() {
//                     _selection = 1;
//                   });
//                 },
//                 child: Stack(
//                   children: <Widget>[
//                     Container(
//                       height: 40,
//                       width: 150,
//                       color: _selection == 1 ? Colors.green : Colors.white,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Radio(
//                           focusColor: Colors.white,
//                           groupValue: _selection,
//                           onChanged: selectTime,
//                           value: 1,
//                         ),
//                         Text(
//                           "11:00 - 12:00",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   setState(() {
//                     _selection = 2;
//                   });
//                 },
//                 child: Stack(
//                   children: <Widget>[
//                     Container(
//                       height: 40,
//                       width: 150,
//                       color: _selection == 2 ? Colors.green : Colors.white,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Radio(
//                           focusColor: Colors.white,
//                           groupValue: _selection,
//                           onChanged: selectTime,
//                           value: 2,
//                         ),
//                         Text(
//                           "12:00 - 13:00",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ],
//       )),
// ));
//   }}