import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:flutter/material.dart';

class ClassWidget extends StatefulWidget {
  const ClassWidget({Key? key}) : super(key: key);

  @override
  _ClassWidgetState createState() => _ClassWidgetState();
}

class _ClassWidgetState extends State<ClassWidget> {
  List clasim = [];
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
            onTap: (){
               if (clasim.contains(__)) {
                setState(() {
                  clasim.remove(__);
                });
              } else {
                setState(() {
                  clasim.add(__);
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color:  clasim.contains(__)
                        ? Colors.amber
                        : const Color(0xFFEBEAF3)),
                color: const Color(0xFFEBEAF3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              margin: EdgeInsets.only(right: getProportionScreenWidth(21.5)),
              width: getProportionScreenWidth(98),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: getProportionScreenHeight(25),
                    width: getProportionScreenWidth(40),
                    child: Image.asset(
                      Data.classFoto[__].toString(),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(Data.className[__],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          );
        },
        itemCount: Data.classFoto.length,
      ),
    );
  }
}
