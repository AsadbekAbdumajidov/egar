import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:flutter/material.dart';

class Cheack extends StatefulWidget {
  const Cheack({Key? key}) : super(key: key);

  @override
  _CheackState createState() => _CheackState();
}

class _CheackState extends State<Cheack> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 120,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 116,
                          child: Center(
                            child: Icon(
                              Icons.check,
                              size: 100,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Car has been booked",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ),
                  const Text(
                    "succesfully",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getProportionScreenHeight(200)),
              child: InkWell(
                onTap: () {
                  currentIndex = 0;
                  Navigator.pushNamed(context, '/bottom');
                },
                child: Container(
                  height: getProportionScreenHeight(54),
                  width: getProportionScreenWidth(335),
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: const Center(
                      child: Text("Back to home",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white))),
                ),
              ),
            ),
          ],
        ),
      );
}
