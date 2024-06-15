import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:knovator_interview_task/utils/constants/color_const.dart';

TextFormField textformfield(
  TextEditingController ctrl, {
  String? hinttxt,
  List<TextInputFormatter>? inputFormate,
  bool? obscurity,
  prefixicn,
  suffixicn,
  int? maxLength,
  TextInputType? keyboardtype,
  Function(String)? onchanged,
  String? Function(String?)? validator,
  String? errortext,
  TextStyle? hintTextStyle,
  Color? enabledBorderColor,
  Color? focusedBorderColor,
  Color? errorBorderColor,
  BorderRadius? focusedBorderRadius,
  BorderRadius? enabledBorderRadius,
  BorderRadius? errorBorderRadius,
  int? maxLines,
}) {
  return TextFormField(
    obscureText: obscurity ?? false,
    controller: ctrl,
    obscuringCharacter: "*",
    maxLength: maxLength,
    keyboardType: keyboardtype,
    inputFormatters: inputFormate,
    maxLines: maxLines ?? 1,
    decoration: InputDecoration(
      errorText: errortext,
      prefixIcon: prefixicn,
      suffixIcon: suffixicn,
      hintText: hinttxt ?? '',
      hintStyle: hintTextStyle,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: focusedBorderColor ?? purpleClr,
          width: 3,
        ),
        borderRadius: focusedBorderRadius ?? BorderRadius.circular(15),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: errorBorderColor ?? redClr,
          width: 1.5,
        ),
        borderRadius: errorBorderRadius ?? BorderRadius.circular(15),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: errorBorderColor ?? redClr,
          width: 1.5,
        ),
        borderRadius: errorBorderRadius ?? BorderRadius.circular(15),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: enabledBorderColor ?? black45Clr,
          width: 1.5,
        ),
        borderRadius: enabledBorderRadius ?? BorderRadius.circular(15),
      ),
    ),
    validator: validator,
    onChanged: onchanged,
  );
}
