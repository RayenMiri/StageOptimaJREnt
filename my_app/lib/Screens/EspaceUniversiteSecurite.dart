import 'package:flutter/material.dart';
import 'package:my_app/widgets/CustomElevatedButton.dart';
import 'package:my_app/widgets/CustomTextFormField.dart';
import 'package:my_app/widgets/CustomImageView.dart';
import 'package:my_app/widgets/Footer.dart';

class EspaceUniversitSecuritPage extends StatefulWidget {
  @override
  _EspaceUniversitSecuritPageState createState() =>
      _EspaceUniversitSecuritPageState();
}

class _EspaceUniversitSecuritPageState extends State<EspaceUniversitSecuritPage>
    with AutomaticKeepAliveClientMixin<EspaceUniversitSecuritPage> {
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFF9EB),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 4.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Securité",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(color: Color(0xffFFB703)),
                                ),
                              ),
                              SizedBox(height: 26.0),
                              Padding(
                                padding: EdgeInsets.only(right: 110.0),
                                child: Text(
                                  "Changer mot de passe",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                          color: Color(0xff219EBC),
                                          fontSize: 16.0),
                                ),
                              ),
                              SizedBox(height: 12.0),
                              _buildOldPasswordSection(context),
                              SizedBox(height: 12.0),
                              _buildNewPasswordSection(context),
                              SizedBox(height: 36.0),
                              Container(
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 48.0),
                                child: Column(
                                  children: [
                                    CustomElevatedButton(
                                        backgroundColor: Color(0xffFFB703),
                                        height: 36.0,
                                        text: "Changer Mot de Passe",
                                        margin: EdgeInsets.only(right: 4.0),
                                        buttonTextStyle:
                                            TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 100.0,
                              ),
                              Footer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOldPasswordSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 58.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Entre votre encien",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(height: 10.0),
          CustomTextFormField(
            borderDecoration: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
            ),
            controller: _oldPasswordController,
            hintText: "encien",
            suffix: Container(
              margin: EdgeInsets.fromLTRB(34.0, 16.0, 14.0, 16.0),
              child: CustomImageView(
                imagePath: "assets/images/fieldicon.svg",
                height: 16.0,
                width: 16.0,
              ),
            ),
            contentPadding: EdgeInsets.fromLTRB(10.0, 14.0, 14.0, 14.0),
          ),
        ],
      ),
    );
  }

  Widget _buildNewPasswordSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 58.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Entrez votre nouveau",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(height: 10.0),
          CustomTextFormField(
            borderDecoration: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
            ),
            controller: _newPasswordController,
            hintText: "nouveau",
            textInputAction: TextInputAction.done,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(34.0, 16.0, 14.0, 16.0),
              child: CustomImageView(
                imagePath: "assets/images/fieldicon.svg",
                height: 16.0,
                width: 16.0,
              ),
            ),
            contentPadding: EdgeInsets.fromLTRB(18.0, 14.0, 14.0, 14.0),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    super.dispose();
  }
}
