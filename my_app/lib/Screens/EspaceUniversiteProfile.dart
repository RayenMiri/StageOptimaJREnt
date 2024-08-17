import 'package:flutter/material.dart';
import 'package:my_app/widgets/CustomElevatedButton.dart';
import 'package:my_app/widgets/Footer.dart';
import 'package:my_app/widgets/CustomIconButton.dart';
import 'package:my_app/widgets/CustomImageView.dart';
import 'package:my_app/widgets/CustomTextFormField.dart';
import 'package:my_app/utils/AppDecoration.dart';
import 'package:my_app/utils/BorderRadius.dart';
import 'package:my_app/utils/CountryClass.dart';
import 'package:my_app/utils/CountryPickerUtils.dart';
import 'package:my_app/widgets/PhoneInputField.dart';

class EspaceUniversiteProfile extends StatefulWidget {
  const EspaceUniversiteProfile({Key? key}) : super(key: key);

  @override
  State<EspaceUniversiteProfile> createState() =>
      _EspaceUniversiteProfileState();
}

class _EspaceUniversiteProfileState extends State<EspaceUniversiteProfile> {
  // Controllers for the form fields
  final TextEditingController persononeController = TextEditingController();
  final TextEditingController fullnameoneController = TextEditingController();
  final TextEditingController addressoneController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController tunisiaoneController = TextEditingController();
  final TextEditingController biographyoneController = TextEditingController();

  // Current country selection
  Country? selectedCountry;

  @override
  void initState() {
    super.initState();
    // Initialize the country based on the default phone code
    selectedCountry = CountryPickerUtils.getCountryByPhoneCode('216');
  }

  @override
  void dispose() {
    // Dispose controllers when the widget is removed from the widget tree
    persononeController.dispose();
    fullnameoneController.dispose();
    addressoneController.dispose();
    phoneNumberController.dispose();
    tunisiaoneController.dispose();
    biographyoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFF9EB),
        resizeToAvoidBottomInset: false,
        body: Form(
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
                          margin: EdgeInsets.symmetric(horizontal: 48.0),
                          child: Column(
                            children: [
                              Text(
                                "Profile",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.15,
                                  color: Color(0xffFFB703),
                                ),
                              ),
                              SizedBox(height: 30.0),
                              SizedBox(
                                height: 110.0,
                                width: double.infinity,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        decoration: AppDecoration.outlinePrimary
                                            .copyWith(
                                          color: Color(0xffFFF3D3),
                                          border: Border.all(
                                              color: Color(0xffFFB703),
                                              width: 2.0),
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder2,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: 76.0,
                                              decoration: AppDecoration
                                                  .outlinePrimary1
                                                  .copyWith(
                                                color: Colors.white,
                                                border: Border.all(
                                                    color: Color(0xffFFB703),
                                                    width: 2.0),
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder38,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  SizedBox(height: 24.0),
                                                  CustomImageView(
                                                    imagePath:
                                                        "assets/images/persone_1.svg",
                                                    height: 22.0,
                                                    width: 22.0,
                                                  ),
                                                  SizedBox(height: 6.0),
                                                  CustomIconButton(
                                                    height: 22.0,
                                                    width: 22.0,
                                                    padding:
                                                        EdgeInsets.all(6.0),
                                                    decoration:
                                                        IconButtonStyleHelper
                                                            .outlinePrimary,
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: CustomImageView(
                                                      imagePath:
                                                          "assets/images/editprofile.svg",
                                                    ),
                                                  ),
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 28.0,
                        ),
                        _buildNameSection(context),
                        SizedBox(height: 12.0),
                        _buildFullNameSection(context),
                        SizedBox(height: 12.0),
                        _buildAddressSection(context),
                        SizedBox(height: 12.0),
                        _buildPhoneInputSection(context),
                        SizedBox(height: 12.0),
                        _buildCountrySection(context),
                        SizedBox(height: 12.0),
                        _buildBiographySection(context),
                        SizedBox(height: 40.0),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Column(
                            children: [
                              CustomElevatedButton(
                                  backgroundColor: Color(0xffFFB703),
                                  height: 36.0,
                                  text: "Modifier les inforamtions",
                                  buttonTextStyle:
                                      TextStyle(color: Color(0xffffffff))),
                            ],
                          ),
                        ),
                        SizedBox(height: 29.0),
                        Footer(),
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

  /// Section Widget
  Widget _buildNameSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 61.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Libellé",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(height: 4.0),
          CustomTextFormField(
            borderDecoration: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
            ),
            controller: persononeController,
            hintText: "Libellé",
            suffix: Container(
              margin: EdgeInsets.fromLTRB(34.0, 16.0, 14.0, 16.0),
              child: CustomImageView(
                imagePath: "assets/images/fieldicon.svg",
                height: 16.0,
                width: 16.0,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.0,
            ),
            contentPadding: EdgeInsets.fromLTRB(18.0, 14.0, 14.0, 14.0),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 58.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text(
              "Nom Complet",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 4.0),
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: CustomTextFormField(
              borderDecoration: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
              ),
              controller: fullnameoneController,
              hintText: "Nom Complet",
              suffix: Container(
                margin: EdgeInsets.fromLTRB(34.0, 16.0, 14.0, 16.0),
                child: CustomImageView(
                  imagePath: "assets/images/fieldicon.svg",
                  height: 16.0,
                  width: 16.0,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 48.0,
              ),
              contentPadding: EdgeInsets.fromLTRB(10.0, 14.0, 14.0, 14.0),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 58.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text(
              "Adresse",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 4.0),
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: CustomTextFormField(
              borderDecoration: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
              ),
              controller: addressoneController,
              hintText: "Adresse",
              suffix: Container(
                margin: EdgeInsets.fromLTRB(34.0, 16.0, 14.0, 16.0),
                child: CustomImageView(
                  imagePath: "assets/images/location.svg",
                  height: 12.0,
                  width: 12.0,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 48.0,
              ),
              contentPadding: EdgeInsets.fromLTRB(10.0, 14.0, 14.0, 14.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhoneInputSection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 58.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text(
              "Telephone",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 4.0),
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: PhoneInputField(
              controller: phoneNumberController,
              phoneLabel: "Numéro de téléphone",
            ),
          ),
        ],
      ),
    );
  }

  // Section Widget
  Widget _buildCountrySection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 58.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text(
              "Country",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 4.0),
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: DropdownButtonFormField<Country>(
              value: selectedCountry,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                hintText: 'Select Country',
              ),
              onChanged: (Country? newCountry) {
                setState(() {
                  selectedCountry = newCountry;
                });
              },
              items: CountryPickerUtils.getAllCountries()
                  .map<DropdownMenuItem<Country>>((Country country) {
                return DropdownMenuItem<Country>(
                  value: country,
                  child: Text(country.name),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBiographySection(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 58.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: Text(
              "Biography",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 4.0),
          Padding(
            padding: EdgeInsets.only(left: 4.0),
            child: CustomTextFormField(
              width: double.infinity,
              borderDecoration: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
              ),
              controller: biographyoneController,
              maxLines: 10,
              hintText: "Entrez Biographie ici",
              suffixConstraints: BoxConstraints(
                maxHeight: 48.0,
              ),
              contentPadding: EdgeInsets.fromLTRB(10.0, 14.0, 14.0, 14.0),
            ),
          ),
        ],
      ),
    );
  }
}
