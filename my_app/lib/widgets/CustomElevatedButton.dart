import 'package:flutter/material.dart';
import 'BaseButton.dart';
import 'package:my_app/Themes/CustomTextStyle.dart';

class CustomElevatedButton extends BaseButton {
  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final Color? backgroundColor; // Background color parameter
  final BorderRadiusGeometry? borderRadius; // Border radius parameter

  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    this.backgroundColor, // Initialize background color
    this.borderRadius, // Initialize border radius
    EdgeInsets? margin,
    VoidCallback? onPressed,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildElevatedButtonWidget(context),
          )
        : _buildElevatedButtonWidget(context);
  }

  Widget _buildElevatedButtonWidget(BuildContext context) {
    return Container(
      height: this.height ?? 28.0,
      width: this.width ?? double.infinity,
      margin: margin,
      decoration: decoration,
      child: ElevatedButton(
        style: buttonStyle ??
            ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                  backgroundColor ?? Colors.white), //default bg color
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: borderRadius ??
                      BorderRadius.circular(8.0), // default border radius
                ),
              ),
            ),
        onPressed: isDisabled ?? false ? null : onPressed ?? () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leftIcon ?? const SizedBox.shrink(),
            Text(
              text,
              style: buttonTextStyle ??
                  CustomTextStyles.labelLargeYellow50Bold(context),
            ),
            rightIcon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
