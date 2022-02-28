import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:avtosalon/screens/home_page/car_brend/marka/marka.dart';
import 'package:flutter/material.dart';

class CarBrend extends StatefulWidget {
  const CarBrend({Key? key}) : super(key: key);

  @override
  _CarBrendState createState() => _CarBrendState();
}

class _CarBrendState extends State<CarBrend> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(64),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Markalar(
                  mar: homeIndex[index],
                ),
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(right: getProportionScreenWidth(21.5)),
              width: getProportionScreenWidth(68),
              height: getProportionScreenHeight(64),
              child: Padding(
                padding: EdgeInsets.only(
                    top: index == 2
                        ? getProportionScreenHeight(0)
                        : getProportionScreenHeight(10)),
                child: Image.asset(
                  Data.carBrend[index]["brend"].toString(),
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: const Color(0xFFB4B4B4)),
                color: const Color(0xFFEBEAF3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
            ),
          );
        },
        itemCount: homeIndex.length,
      ),
    );
  }
}
