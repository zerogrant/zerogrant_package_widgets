import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get inputEmpty => 'Please enter some text.';

  @override
  String get inputInvalidEmail => 'Please type a valid email.';

  @override
  String get inputInvalidPassword => 'Password must have at least 6 characters.';

  @override
  String get inputEmailDefaultHint => 'Email';

  @override
  String get inputPasswordDefaultHint => 'Password';

  @override
  String inputMaxLength(int maxLength) {
    return 'The length of the text must not exceed $maxLength characters.';
  }
}
