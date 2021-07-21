import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum ScreenType { DESKTOP, HANDSET, TABLET, WATCH }

class DeviceOS {
  static bool isIOS = Platform.isIOS;
  static bool isAndroid = Platform.isAndroid;
  static bool isMacOS = Platform.isMacOS;
  static bool isLinux = Platform.isLinux;
  static bool isWindows = Platform.isWindows;

  static bool isWeb = kIsWeb;

  static bool get isDesktop => isWindows || isMacOS || isLinux;

  static bool get isMobile => isAndroid || isIOS;

  static bool get isDesktopOrWeb => isDesktop || isWeb;

  static bool get isMobileOrWeb => isMobile || isWeb;
}

class FormFactor {
  static double desktop = 900;
  static double tablet = 600;
  static double handset = 300;
}

class DeviceScreen {
  static ScreenType get(context) {
    double shortestSide = MediaQuery.of(context).size.shortestSide;
    if (shortestSide > FormFactor.desktop) return ScreenType.DESKTOP;
    if (shortestSide > FormFactor.tablet) return ScreenType.TABLET;
    if (shortestSide > FormFactor.handset) return ScreenType.HANDSET;
    return ScreenType.WATCH;
  }

  static bool isTablet(context) => get(context) == ScreenType.TABLET;

  static bool isMonitor(context) => get(context) == ScreenType.DESKTOP;

  static bool isHandset(context) => get(context) == ScreenType.HANDSET;

  static bool isWatch(context) => get(context) == ScreenType.WATCH;
}
