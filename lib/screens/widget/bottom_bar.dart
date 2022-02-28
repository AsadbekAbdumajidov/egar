import 'package:avtosalon/data/data_car.dart';
import 'package:avtosalon/screens/home_page/home_page.dart';
import 'package:avtosalon/screens/profile/profile_page.dart';
import 'package:avtosalon/screens/saved/saved_page.dart';
import 'package:avtosalon/screens/trips/trips_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BottomBar> {
  CarHomePage? _carHomePage;
  Trips? _trips;
  SavedPages? _saved;
  Profile? _profile;

  final List _pages = [];


  @override
  void initState() {
    super.initState();
    _carHomePage = const CarHomePage();
    _trips = const Trips();
    _saved = const SavedPages();
    _profile = const Profile();

    _pages.addAll([_carHomePage, _trips, _saved, _profile]);
    debugPrint("$_pages");
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: _pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 12,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (v) {
            setState(() {
              currentIndex = v;
            });
          },
          selectedItemColor: Colors.black,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: currentIndex == 0
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        "assets/image/qora_home.svg",
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        "assets/image/oq_home.svg",
                      ),
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              label: 'Trips',
              icon: currentIndex == 1
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        "assets/image/qora_trips.svg",
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        "assets/image/oq_trips.svg",
                      ),
                    ),
            ),
            BottomNavigationBarItem(
              label: 'Saved',
              icon: currentIndex == 2
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        "assets/image/qora_save.svg",
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        "assets/image/oq_save.svg",
                      ),
                    ),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: currentIndex == 3
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        "assets/image/qora_profile.svg",
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        "assets/image/oq_profile.svg",
                      ),
                    ),
            )
          ],
        ),
      );
 
}
