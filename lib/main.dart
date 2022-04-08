import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sapna/Sections/header.dart';
import 'package:sapna/Sections/posters.dart';
import 'package:sapna/Sections/tiles.dart';
import 'package:sapna/colors.dart';
import 'package:sapna/Sections/footer.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                 Header(),
                  SizedBox(height: 15),
                  Divider(thickness: 1.5, color: cream),
                  Grids(),
                  SizedBox(height: 10),
                  Divider(thickness: 1.5, color: cream),
                  SizedBox(height: 10),
                  Poster(),
                  SizedBox(height: 10),
                  Divider(thickness: 1.5, color: cream),
                  SizedBox(height: 10), 
                  Footer()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}