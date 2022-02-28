import 'package:animate_do/animate_do.dart';
import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:flutter/material.dart';

class Trips extends StatefulWidget {
  const Trips({Key? key}) : super(key: key);

  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SlideInUp(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'My renalts',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Data.tripsFoto.isEmpty
                  ? Container(
                      height: MediaQuery.of(context).size.height * 0.81,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/image/pust.jpg"),
                            fit: BoxFit.contain),
                      ),
                    )
                  : SizedBox(
                      height: getProportionScreenHeight(693),
                      width: double.infinity,
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding:
                            EdgeInsets.only(top: getProportionScreenHeight(5)),
                        itemCount: Data.tripsFoto.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisSpacing: 20,
                            mainAxisExtent: getProportionScreenHeight(355),
                            crossAxisSpacing: getProportionScreenWidth(20)),
                        itemBuilder: (_, __) {
                          return Center(
                            child: Container(
                              width: getProportionScreenWidth(335),
                              decoration: BoxDecoration(
                                color: const Color(0xFFEBEAF3),
                                border:
                                    Border.all(width: 1, color: Colors.black26),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${Data.tripsSeriya[__]}",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Container(
                                      height: getProportionScreenHeight(150),
                                      width: getProportionScreenWidth(400),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              Data.tripsFoto[__],
                                            ),
                                            fit: BoxFit.contain),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.date_range_outlined,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                Text(
                                                  "  Data",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                            const Text(
                                              "03 Dec 14:00-19:00",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          color: Colors.black,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.data_saver_off_rounded,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                Text(
                                                  "  Duration",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                            const Text(
                                              "03 Hour",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          color: Colors.black,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.add_link_rounded,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                Text(
                                                  "  Range",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                            const Text(
                                              "60 km",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          color: Colors.black,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: const [
                                                Icon(
                                                  Icons.attach_money_outlined,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                                Text(
                                                  "  Cost",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 16),
                                                )
                                              ],
                                            ),
                                            Text(
                                              Data.tripsNarx[__],
                                              style: const TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          color: Colors.black,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
