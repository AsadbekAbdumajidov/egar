import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:flutter/material.dart';

class Model extends StatefulWidget {
  const Model({Key? key}) : super(key: key);

  @override
  _ModelState createState() => _ModelState();
}

class _ModelState extends State<Model> {
  static List model = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(64),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) {
          return InkWell(
            onTap: () {
              if (model.contains(__)) {
                setState(() {
                  model.remove(__);
                });
              } else {
                setState(() {
                  model.add(__);
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1,
                    color: model.contains(__)
                        ? Colors.amber
                        : const Color(0xFFEBEAF3)),
                color: const Color(0xFFEBEAF3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              margin: EdgeInsets.only(right: getProportionScreenWidth(21.5)),
              width: getProportionScreenWidth(68),
              height: getProportionScreenHeight(64),
              child: Padding(
                padding: EdgeInsets.only(
                    top: __ == 2
                        ? getProportionScreenHeight(0)
                        : getProportionScreenHeight(10)),
                child: Image.asset(
                  Data.carBrend[__]["brend"].toString(),
                ),
              ),
            ),
          );
        },
        itemCount: Data.carBrend.length,
      ),
    );
  }
}
