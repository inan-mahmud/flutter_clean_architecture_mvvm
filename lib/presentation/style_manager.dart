import 'package:flutter/material.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

TextStyle getRegularTextStyle(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.regular, color);
}

TextStyle getLightTextStyle(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.light, color);
}

TextStyle getBoldTextStyle(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.bold, color);
}

TextStyle getSemiBoldTextStyle(
    {double fontSize = FontSize.s18, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.semiBold, color);
}

TextStyle getMediumTextStyle(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstants.fontFamily, FontWeightManager.medium, color);
}
