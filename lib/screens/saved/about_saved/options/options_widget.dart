import 'package:avtosalon/constants/size_config.dart';
import 'package:flutter/material.dart';

class MainOptions extends StatefulWidget {
  const MainOptions({Key? key}) : super(key: key);

  @override
  _MainOptionsState createState() => _MainOptionsState();
}

class _MainOptionsState extends State<MainOptions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getProportionScreenHeight(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Main options",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionScreenHeight(16)),
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle_outline),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionScreenWidth(3)),
                          child: const Text(
                            "Bockup camera",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionScreenHeight(10)),
                    child: Row(
                      children: [
                        const Icon(Icons.check_circle_outline),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionScreenWidth(3)),
                          child: const Text(
                            "Cruise control",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: getProportionScreenWidth(50)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: getProportionScreenHeight(16)),
                      child: Row(
                        children: [
                          const Icon(Icons.check_circle_outline),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(3)),
                            child: const Text(
                              "Parking system",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: getProportionScreenHeight(10)),
                      child: Row(
                        children: [
                          const Icon(Icons.check_circle_outline),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(3)),
                            child: const Text(
                              "Sunroof",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
