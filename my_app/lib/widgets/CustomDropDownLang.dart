import 'package:flutter/material.dart';

class CustomDropDownLang extends StatefulWidget {
  final double width;
  final String hintText;
  final double maxHeight;
  final EdgeInsets contentPadding;

  CustomDropDownLang({
    required this.width,
    required this.hintText,
    required this.maxHeight,
    required this.contentPadding,
  });

  @override
  _CustomDropDownLangState createState() => _CustomDropDownLangState();
}

class _CustomDropDownLangState extends State<CustomDropDownLang> {
  String selectedLanguage = 'Fr'; // Default selected language
  Map<String, String> languageFlags = {
    'Fr': 'assets/images/fr.png',
    'En': 'assets/images/en.png',
  }; // Language flags

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.0,
      width: widget.width,
      padding: widget.contentPadding,
      decoration: BoxDecoration(
        color: Color(0xffFFB703),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: DropdownButton<String>(
        dropdownColor: Color(0xffFFB703),
        borderRadius: BorderRadius.circular(10.0),
        menuWidth: 80.0,
        value: selectedLanguage,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 16,
        elevation: 14,
        style: TextStyle(color: Colors.white, fontSize: 13),
        onChanged: (String? newValue) {
          setState(() {
            selectedLanguage = newValue!;
          });
        },
        items: languageFlags.keys.map<DropdownMenuItem<String>>((String key) {
          return DropdownMenuItem<String>(
            value: key,
            child: Row(
              children: [
                Image.asset(
                  languageFlags[key]!,
                  width: 16.0,
                  height: 16.0,
                ),
                SizedBox(width: 8.0),
                Text(key),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
