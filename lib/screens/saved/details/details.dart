// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:animate_do/animate_do.dart';
import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:avtosalon/screens/saved/about_saved/star/stars.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  var namemi, seriyasi, narxii, rasmii;
  Details({Key? key, this.namemi, this.narxii, this.seriyasi, this.rasmii})
      : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BounceInLeft(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBarim(context),
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionScreenWidth(19)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: getProportionScreenHeight(24)),
                child: Container(
                  height: getProportionScreenHeight(21),
                  width: getProportionScreenWidth(117),
                  child: Center(
                    child: Text(
                      widget.namemi.toString(),
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
                    Text(widget.seriyasi,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("${widget.narxii}/day",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              const Stars(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 21, bottom: 25),
                    child: Row(
                      children: const [
                        Text(
                          "Minimal driver age:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          " 23",
                          style: TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "Deposit:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        " 500 USD",
                        style: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      children: [
                        const Text(
                          "Prise from:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          " ${widget.narxii} USD/day",
                          style: const TextStyle(
                              color: Colors.black38,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Rent Duration",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "From: 23 dec 2021",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            ),
                            Text(
                              "To: 28 dec 2021",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            ),
                            Text(
                              "Edit:",
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            ),
                            Icon(Icons.edit, color: Colors.black38)
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Payment Method",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Uzcard",
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(right: 15),
                                    child: Text(
                                      "Edit:",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Icon(Icons.edit, color: Colors.black38)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 164),
                    child: Row(
                      children: [
                        const Text(
                          "Total Cost: ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Text(
                          widget.narxii.toString(),
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionScreenHeight(26)),
                    child: InkWell(
                      onTap: () {
                        Data.tripsFoto.add(widget.rasmii);
                        Data.tripsNarx.add(widget.narxii);
                        Data.tripsSeriya.add(widget.seriyasi);
                        Navigator.pushNamed(context, '/cheack');
                      },
                      child: Container(
                        height: getProportionScreenHeight(54),
                        width: getProportionScreenWidth(335),
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: const Center(
                            child: Text("Confirm booking",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionScreenHeight(15)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/details');
                      },
                      child: Container(
                        height: getProportionScreenHeight(54),
                        width: getProportionScreenWidth(335),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        child: const Center(
                            child: Text("Cancel",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black))),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBarim(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_rounded),
      ),
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'Check out details',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
