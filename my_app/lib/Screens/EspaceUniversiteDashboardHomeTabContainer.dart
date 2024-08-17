import 'package:flutter/material.dart';
import 'package:my_app/Screens/EspaceUniversitDashboardHomePage.dart';
import 'package:my_app/Screens/EspaceUniversiteProfile.dart';
import 'package:my_app/utils/CustomDropDown.dart';
import 'package:my_app/widgets/CustomIconButton.dart';
import 'package:my_app/widgets/CustomImageView.dart';

class EspaceUniversitDashboardHomeTabContainerScreen extends StatefulWidget {
  @override
  _EspaceUniversitDashboardHomeTabContainerScreenState createState() =>
      _EspaceUniversitDashboardHomeTabContainerScreenState();
}

class _EspaceUniversitDashboardHomeTabContainerScreenState
    extends State<EspaceUniversitDashboardHomeTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
    tabviewController.addListener(() {
      setState(() {
        print(tabviewController.index);
        _currentIndex = tabviewController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFF9EB),
        body: Column(
          children: [
            SizedBox(height: 76.0),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 36.0),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: "assets/images/menu_1.svg",
                    height: 22.0,
                    width: 28.0,
                  ),
                  CustomImageView(
                    imagePath: "assets/images/logo.svg",
                    height: 48.0,
                    width: 70.0,
                    margin: EdgeInsets.only(left: 14.0),
                  ),
                  Spacer(),
                  CustomDropDown(
                    width: 44.0,
                    hintText: "fr",
                    items: [], // Update with actual items later
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(4.0, 8.0, 2.0, 8.0),
                    ),
                    prefixConstraints: BoxConstraints(),
                    maxHeight: 34.0,
                    contentPadding: EdgeInsets.fromLTRB(4.0, 8.0, 12.0, 8.0),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CustomIconButton(
                height: 34.0,
                width: 32.0,
                padding: EdgeInsets.all(4.0),
                decoration: IconButtonStyleHelper.fillPrimaryTL5,
                child: CustomImageView(
                  imagePath: "assets/images/bell.svg",
                  height: 24.0,
                  width: 24.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.0,
                      width: double.infinity,
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(width: 3.0, color: Color(0xffFFB703)),
                          insets: EdgeInsets.symmetric(horizontal: 21.0),
                        ),
                        tabs: [
                          Tab(
                            child: CustomImageView(
                              imagePath: "assets/images/grid.svg",
                              height: 27.0,
                              width: 27.0,
                              color: _currentIndex == 0
                                  ? Color(0xffFFB703)
                                  : Colors.grey,
                            ),
                          ),
                          Tab(
                            child: CustomImageView(
                              imagePath: "assets/images/settings.svg",
                              height: 27.0,
                              width: 27.0,
                              color: _currentIndex == 1
                                  ? Color(0xffFFB703)
                                  : Colors.grey,
                            ),
                          ),
                          Tab(
                            child: CustomImageView(
                              imagePath: "assets/images/book.svg",
                              height: 27.0,
                              width: 27.0,
                              color: _currentIndex == 2
                                  ? Color(0xffFFB703)
                                  : Colors.grey,
                            ),
                          ),
                          Tab(
                            child: CustomImageView(
                              imagePath: "assets/images/lock.svg",
                              height: 27.0,
                              width: 27.0,
                              color: _currentIndex == 3
                                  ? Color(0xffFFB703)
                                  : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          EspaceUniversitDashboardHomePage(),
                          EspaceUniversiteProfile(),
                          EspaceUniversitDashboardHomePage(),
                          EspaceUniversitDashboardHomePage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
