import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:santa_assistant/Global/BgStrips/Strips.dart';
import 'package:santa_assistant/Global/Buttons/BlueCustomButton.dart';
import 'package:santa_assistant/Global/Colors/Colors.dart';

class SplashScreen extends StatefulWidget {
  static final String routeName = "/SplashScreen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Size size;
  Animation animate;
  AnimationController animatecontrol;

  @override
  void initState() {
    super.initState();
    animatecontrol =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animate = Tween<double>(begin: 0.0, end: 1).animate(animatecontrol);
    animatecontrol.forward();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        color: bgColor(),
        height: double.maxFinite,
        width: double.maxFinite,
        child: CustomPaint(
          painter: PathPainter(),
          child: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedBuilder(
                    animation: animatecontrol,
                    builder: (context, child) => Transform.translate(
                      offset: Offset(0, 0),
                      child: Opacity(
                        opacity: animate.value,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 35.0),
                              child: Image(
                                  image: AssetImage("images/logo/logo.png"),
                                  height: (MediaQuery.of(context).orientation ==
                                          Orientation.portrait)
                                      ? size.width * .25
                                      : MediaQuery.of(context).size.height *
                                          .2),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 35.0),
                              child: Text(
                                "SANTA",
                                style: TextStyle(
                                  color: greenColor(),
                                  fontSize: (MediaQuery.of(context)
                                              .orientation ==
                                          Orientation.portrait)
                                      ? size.width * .14
                                      : MediaQuery.of(context).size.height * .1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 35.0),
                              child: Text(
                                "ASSISTANT",
                                style: TextStyle(
                                  color: whiteColor(),
                                  fontSize: (MediaQuery.of(context)
                                              .orientation ==
                                          Orientation.portrait)
                                      ? size.width * .14
                                      : MediaQuery.of(context).size.height * .1,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: (MediaQuery.of(context).orientation ==
                            Orientation.portrait)
                        ? MediaQuery.of(context).size.width * .5
                        : MediaQuery.of(context).size.height * .40,
                    width: (MediaQuery.of(context).orientation ==
                            Orientation.portrait)
                        ? MediaQuery.of(context).size.width / 1.3
                        : MediaQuery.of(context).size.height * .9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(60)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 8,
                              blurRadius: 5)
                        ]),
                    child: Container(
                      height: (MediaQuery.of(context).orientation ==
                              Orientation.portrait)
                          ? MediaQuery.of(context).size.width * .14
                          : MediaQuery.of(context).size.height * .05,
                      decoration: BoxDecoration(
                          color: greenColor(),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(50))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomButton.blueBackground(
                              bgColor: stripColor(),
                              text: 'Assist me to Find an Address',
                              fontSize: (MediaQuery.of(context).orientation ==
                                      Orientation.portrait)
                                  ? MediaQuery.of(context).size.width * .05
                                  : MediaQuery.of(context).size.height * .05,
                              width: (MediaQuery.of(context).orientation ==
                                      Orientation.portrait)
                                  ? MediaQuery.of(context).size.width * .66
                                  : MediaQuery.of(context).size.height * 0.70,
                              height: (MediaQuery.of(context).orientation ==
                                      Orientation.portrait)
                                  ? MediaQuery.of(context).size.width * .11
                                  : MediaQuery.of(context).size.height * .10,
                              onTap: null),
                          SizedBox(
                            height: 20.0,
                          ),
                          CustomButton.blueBackground(
                              bgColor: stripColor(),
                              text: 'Let my Address be found',
                              fontSize: (MediaQuery.of(context).orientation ==
                                      Orientation.portrait)
                                  ? MediaQuery.of(context).size.width * .05
                                  : MediaQuery.of(context).size.height * .05,
                              width: (MediaQuery.of(context).orientation ==
                                      Orientation.portrait)
                                  ? MediaQuery.of(context).size.width * .66
                                  : MediaQuery.of(context).size.height * 0.70,
                              height: (MediaQuery.of(context).orientation ==
                                      Orientation.portrait)
                                  ? MediaQuery.of(context).size.width * .11
                                  : MediaQuery.of(context).size.height * .10,
                              onTap: null),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animatecontrol.dispose();
    super.dispose();
  }
}
