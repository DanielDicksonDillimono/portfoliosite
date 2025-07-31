import 'package:flutter/material.dart';

class Applocalization {
  static Applocalization of(BuildContext context) {
    return Localizations.of<Applocalization>(context, Applocalization)!;
  }

  static const _strings = {
    'appTitle': 'Portfolio Site',
    'home': 'Home',
    'projects': 'PROJECTS',
    'aboutMe': 'ABOUT ME',
    'bio':
        '"Hello! I am a Flutter developer with a passion for creating beautiful and functional applications. I love exploring new technologies and continuously improving my skills."\nFor some reason the above text was generated. I am actually a software developer with a background in Creative Technology so the initial description fits. I have an interest in Art, Aviation, Cars and Health & Fitness.',
    'visitProject': 'Visit Project',
    'name': 'Daniel Dickson Dillimono',
    'nameShort': 'Dillimono',
    'projectDescription':
        'Here are some of my projects.\nSome (ehmm... most) of them are still in development, while others are completed and available for you to explore.',
  };
  static String _get(String key) {
    return _strings[key] ?? key;
  }

  String get appTitle => _get('appTitle');
  String get home => _get('home');
  String get projects => _get('projects');
  String get aboutMe => _get('aboutMe');
  String get bio => _get('bio');
  String get visitProject => _get('visitProject');
  String get name => _get('name');
  String get projectDescription => _get('projectDescription');
  String get nameShort => _get('nameShort');
}

class ApplocalizationDelegate extends LocalizationsDelegate<Applocalization> {
  const ApplocalizationDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<Applocalization> load(Locale locale) async {
    return Applocalization();
  }

  @override
  bool shouldReload(ApplocalizationDelegate old) => false;
}
