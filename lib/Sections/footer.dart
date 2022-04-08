import 'package:flutter/material.dart';

import '../colors.dart';

//Footer Class
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText1("COMPANY", 18),
              const SizedBox(height: 10),
              GestureDetector(child: MyText2("About us", 15), onTap: (){},),
              GestureDetector(child: MyText2("Team", 15), onTap: (){},),
              GestureDetector(child: MyText2("Careers", 15), onTap: (){},),
              GestureDetector(child: MyText2("Puja Purohit Blog", 15), onTap: (){},),
              GestureDetector(child: MyText2("Bug Bounty", 15), onTap: (){},),
              GestureDetector(child: MyText2("Puja PurohitSuper", 15), onTap: (){},),
              GestureDetector(child: MyText2("Puja Purohit Corporate", 15), onTap: (){},),
              GestureDetector(child: MyText2("Puja Purohit Instamart", 15), onTap: (){},),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText1("CONTACT", 18),
              const SizedBox(height: 10),
              GestureDetector(child: MyText2("Help and Support", 15), onTap: (){},),
              GestureDetector(child: MyText2("Partner with us", 15), onTap: (){},),
              GestureDetector(child: MyText2("Ride with us", 15), onTap: (){},),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText1("LEGAL", 18),
              const SizedBox(height: 10),
              GestureDetector(child: MyText2("Terms & Conditions", 15), onTap: (){},),
              GestureDetector(child: MyText2("Refund & Cancellation", 15), onTap: (){},),
              GestureDetector(child: MyText2("Privacy Policy", 15), onTap: (){},),
              GestureDetector(child: MyText2("Cookie Policy", 15), onTap: (){},),
              GestureDetector(child: MyText2("Offer Terms", 15), onTap: (){},),
              GestureDetector(child: MyText2("Phishing and Fraud", 15), onTap: (){},),
            ],
          ),
        ],
      ),
    );
  }
  Widget MyText1(String text, double size){
    return Text(text,
      style: TextStyle(
          color: black,
          fontSize: size,
          fontWeight: FontWeight.w600
      ),
    );
  } //black texts
  Widget MyText2(String text, double size){
    return Text(text,
      style: TextStyle(
          color: grey,
          fontSize: size,
          fontWeight: FontWeight.w500
      ),
    );
  } //grey texts
}