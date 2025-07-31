import 'package:flutter/material.dart';

abstract final class Dimens {
  const Dimens();

  // static const paddingHorizontal = 20.0;
  // static const paddingVertical = 24.0;

  // static const paddingCard = 16.0;
  // static const paddingCardHorizontal = 12.0;
  // static const paddingCardVertical = 8.0;
  // static const paddingButton = 12.0;
  // static const paddingButtonHorizontal = 16.0;
  // static const paddingButtonVertical = 8.0;
  // static const paddingTextField = 12.0;
  // static const textCardHeightFactor = 0.1;
  // static const textCardWidthFactor = 0.2;

  double get paddingScreenHorizontal;

  double get paddingScreenVertical;

  static const desktop = _DesktopDimens();
  static const mobile = _MobileDimens();

  static EdgeInsets paddingScreen(BuildContext context) => EdgeInsets.symmetric(
    horizontal: Dimens.of(context).paddingScreenHorizontal,
    vertical: Dimens.of(context).paddingScreenVertical,
  );

  static double projectCardWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * 0.8;
  static double projectCardHeight(BuildContext context) =>
      MediaQuery.of(context).size.height * 0.6;

  factory Dimens.of(BuildContext context) {
    switch (MediaQuery.of(context).size.width) {
      case < 600:
        return Dimens.mobile;
      case < 1200:
        return Dimens.desktop;
      default:
        return Dimens.desktop;
    }
  }
}

final class _DesktopDimens extends Dimens {
  @override
  final double paddingScreenHorizontal = 32.0;

  @override
  final double paddingScreenVertical = 16.0;

  const _DesktopDimens();
}

final class _MobileDimens extends Dimens {
  @override
  final double paddingScreenHorizontal = 32.0;

  @override
  final double paddingScreenVertical = 16.0;

  const _MobileDimens();
}
