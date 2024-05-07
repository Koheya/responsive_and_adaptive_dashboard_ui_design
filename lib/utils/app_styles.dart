import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w400,
      color: const Color(0xFF064060),
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w700,
      color: const Color(0xFF064060),
    );
  }

  static TextStyle styleMeduim16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w500,
      color: const Color(0xFF064061),
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: const Color(0xFF064061),
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: const Color(0xFF4EB7F2),
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: const Color(0xFFAAAAAA),
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      color: const Color(0xFFFFFFFF),
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.of(context).size.width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 2500;
  }
}
