import 'package:flutter/material.dart';
import 'package:my_app/utils/CountryClass.dart';
import 'package:my_app/utils/CountriesData.dart'; // Import the file where countries are defined

class CountryPickerUtils {
  static Country getDefaultCountry() {
    // Return Tunisia as the default country
    return Country(
      name: 'Tunisia',
      code: 'TN',
      phoneCode: '216',
    );
  }

  static Widget getDefaultFlagImage(Country country) {
    // Return a placeholder flag image or a flag image based on the country code.
    return Icon(Icons.flag, size: 24.0);
  }

  static Country? getCountryByPhoneCode(String phoneCode) {
    // Get the list of countries
    final List<Country> countries = getSampleCountries();

    // Search for the country with the matching phone code
    return countries.firstWhere(
      (country) => country.phoneCode == phoneCode,
      //orElse: () => null, // Return null if no matching country is found
    );
  }

  static List<Country> getAllCountries() {
    // Return a list of all available countries
    // Example:
    final List<Country> countries = getSampleCountries();
    return countries;
  }
}
