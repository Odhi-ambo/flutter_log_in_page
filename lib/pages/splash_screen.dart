import 'package:flutter/material.dart';
import 'package:login_page_flutter/utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: backgroundColor1,
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: size.height * 0.5,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  color: primaryColor,
                  //image: DecorationImage(image: AssetImage('assetName'))
                ),
              ),
            ),
            Positioned(
                top: size.height * 0.6,
                left: 0,
                right: 0,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Discover Your \nDream Job!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: textColor1,
                            height: 1.2),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Explore the most exciting jobs roles\n based on your interest and ares of study',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: textColor2,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Container(
                          height: size.height * 0.08,
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: backgroundColor3.withOpacity(0.9),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12.withOpacity(0.05),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: const Offset(0, -1)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
