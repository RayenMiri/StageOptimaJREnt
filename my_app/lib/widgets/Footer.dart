import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Circular Image Container
          Container(
            width: 57,
            height: 57,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFFB703),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/footerInside.png", // Replace with your image path
                ),
                // fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 7), // Spacer between image and text

          // Text and Background Container
          Container(
            width: 125.50,
            height: 35,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/besoinDaide.png", // Replace with your image path
                ),
                // fit: BoxFit.cover,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Besoin d’aide ?',
                    style: TextStyle(
                      color: Color(0xFF023047),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10), // Adjust the spacing between the texts
                  Text(
                    '👋',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
