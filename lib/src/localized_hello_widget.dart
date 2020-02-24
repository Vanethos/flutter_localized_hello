import 'package:flutter/material.dart';
import 'package:localized_hello/src/localization/lib_localizations.dart';
import 'package:localized_hello/src/localization/lib_localizations_delegate.dart';

class LocalizedHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      delegates: [const LibLocalizationsDelegate()],
      locale: Localizations.localeOf(context),
      child: Builder(
        builder: (secondContext) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            border: Border.all(
                color: Color(0xff75eaff), style: BorderStyle.solid, width: 6.0),
            color: Color(0xffb1ff75),
          ),
          padding: EdgeInsets.all(18.0),
          child: Text(
            LibLocalizations.of(secondContext).textGreeting,
            style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Color(0xffff7a75)),
          ),
        ),
      ),
    );
  }
}

//ignore:unused_element
class _GreetingText extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Text(
        LibLocalizations.of(context).textGreeting,
        style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Color(0xffff7a75)),
      );
}
