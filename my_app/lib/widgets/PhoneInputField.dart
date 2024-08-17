import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneInputField extends StatelessWidget {
  const PhoneInputField({
    super.key,
    required TextEditingController controller,
    required this.phoneLabel,
  }) : controller = controller;

  final TextEditingController controller;
  final String phoneLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          phoneLabel,
          style: TextStyle(
            color: Color(0xFF023047), // Set the label color
            fontSize: 16.0, // Set the label font size
            fontWeight: FontWeight.bold, // Optionally set the font weight
          ),
        ),
        SizedBox(height: 8.0),
        IntlPhoneField(
          controller: controller,
          decoration: InputDecoration(
            hintText: phoneLabel, // Optional placeholder text
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: BorderSide(
                color: Colors.grey, // Set the border color
                width: 0.7,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: BorderSide(
                color: Color.fromARGB(
                    255, 66, 67, 67), // Darker color when focused
                width: 1.0,
              ),
            ),
            filled: true, // Enable fill color
            fillColor: Color(0xFFF2F2F2),
          ),
          initialCountryCode: 'TN', // Default country code
          onChanged: (phone) {
            print(phone.completeNumber); // Complete phone number
          },
        ),
      ],
    );
  }
}
