import 'package:flutter/material.dart';
import 'package:my_app/utils/Fromation.dart';
import 'package:my_app/widgets/CustomElevatedButton.dart';
import 'package:my_app/utils/CustomDropDown.dart';
import 'package:my_app/widgets/CustomTextFormfield.dart';
import 'package:my_app/Themes/CustomTextStyle.dart';
import 'package:my_app/utils/SelectionPopUpModel.dart';
import 'package:my_app/widgets/Footer.dart';

class EspaceUniversitMesFormationsPage extends StatefulWidget {
  const EspaceUniversitMesFormationsPage({Key? key}) : super(key: key);

  @override
  State<EspaceUniversitMesFormationsPage> createState() =>
      EspaceUniversitMesFormationsPageState();
}

class EspaceUniversitMesFormationsPageState
    extends State<EspaceUniversitMesFormationsPage>
    with AutomaticKeepAliveClientMixin<EspaceUniversitMesFormationsPage> {
  // Define TextEditingControllers
  final TextEditingController inputoneController = TextEditingController();
  final TextEditingController groupelevenController = TextEditingController();
  final TextEditingController grouptenController = TextEditingController();
  final TextEditingController inputthreeController = TextEditingController();

  final List<SelectionPopupModel> dropdownItems = [
    SelectionPopupModel(id: 1, title: "Option 1", value: "Option 1"),
    SelectionPopupModel(id: 2, title: "Option 2", value: "Option 2"),
    SelectionPopupModel(id: 3, title: "Option 3", value: "Option 3"),
  ];
  SelectionPopupModel? selectedDropdownItem;

  // State variables for button color and section visibility
  Color _add_bg_color = Color(0xffFFB703);
  Color _list_bg_color = Color(0xffFFB703);
  bool _isFormVisible = true;

  // Example of a dummy formation
  final List<Formation> formations = [
    Formation(
      name: "Bachelor Chef de Projet",
      duration: "3 mois",
      price: "2000 DT",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at ultricies augue. Vivamus mollis eu erat non venenatis. Vivamus tincidunt urna dui, sit amet gravida risus varius feugiat. Vestibulum euismod elit nec vulputate efficitur. Pellentesque sollicitudin leo ac pretium gravida. Nunc eget mattis nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam ac ante cursus risus placerat lobortis eget sit amet nulla. Curabitur volutpat accumsan nisl vel eleifend.",
      level: "Avec Bac",
    ),
    Formation(
      name: "Master en Informatique",
      duration: "2 ans",
      price: "5000 DT",
      description:
          "Nunc accumsan, diam id commodo eleifend, lectus est hendrerit quam, nec vulputate eros dolor quis sem. Vivamus vulputate, neque vel tempus auctor, sapien turpis accumsan urna, et placerat leo elit vitae arcu. Vivamus rhoncus erat et neque finibus lacinia. Cras sagittis est convallis, vestibulum justo nec, viverra libero. Quisque feugiat, risus nec vulputate porttitor, nibh dui sagittis turpis, nec lobortis augue urna quis leo. Suspendisse potenti. Cras ultricies libero tempor risus fringilla efficitur.",
      level: "Avec Bac+3",
    ),
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Container(
              color: Color(0xffFFF9EB),
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 48.0),
                          child: Column(
                            children: [
                              Text(
                                "Mes informations",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall
                                    ?.copyWith(color: Color(0xffFFB703)),
                              ),
                              SizedBox(height: 30.0),
                              Container(
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    _buildAddButton(context),
                                    SizedBox(width: 12.0),
                                    _buildListButton(context)
                                  ],
                                ),
                              ),
                              SizedBox(height: 26.0),
                              if (_isFormVisible) ...[
                                _buildProfileSection(context),
                                SizedBox(height: 14.0),
                                _buildDurationPriceRow(context),
                                SizedBox(height: 14.0),
                                _buildDescriptionSection(context),
                                SizedBox(height: 14.0),
                                _buildLevelDropdown(context),
                                SizedBox(height: 42.0),
                                Container(
                                  width: double.infinity,
                                  child: Column(
                                    children: [buildConfirmButton(context)],
                                  ),
                                ),
                              ] else ...[
                                _buildListFormationsSection(context)
                              ],
                              SizedBox(height: 78.0),
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

  Widget _buildAddButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        backgroundColor: _add_bg_color,
        text: "Ajouter",
        //buttonStyle: CustomButtonStyles.getFill(Colors.grey),
        onPressed: _onAddPress,
      ),
    );
  }

  Widget _buildListButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        backgroundColor: _list_bg_color,
        text: "Liste",
        //buttonStyle: CustomButtonStyles.getFill(Colors.grey),
        onPressed: _onListPress,
      ),
    );
  }

  Widget _buildProfileSection(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nom de formation",
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Color(0xff023047)),
          ),
          SizedBox(height: 4.0),
          CustomTextFormField(
            borderDecoration: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
            ),
            controller: inputoneController,
            hintText: "Nom de formation",
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 14.0),
          ),
        ],
      ),
    );
  }

  Widget _buildDurationPriceRow(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Durée/mois",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Color(0xff023047)),
                ),
                SizedBox(height: 4.0),
                CustomTextFormField(
                  borderDecoration: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xffFFB703), width: 2.0),
                  ),
                  controller: groupelevenController,
                  hintText: "0",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 14.0),
                ),
              ],
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Prix",
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge
                        ?.copyWith(color: Color(0xff023047))),
                SizedBox(height: 4.0),
                CustomTextFormField(
                  borderDecoration: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xffFFB703), width: 2.0),
                  ),
                  controller: grouptenController,
                  hintText: "0",
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 14.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: Color(0xff023047)),
          ),
          SizedBox(height: 4.0),
          CustomTextFormField(
            borderDecoration: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
            ),
            controller: inputthreeController,
            hintText: "Description",
            textInputAction: TextInputAction.done,
            maxLines: 9,
            contentPadding: EdgeInsets.fromLTRB(10.0, 14.0, 18.0, 12.0),
          ),
        ],
      ),
    );
  }

  Widget _buildLevelDropdown(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.0),
            child: Text(
              "Niveau demande",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Color(0xff023047)),
            ),
          ),
          SizedBox(height: 4.0),
          CustomDropDown(
            borderDecoration: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffFFB703), width: 2.0),
            ),
            hintText: "Avec bac",
            items: dropdownItems,
            value: selectedDropdownItem,
            onChanged: (value) {
              setState(() {
                selectedDropdownItem = value;
              });
            },
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 14.0),
            fillColor: Color(0xffFFF3D3),
            maxHeight: 200.0,
          ),
        ],
      ),
    );
  }

  Widget buildConfirmButton(BuildContext context) {
    return CustomElevatedButton(
      backgroundColor: Color(0xffFFB703),
      height: 36.0,
      text: "Confirmer",
      onPressed: () => {},
      buttonTextStyle: CustomTextStyles.labelLargeYellow50Bold(context),
    );
  }

  /// Section widget
  // Widget to display the list of formations
  Widget _buildListFormationsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: formations.map((formation) {
          return Padding(
            padding: const EdgeInsets.only(
                bottom: 20.0), // Add spacing between cards
            child: _buildFormationCard(context, formation),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildFormationCard(BuildContext context, Formation formation) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formation.name,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff219EBC),
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            formation.description,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14.0,
              color: Color(0xff023047),
            ),
          ),
          SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Prix: ${formation.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                      color: Color(0xffFFB703),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    "Durée: ${formation.duration}",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFB703),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    formation.level,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFFB703),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add your action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffFFB703),
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: Text(
                  "Modifier Formation",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  // Add your action here
                },
                icon: Icon(Icons.info_outline, color: Color(0xffFFB703)),
                label: Text(
                  "En savoir plus",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffFFB703),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onListPress() {
    setState(() {
      // Change the button color
      _list_bg_color = Color(0xffFFB703);
      _add_bg_color = Colors.grey;

      // Hide the form section
      _isFormVisible = false;
    });
  }

  void _onAddPress() {
    setState(() {
      // Change the button color
      _add_bg_color = Color(0xffFFB703);
      _list_bg_color = Colors.grey;

      // Hide the form section
      _isFormVisible = true;
    });
  }
}
