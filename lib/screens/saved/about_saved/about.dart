// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:avtosalon/screens/saved/about_saved/calendar.widget.about/calendar_about.dart';
import 'package:avtosalon/screens/saved/about_saved/options/options_widget.dart';
import 'package:avtosalon/screens/saved/about_saved/star/stars.dart';
import 'package:avtosalon/screens/saved/details/details.dart';
import 'package:flutter/material.dart';

class AboutSaved extends StatefulWidget {
  var fotom, namem, seriyam, narxm;
  AboutSaved({Key? key, this.seriyam, this.fotom, this.namem, this.narxm})
      : super(key: key);

  @override
  _AboutSavedState createState() => _AboutSavedState();
}

class _AboutSavedState extends State<AboutSaved> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(49),
                right: getProportionScreenWidth(46)),
            child: Container(
              height: getProportionScreenHeight(179),
              width: getProportionScreenWidth(300),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("${widget.fotom}"), fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(150),
                right: getProportionScreenWidth(150),
                top: getProportionScreenHeight(23)),
            child: Row(
              children: const [
                Icon(Icons.fiber_manual_record, size: 14),
                Icon(Icons.fiber_manual_record,
                    size: 14, color: Colors.black45),
                Icon(Icons.fiber_manual_record,
                    size: 14, color: Colors.black45),
                Icon(Icons.fiber_manual_record, size: 14, color: Colors.black45)
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionScreenWidth(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(32)),
                  child: Container(
                    height: getProportionScreenHeight(21),
                    width: getProportionScreenWidth(117),
                    child: Center(
                      child: Text(
                        widget.namem.toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFDCA00),
                      borderRadius: BorderRadius.all(
                        Radius.circular(3),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.seriyam,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text("${widget.narxm}/day",
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const Stars(),
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(28)),
                  child: const CalendarAbout(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Color",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      Padding(
                        padding:
                            EdgeInsets.only(top: getProportionScreenHeight(10)),
                        child: const Text("Black",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
                const MainOptions(),
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(30)),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                            namemi: widget.namem,
                            narxii: widget.narxm,
                            seriyasi: widget.seriyam,
                            rasmii: widget.fotom,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: getProportionScreenHeight(54),
                      width: getProportionScreenWidth(335),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      child: const Center(
                          child: Text("Book now",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          setState(() {});
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_rounded),
      ),
      actions: [
        IconButton(
          iconSize: 30,
          icon: const Icon(Icons.bookmark_outlined),
          onPressed: () {},
        ),
        SizedBox(
          width: getProportionScreenWidth(13),
        )
      ],
      elevation: 0,
      centerTitle: true,
    );
  }
}
