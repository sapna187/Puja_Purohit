import 'package:flutter/material.dart';
import '../colors.dart';

//Header Class

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
      child: Column(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: MyText1("Puja Purohit", 16.0),
              ),
              const Spacer(),
              GestureDetector(child: MyText1("Home", 14), onTap: () {},),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(child: MyText1("About us", 14), onTap: () {},),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(child: MyText1("Services", 14), onTap: () {},),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(child: MyText1("Get the App", 14),
                onTap: () {},),
              const SizedBox(
                width: 15,
              ),
              MyButton("Login")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/Untitled design (1).png"),
                    fit: BoxFit.contain
                )
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Get best purohit in your\ntown in just few clicks",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: brown,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Order samagri for reasonable costs.\nBook nearby pandit near you.",
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 16, fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  children: [
                    MyButton("Order Now"),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: const BorderSide(color: orange)
                          ),
                        ),
                        child: const Text("Track your order",
                          style: TextStyle(color: orange),)
                    ),
                  ],
                ),
                const SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget MyText1(String text, double size) {
    return Text(text,
      style: TextStyle(
          color: black,
          fontSize: size,
          fontWeight: FontWeight.w600
      ),
    );
  } //black texts
  Widget MyText2(String text, double size) {
    return Text(text,
      style: TextStyle(
          color: grey,
          fontSize: size,
          fontWeight: FontWeight.w500
      ),
    );
  } //grey texts
  Widget MyButton(String text) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(text)
    );
  } //orange button

}