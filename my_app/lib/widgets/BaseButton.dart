import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle; // Fixed camelCase naming convention
  final TextStyle?
      buttonTextStyle; // Fixed camelCase naming convention and corrected type name
  final bool? isDisabled;
  final double? height;
  final double? width;
  final EdgeInsets? margin;
  final Alignment? alignment;

  const BaseButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.buttonTextStyle,
    this.isDisabled,
    this.height,
    this.width,
    this.margin,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink(); // Placeholder widget
  }
}
