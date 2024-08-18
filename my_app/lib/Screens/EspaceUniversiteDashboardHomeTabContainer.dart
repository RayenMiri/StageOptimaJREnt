import 'package:flutter/material.dart';
import 'package:my_app/Screens/EspaceUniversitDashboardHomePage.dart';
import 'package:my_app/Screens/EspaceUniversitMesInformations.dart';
import 'package:my_app/Screens/EspaceUniversiteProfile.dart';
import 'package:my_app/Screens/EspaceUniversiteSecurite.dart';
import 'package:my_app/widgets/CustomAppBar.dart';
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
        _currentIndex = tabviewController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 76.0,
          topPadding: 76.0,
        ),
        backgroundColor: Color(0xffFFF9EB),
        body: Column(
          children: [
            SizedBox(height: 30.0),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 40.0,
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
                        EspaceUniversitMesFormationsPage(),
                        EspaceUniversitSecuritPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
