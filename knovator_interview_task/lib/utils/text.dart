import 'package:flutter/material.dart';
import 'package:knovator_interview_task/utils/constants/color_const.dart';

Text text(
  String txt, {
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  int? maxLine,
  TextOverflow? overFlow,
  TextAlign? textAlign,
  TextDecoration? decoration,
  Color? decorationColor,
  double? heightOfText,
}) {
  return Text(
    txt,
    textAlign: textAlign ?? TextAlign.start,
    maxLines: maxLine ?? 1,
    overflow: overFlow ?? TextOverflow.ellipsis,
    style: TextStyle(
      color: color ?? blackClr,
      fontSize: fontSize ?? 15.0,
      fontWeight: fontWeight ?? FontWeight.w400,
      decoration: decoration ?? TextDecoration.none,
      decorationColor: decorationColor ?? blackClr,
      height: heightOfText ?? 1.0,
    ),
  );
}
