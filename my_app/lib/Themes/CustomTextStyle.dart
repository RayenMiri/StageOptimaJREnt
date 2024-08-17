import 'package:flutter/material.dart';

extension PoppinsTextStyle on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families.
class CustomTextStyles {
  // Label text style
  static TextStyle labelLargeSecondaryContainer(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Theme.of(context).colorScheme.secondaryContainer,
            fontWeight: FontWeight.w700,
          );

  static TextStyle labelLargeSecondaryContainerBold(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Theme.of(context).colorScheme.secondaryContainer,
            fontSize: 13.0,
            fontWeight: FontWeight.w700,
          );

  static TextStyle labelLargeYellow50(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!.copyWith(
            color: const Color(0xffFFB703),
          );

  static TextStyle labelLargeYellow50Bold(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          );

  static TextStyle labelLargeYellow588Bold(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!.copyWith(
            color: const Color(0xffFFB703),
            fontSize: 14.0,
            fontWeight: FontWeight.w700,
          );

  static TextStyle labelMediumPrimary(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w700,
          );

  static TextStyle labelMediumPrimarySemiBold(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w600,
          );

  static TextStyle labelMediumYellow50(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!.copyWith(
            color: const Color(0xffFFB703),
            fontWeight: FontWeight.w700,
          );
}
