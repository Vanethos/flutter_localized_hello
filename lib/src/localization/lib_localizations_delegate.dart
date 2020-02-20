import 'dart:async';

import 'package:flutter/material.dart';
import 'package:localized_hello/src/localization/lib_localizations.dart';


class LibLocalizationsDelegate extends LocalizationsDelegate<LibLocalizations> {
  const LibLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['pt', 'en'].contains(locale.languageCode);

  @override
  Future<LibLocalizations> load(Locale locale) => LibLocalizations.load(locale);

  @override
  bool shouldReload(LocalizationsDelegate<LibLocalizations> old) => false;
}