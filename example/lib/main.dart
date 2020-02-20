import 'package:flutter/material.dart';
import 'package:localized_hello/localized_hello.dart';

import 'localization/app_localizations.dart';
import 'localization/app_localizations_delegate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      localizationsDelegates: [
          const AppLocalizationsDelegate(),
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('it', 'IT'),
        ]
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).textIntroFirstPageTitle),
      ),
      body: Center(
        child: LocalizedHello(),
      ),
    );
  }
}
