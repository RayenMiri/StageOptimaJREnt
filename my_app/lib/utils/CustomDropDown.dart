import 'package:flutter/material.dart';
import 'package:my_app/utils/SelectionPopUpModel.dart';
import 'package:my_app/Themes/CustomTextStyle.dart';

extension DropDownStyleHelper on CustomDropDown {
  static OutlineInputBorder outlineOnPrimaryContainer(BuildContext context) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
          width: 1.0,
        ),
      );
}

class CustomDropDown extends StatelessWidget {
  final Alignment? alignment;
  final double? width;
  final BoxDecoration? boxDecoration;
  final FocusNode? focusNode;
  final Widget? icon;
  final bool autofocus;
  final TextStyle? textStyle;
  final String? hintText;
  final TextStyle? hintStyle;
  final List<SelectionPopupModel>? items;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool filled;
  final FormFieldValidator<SelectionPopupModel>? validator;
  final Function(SelectionPopupModel)? onChanged;
  final double? maxHeight; // New field for max height

  CustomDropDown({
    Key? key,
    this.alignment,
    this.width,
    this.boxDecoration,
    this.focusNode,
    this.icon,
    this.autofocus = false,
    this.textStyle,
    this.hintText,
    this.hintStyle,
    this.items,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
    this.onChanged,
    this.maxHeight, // Initialize the new maxHeight field
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: dropDownWidget(context))
        : dropDownWidget(context);
  }

  Widget dropDownWidget(BuildContext context) => Container(
        width: width ?? double.infinity,
        decoration: boxDecoration,
        child: DropdownButtonFormField<SelectionPopupModel>(
          focusNode: focusNode,
          icon: icon,
          autofocus: autofocus,
          style: textStyle ?? Theme.of(context).textTheme.bodySmall,
          decoration: decoration(context),
          validator: validator,
          onChanged: (value) {
            if (value != null) {
              onChanged?.call(value);
            }
          },
          items: items?.map((SelectionPopupModel item) {
            return DropdownMenuItem<SelectionPopupModel>(
              value: item,
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
                style: hintStyle ??
                    CustomTextStyles.labelMediumYellow50
                        as TextStyle?, // Casted to avoid errors
              ),
            );
          }).toList(),
          menuMaxHeight: maxHeight,
        ),
      );

  InputDecoration decoration(BuildContext context) => InputDecoration(
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding:
            contentPadding ?? EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 8.0),
        fillColor: fillColor ?? Theme.of(context).colorScheme.primary,
        filled: filled,
        border: borderDecoration ??
            DropDownStyleHelper.outlineOnPrimaryContainer(context),
        focusedBorder: (borderDecoration ??
                DropDownStyleHelper.outlineOnPrimaryContainer(context))
            .copyWith(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 1.0,
          ),
        ),
      );
}
