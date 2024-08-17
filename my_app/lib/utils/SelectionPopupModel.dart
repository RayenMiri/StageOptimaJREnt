/// SelectionPopupModel is a common model used for setting data into dropdowns
class SelectionPopupModel {
  SelectionPopupModel({
    this.id,
    required this.title,
    this.value,
    this.isSelected = false,
  });

  int? id;
  String title; // changed from 'string' to 'String'
  dynamic value;
  bool isSelected;
}
