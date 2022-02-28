import 'package:animate_do/animate_do.dart';
import 'package:avtosalon/components/slider_package.dart';
import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/screens/home_page/filtr/body_type/body_type.dart';
import 'package:avtosalon/screens/home_page/filtr/calendar.widget/calendar.dart';
import 'package:avtosalon/screens/home_page/filtr/class_widget/class_widget.dart';
import 'package:avtosalon/screens/home_page/filtr/km_widget/km_widget.dart';
import 'package:avtosalon/screens/home_page/filtr/modellar_widget/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FiltrState createState() => _FiltrState();
}

class _FiltrState extends State<Filter> {
 
  double sliderValue = 100;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: appBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: getProportionScreenWidth(15),
            right: getProportionScreenWidth(15),
          ),
          child: Column(
            children: [
              SlideInLeft(child: const CalendarWidget()),
              SlideInRight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: getProportionScreenHeight(15),
                          bottom: getProportionScreenHeight(11)),
                      child: const Text("Model",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                    const Model(),
                  ],
                ),
              ),
              SlideInLeft(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: getProportionScreenHeight(15),
                          bottom: getProportionScreenHeight(11)),
                      child: const Text("Class",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                    const ClassWidget(),
                  ],
                ),
              ),
              SlideInRight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: getProportionScreenHeight(10),
                      ),
                      child: const Text("Price",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                    const SliderPackage(),
                  ],
                ),
              ),
              SlideInLeft(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: getProportionScreenHeight(15),
                          bottom: getProportionScreenHeight(11)),
                      child: const Text("Km",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                    const Km(),
                  ],
                ),
              ),
              SlideInRight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: getProportionScreenHeight(20),
                          bottom: getProportionScreenHeight(11)),
                      child: const Text("Body type",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                    const BodyType(),
                  ],
                ),
              ),
              InkWell(
                onTap: (){},
                child: Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(27)),
                  child: Container(
                    height: getProportionScreenHeight(54),
                    width: getProportionScreenWidth(335),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Apply filter",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );

  AppBar appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.black, size: 30),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: const Text(
        "Filter",
        style: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
