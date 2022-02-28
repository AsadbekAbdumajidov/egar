
import 'package:animate_do/animate_do.dart';
import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/screens/home_page/car_brend/car_brend.dart';
import 'package:avtosalon/screens/home_page/hot_offers/hot_offers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarHomePage extends StatefulWidget {
  const CarHomePage({Key? key}) : super(key: key);

  @override
  _CarHomePageState createState() => _CarHomePageState();
}

class _CarHomePageState extends State<CarHomePage> {
  
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SlideInUp(
      child: SizedBox(
        child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getProportionScreenHeight(60),
                    ),
                    child: const Text(
                      'Select your car',
                      style:  TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(15),
                  ),
                  Row(
                    children: [
                      Container(
                        width: getProportionScreenWidth(271),
                        height: getProportionScreenHeight(45),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.5, color:const Color(0xFFB4B4B4)),
                            color:const Color(0xFFEBEAF3),
                            borderRadius:const BorderRadius.all(Radius.circular(8))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 16,
                              ),
                              SizedBox(
                                width: getProportionScreenWidth(10),
                              ),
                              const Text(
                                'Search',
                                style:  TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: getProportionScreenWidth(19),
                      ),
                      Container(
                        width: getProportionScreenWidth(45),
                        height: getProportionScreenHeight(45),
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color:const Color(0xFFB4B4B4)),
                          color:const Color(0xFFEBEAF3),
                          borderRadius:const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: InkWell(
                          onTap: ()=> Navigator.pushNamed(context, '/filter'),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              "assets/image/nastroyka_home.svg",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(10),
                  ),
                  const Text(
                    'Car brends',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(8),
                  ),
                  const CarBrend(),
                  SizedBox(
                    height: getProportionScreenHeight(26),
                  ),
                  const HotOffers(),
                  ],
              ),
            ),
          
        ),
      ),
    );
  }
}