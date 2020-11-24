import 'package:MapPreoject/Common/CustomColor.dart';
import 'package:flutter/material.dart';

import 'BookingConfirm.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.transparent),
            elevation: 0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 80,
            flexibleSpace: topView(context)),
        extendBody: true,
        body: Container(
            decoration: getBoxDecorationWithBorder(
              AssetImage(
                "lib/Images/1_Background.png",
              ),
            ),
            child: SingleChildScrollView(
              child:
              
                    Stack(
                      children: [
                        
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: cardPaymentDetail(
                              "lib/Image_icons/master_card_icon.png",
                              "Debit Card",
                              Icon(Icons.arrow_forward_ios)),
                        ),
                      
            
              Padding(
                padding: EdgeInsets.symmetric(vertical: 120),
                child: cardPaymentDetail("lib/Image_icons/credit_card_icon.png",
                    "Credit Card", Icon(Icons.arrow_forward_ios)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 220),
                child: cardPaymentDetail(
                  "lib/Image_icons/cash_icon.png",
                  "Cash On Delivery",
                  Icon(Icons.arrow_forward_ios),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 320, horizontal: 30),
                child: addmoreService(),
              )
            ]))));
  }

  Widget cardPaymentDetail(_image, String text, Icon icon) {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 12),
            child: ImageIcon(
              AssetImage(_image),
              size: 70,
            ),
          ),
          Spacer(),
          Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
          Spacer(),
          IconButton(
              icon: icon,
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => BookingConfim(),
                //     )

                //     );
              })
        ],
      ),
    );
  }

  Widget addmoreService() {
    return Row(
      children: [
        Container(
          height: 35,
          width: 55,
          color: Colors.blue,
          child: Center(
            child: new IconButton(
                icon: new Icon(Icons.add),
                iconSize: 20,
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookingConfim(),
                      ));
                }),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "Add Payment Method",
            style: TextStyle(
                color: CustomColors.themeRedDark, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  BoxDecoration getBoxDecorationWithBorder(AssetImage image) {
    return BoxDecoration(
      image: DecorationImage(image: image, fit: BoxFit.cover),
    );
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
              " Payment Method ",
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
}
