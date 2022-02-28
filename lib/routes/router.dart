import 'package:avtosalon/screens/home_page/car_brend/marka/marka.dart';
import 'package:avtosalon/screens/home_page/filtr/filtr.dart';
import 'package:avtosalon/screens/login/egar.dart';
import 'package:avtosalon/screens/login/in/parol.dart';
import 'package:avtosalon/screens/login/up/up.dart';
import 'package:avtosalon/screens/profile/account/account.dart';
import 'package:avtosalon/screens/saved/about_saved/about.dart';
import 'package:avtosalon/screens/saved/cheack/chaeck.dart';
import 'package:avtosalon/screens/saved/details/details.dart';
import 'package:avtosalon/screens/saved/saved_page.dart';
import 'package:avtosalon/screens/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

class RouterGeneratorim {
  static generate(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const Egar(),
        );
      case '/sign_up':
        return MaterialPageRoute(
          builder: (context) => const Up(),
        );

      case '/save':
        return MaterialPageRoute(
          builder: (context) => const SavedPages(),
        );
      case '/verificationPage':
        return MaterialPageRoute(
          builder: (context) => const VerificationCode(),
        );
        case '/about':
        return MaterialPageRoute(
          builder: (context) => AboutSaved(),
        );
      case '/bottom':
        return MaterialPageRoute(
          builder: (context) => const BottomBar(),
        );
      case '/mar':
        return MaterialPageRoute(
            builder: (context) => Markalar(
                  mar: args,
                ));
      case '/filter':
        return MaterialPageRoute(
          builder: (context) => const Filter(),
        );
        case '/details':
        return MaterialPageRoute(
          builder: (context) => Details(),
        );
         case '/cheack':
        return MaterialPageRoute(
          builder: (context) =>const Cheack(),
        );
         case '/acc':
        return MaterialPageRoute(
          builder: (context) =>const Account(),
        );
    }
  }
}
