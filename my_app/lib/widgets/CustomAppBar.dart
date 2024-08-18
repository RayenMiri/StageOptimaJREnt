import 'package:flutter/material.dart';
import 'package:my_app/widgets/CustomDropDownLang.dart';
import 'package:my_app/widgets/CustomImageView.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final double topPadding;

  CustomAppBar({this.height = 76.0, this.topPadding = 20.0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29.0),
        child: Row(
          children: [
            CustomImageView(
              imagePath: "assets/images/menu_1.svg",
              height: 22.0,
              width: 28.0,
            ),
            SizedBox(width: 14.0),
            CustomImageView(
              imagePath: "assets/images/logo.png",
              height: 48.0,
              width: 70.0,
            ),
            Spacer(),
            CustomDropDownLang(
              width: 74.6,
              hintText: "Fr",
              maxHeight: 34.0,
              contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            ),
            SizedBox(width: 10.0),
            Container(
              width: 32.0,
              height: 34.0,
              decoration: BoxDecoration(
                color: Color(0xffFFB703),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: IconButton(
                icon: CustomImageView(
                  imagePath: "assets/images/bell.svg",
                  height: 24.0,
                  width: 24.0,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height + topPadding);
}
