import 'package:flutter/material.dart';

extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineOnPrimaryContainerTL5 =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(
          color: Colors.white,
          width: 1,
        ),
      );
}

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.readonly = false,
    this.onTap,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(key: key);

  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final EdgeInsets? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final bool? obscureText;
  final bool? readonly;
  final VoidCallback? onTap;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget(context),
          )
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      decoration: boxDecoration,
      child: TextFormField(
        scrollPadding: scrollPadding ??
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        controller: controller,
        focusNode: focusNode,
        onTap: () {
          onTap?.call();
        },
        autofocus: autofocus!,
        style: textStyle ?? Theme.of(context).textTheme.bodySmall,
        obscureText: obscureText!,
        readOnly: readonly!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          hintText: hintText ?? "",
          hintStyle: hintStyle ?? Theme.of(context).textTheme.bodyMedium,
          prefixIcon: prefix,
          prefixIconConstraints: prefixConstraints,
          suffixIcon: suffix,
          suffixIconConstraints: suffixConstraints,
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.fromLTRB(16, 14, 16, 14), // Adjust padding
          fillColor: fillColor ?? Colors.orange[50],
          filled: filled,
          border: borderDecoration ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(4), // Updated radius
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  width: 1,
                ),
              ),
          enabledBorder: borderDecoration ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(4), // Updated radius
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  width: 1,
                ),
              ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4), // Updated radius
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
