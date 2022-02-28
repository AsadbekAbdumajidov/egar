import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:flutter/material.dart';

class BodyType extends StatefulWidget {
  const BodyType({Key? key}) : super(key: key);

  @override
  _BodyTypeState createState() => _BodyTypeState();
}

class _BodyTypeState extends State<BodyType> {
  List body = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(62),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) {
          return InkWell(
            onTap: (){
              if (body.contains(__)) {
                        setState(() {
                          body.remove(__);
                        });
                      } else {
                        setState(() {
                          body.add(__);
                        });
                      }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: body.contains(__)
                        ? Colors.amber
                        : const Color(0xFFEBEAF3)),
                color: const Color(0xFFEBEAF3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              margin: EdgeInsets.only(right: getProportionScreenWidth(21.5)),
              width: getProportionScreenWidth(69),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: getProportionScreenHeight(30),
                    width: getProportionScreenWidth(60),
                    child: Image.asset(
                      "assets/image/body_type.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(Data.bodyType[__],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          );
        },
        itemCount: Data.bodyType.length,
      ),
    );
  }
}
