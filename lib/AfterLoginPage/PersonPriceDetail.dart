
import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:custom_radio_grouped_button/CustomButtons/ButtonTextStyle.dart';

import 'package:custom_radio_grouped_button/CustomButtons/CustomRadioButton.dart';
import 'package:flutter/material.dart';

import 'ScheduleService.dart';
// import 'package:image_picker/image_picker.dart';

class PersonPriceDetail extends StatefulWidget {
  @override
  _PersonPriceDetailState createState() => _PersonPriceDetailState();
}

class _PersonPriceDetailState extends State<PersonPriceDetail> {
  int _itemCount = 0;
      final TextEditingController desciptionTextController = TextEditingController();

//For demonstrate purpose I have added five static items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        SingleChildScrollView(child: 
         Column(
      children: [
        SizedBox(height: 20,),
        Container(
          child: listOfServicePerson(),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          child: selectionTon(),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: addAndSubtract(),
        ),
          Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: addmoreService(),
        ),
        
         Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          color: CustomColors.lightwhite,
          child: desciptionBox(),
        ),
         Container(
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 40),
          child: totalAmountAndButton(),
        ),
        
      ],
     ) )
     
     );
  }
  Widget totalAmountAndButton(){
    return Row(
      children: [
        Column(
          children: [
            Text("Total"),
            Text("\$10",style:TextStyle(color: Colors.orange,fontSize: 24),   )
          ],
        ),
        Spacer(),
        Container(
          height: 70,
          width: 230,
          decoration: BoxDecoration( 
         borderRadius: BorderRadius.circular(2),
         color: CustomColors.themeRedDark,
            
          ),
          child: FlatButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleService(),));
          },
          child:Row(
            children: [
              Text("Process",style: TextStyle(color: Colors.white,fontSize: 28),),
              Spacer(),
              Icon(Icons.arrow_forward,color: Colors.white,size: 40,)
            ],
          )
          
          
          ),
        )
      ],
    );
  }
  Widget addmoreService(){
    return Row(
      children: [
       Container(
                  height: 35,
                  width: 55,
                  color: CustomColors.themeRedDark,
                  child: Center(
                      child: new IconButton(
                          icon: new Icon(Icons.add),
                          iconSize: 20,
                          color: Colors.white,
                          onPressed: () {}),),),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child:  Text("Add more service",style: TextStyle(color: CustomColors.themeRedDark,fontWeight: FontWeight.bold),),
        )
       
      ],
    );
  }
  Widget desciptionBox(){
    return 
    
    
    TextField(
      
        decoration: InputDecoration(
          hintText: "Write Here...",
          focusColor: Colors.black38,
       
             border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        
         
      
hoverColor: CustomColors.lightgray

        ),
        maxLines: 6,
        controller: desciptionTextController,
     );
      
      

  }
  Widget addAndSubtract() {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Text(
          "\$10" + "/" + "from",
          style: TextStyle(fontSize: 20, color: Colors.orange),
        ),
      ),
      Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Container(
                height: 35,
                width: 55,
                color: CustomColors.lightgray,
                child: Center(
                  child: new IconButton(
                    icon: new Icon(Icons.remove),
                    onPressed: () => setState(() => _itemCount--),
                  ),
                ),
              ),
              Spacer(),
              Container(
                  height: 35,
                  width: 55,
                  color: CustomColors.themeRedDark,
                  child: Center(
                    child: new Text(
                      _itemCount.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Spacer(),
              Container(
                  height: 35,
                  width: 55,
                  color: CustomColors.lightgray,
                  child: Center(
                      child: new IconButton(
                          icon: new Icon(Icons.add),
                          iconSize: 20,
                          onPressed: () => setState(() => _itemCount++))))
            ],
          )),
    ]);
  }

  Widget listOfServicePerson() {
    return GestureDetector(
        onTap: () {
          //  listOfServicePersonAction();
          // Navigator.push(context, MaterialPageRoute(builder: (context) => ScheduleService()
          // HorizontalCalendar(firstDate: DateTime.april,
          // firstDate:DateTime(DateTime.now().year-5) , lastDate: DateTime(DateTime.now().year+5)
          // ));
        },
        child: Container(
          // color: Colors.grey,
          margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),

          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 12, top: 20),
                child: circleImage(
                    "https://media.gettyimages.com/photos/joyous-woman-infront-of-wall-picture-id981594838?s=2048x2048"),
              ),
              Container(
                margin: EdgeInsets.only(left: 24, top: 30),
                child: personDetailText(),
              ),
            ],
          ),
        ));
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
          "Electrecity ",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget selectionTon() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Selection Ton"),
        // SizedBox(height: 10,),
        selectTon(),
      ],
    );
  }

  Widget selectTon() {
    return Column(children: <Widget>[
      Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          CustomRadioButton(
              elevation: 0,
              unSelectedColor: CustomColors.lightgray,
              // selectedBorderColor: CustomColors.lightgray,
              spacing: 0,
              absoluteZeroSpacing: false,
              unSelectedBorderColor: CustomColors.lightgray,
              buttonLables: [
                '1 Ton',
                '2 Ton',
                '3 Ton',
                '4 Ton',
                '5 Ton',
              ],
              buttonValues: [
                "1 Ton",
                "2 Ton",
                "3 Ton",
                "4 Ton",
                '5 Ton',
              ],
              buttonTextStyle: ButtonTextStyle(
                  selectedColor: Colors.white,
                  unSelectedColor: Colors.black,
                  textStyle: TextStyle(fontSize: 16)),
              radioButtonValue: (value) {
                print(value);
              },
              selectedColor: CustomColors.themeRedDark),
        ],
      )
    ]);
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
}
