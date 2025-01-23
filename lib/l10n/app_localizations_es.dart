import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get inputEmpty => 'Por favor ingrese el texto.';

  @override
  String get inputInvalidEmail => 'Por favor ingrese un email válido.';

  @override
  String get inputInvalidPassword => 'La contraseña debe tener por lo menos 6 carácteres.';

  @override
  String get inputEmailDefaultHint => 'Email';

  @override
  String get inputPasswordDefaultHint => 'Contraseña';

  @override
  String inputMaxLength(int maxLength) {
    return 'la longitud del texto no puede superar los $maxLength carácteres';
  }
}
