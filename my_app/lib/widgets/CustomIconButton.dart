import 'package:flutter/material.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimaryTL5 => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      );

  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Color(0xffFFB703),
          width: 2.0,
        ),
      );
}

class CustomIconButton extends StatelessWidget {
  final Key? key;
  final Alignment? alignment;
  final double? height;
  final double width;
  final BoxDecoration? decoration;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Widget? child;

  CustomIconButton({
    this.key,
    this.alignment,
    this.height,
    required this.width,
    this.decoration,
    this.padding,
    this.onTap,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 56.0,
        width: width,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                color: const Color(0xffFFB703), // Background color
                borderRadius: BorderRadius.circular(28.0),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}
