import 'package:flutter/material.dart';
import 'package:my_app/widgets/CustomElevatedButton.dart';
import 'package:my_app/widgets/Footer.dart';

class EspaceUniversitDashboardHomePage extends StatefulWidget {
  const EspaceUniversitDashboardHomePage({Key? key}) : super(key: key);

  @override
  State<EspaceUniversitDashboardHomePage> createState() =>
      _EspaceUniversitDashboardHomePageState();
}

class _EspaceUniversitDashboardHomePageState
    extends State<EspaceUniversitDashboardHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 22.0,
          vertical: 10.0,
        ),
        decoration:
            BoxDecoration(color: const Color(0xffFFF9EB)), // main bg color
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 7.0),
                  Text(
                    "Tableau de board",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color:
                              Color(0xffFFB703), // Change the text color to red
                        ),
                  ),
                  SizedBox(height: 26.0),
                  _buildStudentSubmissionButton(context),
                  SizedBox(height: 14.0),
                  _buildApprovedStudentButton(context),
                  SizedBox(height: 14.0),
                  _buildRejectedStudentButton(context),
                  SizedBox(height: 14.0),
                  _buildTransactionsButton(context),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildStudentSubmissionButton(BuildContext context) {
    return CustomElevatedButton(
      height: 42.0,
      text: "Soumission de l'Etudiant",
      margin: EdgeInsets.symmetric(horizontal: 58.0),
      backgroundColor: const Color(0xffFFB703),
      borderRadius: BorderRadius.circular(5.0),
    );
  }

  Widget _buildApprovedStudentButton(BuildContext context) {
    return CustomElevatedButton(
      height: 42.0,
      text: "Etudiants Approuvés",
      margin: EdgeInsets.symmetric(horizontal: 58.0),
      backgroundColor: const Color(0xffFFB703),
      borderRadius: BorderRadius.circular(5.0),
    );
  }

  Widget _buildRejectedStudentButton(BuildContext context) {
    return CustomElevatedButton(
      height: 42.0,
      text: "Etudiants Refusés",
      margin: EdgeInsets.symmetric(horizontal: 58.0),
      backgroundColor: const Color(0xffFFB703),
      borderRadius: BorderRadius.circular(5.0),
    );
  }

  Widget _buildTransactionsButton(BuildContext context) {
    return CustomElevatedButton(
      height: 42.0,
      text: "Transactions",
      margin: EdgeInsets.symmetric(horizontal: 58.0),
      backgroundColor: const Color(0xffFFB703),
      borderRadius: BorderRadius.circular(5.0),
    );
  }
}
