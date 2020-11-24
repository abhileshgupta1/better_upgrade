


// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';



// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String _date = "Not set";
//   String _time = "Not set";

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Container(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               RaisedButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5.0)),
//                 elevation: 4.0,
//                 onPressed: () {
//                   DatePicker.showDatePicker(context,
//                       // theme:
//                       //  DatePickerTheme(
                                             
//                       //                        ),
//                                              showTitleActions: true,
//                                              minTime: DateTime(2000, 1, 1),
//                                              maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
//                                            print('confirm $date');
//                                            _date = '${date.year} - ${date.month} - ${date.day}';
//                                            setState(() {});
//                                          }, currentTime: DateTime.now(), locale: LocaleType.en);
//                                        },
//                                        child: Container(
//                                          alignment: Alignment.center,
//                                          height: 50.0,
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                            children: <Widget>[
//                                              Row(
//                                                children: <Widget>[
//                                                  Container(
//                                                    child: Row(
//                                                      children: <Widget>[
//                                                        Icon(
//                                                          Icons.date_range,
//                                                          size: 18.0,
//                                                          color: Colors.teal,
//                                                        ),
//                                                        Text(
//                                                          " $_date",
//                                                          style: TextStyle(
//                                                              color: Colors.teal,
//                                                              fontWeight: FontWeight.bold,
//                                                              fontSize: 18.0),
//                                                        ),
//                                                      ],
//                                                    ),
//                                                  )
//                                                ],
//                                              ),
//                                              Text(
//                                                "  Change",
//                                                style: TextStyle(
//                                                    color: Colors.teal,
//                                                    fontWeight: FontWeight.bold,
//                                                    fontSize: 18.0),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                        color: Colors.white,
//                                      ),
//                                      SizedBox(
//                                        height: 20.0,
//                                      ),
//                                      RaisedButton(
//                                        shape: RoundedRectangleBorder(
//                                            borderRadius: BorderRadius.circular(5.0)),
//                                        elevation: 4.0,
//                                        onPressed: () {
//                                          DatePicker.showTimePicker(context,
//                                             //  theme: DatePickerTheme(
//                                             //    // cancelStyle:EdgeInsets.only(top: 12)
                                       
//                                             //  ),
//                                              showTitleActions: true, onConfirm: (time) {
//                                            print('confirm $time');
//                                            _time = '${time.hour} : ${time.minute} : ${time.second}';
//                                            setState(() {});
//                                          }, currentTime: DateTime.now(), locale: LocaleType.en);
//                                          setState(() {});
//                                        },
//                                        child: Container(
//                                          alignment: Alignment.center,
//                                          height: 50.0,
//                                          child: Row(
//                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                            children: <Widget>[
//                                              Row(
//                                                children: <Widget>[
//                                                  Container(
//                                                    child: Row(
//                                                      children: <Widget>[
//                                                        Icon(
//                                                          Icons.access_time,
//                                                          size: 18.0,
//                                                          color: Colors.teal,
//                                                        ),
//                                                        Text(
//                                                          " $_time",
//                                                          style: TextStyle(
//                                                              color: Colors.teal,
//                                                              fontWeight: FontWeight.bold,
//                                                              fontSize: 18.0),
//                                                        ),
//                                                      ],
//                                                    ),
//                                                  )
//                                                ],
//                                              ),
//                                              Text(
//                                                "  Change",
//                                                style: TextStyle(
//                                                    color: Colors.teal,
//                                                    fontWeight: FontWeight.bold,
//                                                    fontSize: 18.0),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                        color: Colors.white,
//                                      )
//                                    ],
//                                  ),
//                                ),
//                              ),
//                            );
//                          }
//                        }
         
  
// // class DatePickerTheme  {
// //   final TextStyle cancelStyle;
// //   final TextStyle doneStyle;
// //   final TextStyle itemStyle;
// //   final Color backgroundColor;
// //   final Color headerColor;

// //   final double containerHeight;
// //   final double titleHeight;
// //   final double itemHeight;

// //  DatePickerTheme({
// //     this.cancelStyle = const TextStyle(color: Colors.black54, fontSize: 16),
// //     this.doneStyle = const TextStyle(color: Colors.blue, fontSize: 16),
// //     this.itemStyle = const TextStyle(color: Color(0xFF000046), fontSize: 18),
// //     this.backgroundColor = Colors.white,
// //     this.headerColor,
// //     this.containerHeight = 210.0,
// //     this.titleHeight = 44.0,
// //     this.itemHeight = 36.0,
// //   });
// // }