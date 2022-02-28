import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:flutter/material.dart';

class Km extends StatefulWidget {
  const Km({Key? key}) : super(key: key);

  @override
  _KmState createState() => _KmState();
}

class _KmState extends State<Km> {
  List km = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionScreenHeight(31),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, __) {
          return InkWell(
            onTap: () {
              if (km.contains(__)) {
                setState(() {
                  km.remove(__);
                });
              } else {
                setState(() {
                  km.add(__);
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: km.contains(__)
                        ? Colors.amber
                        : const Color(0xFFEBEAF3)),
                color: const Color(0xFFEBEAF3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              margin: EdgeInsets.only(
                  right: getProportionScreenWidth(10),
                  left: getProportionScreenWidth(10)),
              width: getProportionScreenWidth(65),
              child: Center(
                child: Text(Data.km[__],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          );
        },
        itemCount: Data.km.length,
      ),
    );
  }
}
