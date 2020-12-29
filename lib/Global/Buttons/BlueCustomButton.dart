import 'package:flutter/material.dart';
import 'package:santa_assistant/Global/Colors/Colors.dart';

class CustomButton extends StatelessWidget {
  final bool blueBg;
  final VoidCallback onTap;
  final String text;
  final double width;
  final double height;
  final double fontSize;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final Color bgColor;
  final double elevation;
  final Widget prefix;
  final FontWeight fontWeight;
  CustomButton.blueBackground({
    this.text,
    this.width,
    this.height,
    this.onTap,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.bgColor = Colors.white,
    this.elevation = 5,
    this.prefix,
    this.fontWeight = FontWeight.bold,
  }) : blueBg = true;
  CustomButton.greenBackground({
    this.text,
    this.width,
    this.height,
    this.onTap,
    this.fontSize,
    this.padding = const EdgeInsets.all(12),
    this.textStyle,
    this.bgColor = Colors.white,
    this.elevation = 5,
    this.prefix,
    this.fontWeight = FontWeight.bold,
  }) : blueBg = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              child: Text(
                text,
                style: textStyle ??
                    TextStyle(
                      color: blueBg ? whiteColor() : stripColor(),
                      fontSize: fontSize ?? 24,
                      fontWeight: fontWeight,
                    ),
              ),
            ),
            if (prefix != null)
              Positioned(
                left: 16,
                top: 0,
                bottom: 0,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: prefix,
                ),
              ),
          ],
        ),
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
          color: blueBg ? bgColor : null,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: elevation,
              offset: Offset(elevation, elevation),
            ),
          ],
        ),
      ),
    );
  }
}
