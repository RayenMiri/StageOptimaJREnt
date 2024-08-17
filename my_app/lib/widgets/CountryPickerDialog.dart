import 'package:flutter/material.dart';
import 'package:my_app/utils/CountryClass.dart';

class CountryPickerDialog extends StatelessWidget {
  final List<Country> countries;
  final ValueChanged<Country> onValuePicked;
  final String title;
  final bool isSearchable;
  final InputDecoration searchInputDecoration;
  final String hintText;
  final TextStyle hintStyle;
  final Widget Function(Country country) itemBuilder;

  CountryPickerDialog({
    required this.countries,
    required this.onValuePicked,
    required this.title,
    this.isSearchable = false,
    required this.searchInputDecoration,
    required this.hintText,
    required this.hintStyle,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isSearchable)
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                decoration: searchInputDecoration.copyWith(
                  hintText: hintText,
                  hintStyle: hintStyle,
                ),
              ),
            ),
          Expanded(
            child: ListView(
              children: countries
                  .map((country) => GestureDetector(
                        onTap: () {
                          onValuePicked(country);
                          Navigator.pop(context);
                        },
                        child: itemBuilder(country),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
