import 'package:flutter/material.dart';
import '../colors.dart';

//Tiles Class
class Grids extends StatelessWidget {
  const Grids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText1("Check it out\nimportant info", 21),
                const SizedBox(height: 10),
                MyText1("We have 5000+ reviews customer\ntrust us. Our Pandit their way of\npujan and our samagri delivery\nsystem", 11),
                IconButton(
                  icon: Image.asset("images/filename (2).jpg",),
                  iconSize: 21,
                  onPressed: (){},
                ),
                const SizedBox(height: 20),
                MyText1("Why we are\nbest in your\ntown", 21),
                const SizedBox(height: 10),
                MyText1("We have 5000+ reviews customer\ntrust us. Our Pandit their way of\npujan and our samagri delivery\nsystem", 11),
                IconButton(
                  icon: Image.asset("images/filename (2).jpg",),
                  iconSize: 21,
                  onPressed: (){},
                ),
                const SizedBox(height: 20),
                MyText1("Puja which is\nround of\ncorner", 21),
                const SizedBox(height: 10),
                MyText1("Book purohit and celebrate your\nfestival", 11),
                IconButton(
                  icon: Image.asset("images/filename (2).jpg",),
                  iconSize: 21,
                  onPressed: (){},
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
          Column(
            children: [
              Tiles("images/col1.jpeg", "Calendar"),
              const SizedBox(height: 40),
              Tiles("images/col2.jpeg", "Choose your\nfavourite Purohit"),
              const SizedBox(height: 40),
              Tiles("images/col3.jpeg", "Shivratri"),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              const SizedBox(height: 50),
              Tiles("images/col21.jpeg", "Muhrat"),
              const SizedBox(height: 40),
              Tiles("images/col22.jpeg", "Choose your vendor and get your samagri delivered"),
              const SizedBox(height: 40),
              Tiles("images/col23.jpeg", "Durga Puja"),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Tiles("images/col31.jpeg", "Facts/Article"),
              const SizedBox(height: 40),
              Tiles("images/col32.jpeg", "We are trusted by\ngoogle play"),
              const SizedBox(height: 40),
              Tiles("images/col33.jpeg", "Karwachawth"),
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
  Widget Tiles(String image, String tiletext){
    return MaterialButton(
      child: Container(
          decoration: BoxDecoration(
            color: white,
            boxShadow: [
              BoxShadow(
                color: orange.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 7), // changes position of shadow
              ),
            ],
          ),
          height: 150, width: 100,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(image, fit: BoxFit.cover),
                const Spacer(),
                MyText1(tiletext, 11.5)
              ],
            ),
          )
      ),
      onPressed: (){},
    );
  }//TileS Images
}