import 'package:flutter/material.dart';
import '../colors.dart';

//Poster Class
class Poster extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: cream),
      height: 400, //dummy
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 7),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(),
                  MyText1("Hinduism activities in\nyour pocket", 25),
                  const SizedBox(height: 15),
                  MyText2("Book your purohit, Get your pujan samagri in just one click\nCall premium astologers in minimum cost, with all new Puja Purohit App.", 10),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 50, width: 200,
                    child: Image.asset("images/playimg.jpeg", fit: BoxFit.cover),
                  ),
                  const Spacer()
                ],
              ),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(), const Spacer(),
                SizedBox(
                  height: 280, width: 150,
                  child: Image.asset("images/phoneup.jpeg", fit: BoxFit.cover),
                )
              ],
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 220, width: 150,
                  child: Image.asset("images/phonedown.jpeg", fit: BoxFit.cover),
                ),
                const Spacer(), const SizedBox()
              ],
            ),
            const SizedBox(width: 20)
          ],
        ),
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

