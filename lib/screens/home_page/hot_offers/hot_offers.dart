import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';

import 'package:flutter/material.dart';

class HotOffers extends StatefulWidget {
  const HotOffers({Key? key}) : super(key: key);

  @override
  _HotOffersState createState() => _HotOffersState();
}

class _HotOffersState extends State<HotOffers> {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 500,
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: getProportionScreenHeight(170),
              crossAxisSpacing: getProportionScreenWidth(20)),
          padding: const EdgeInsets.only(top: 0),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: index % 2 == 0 ? 0 : 7),
                Row(
                  mainAxisAlignment: index % 2 == 0
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.end,
                  children: [
                    Text(
                      index % 2 == 0
                          ? '${Data.sbrend[index]['brend2']}'
                          : 'View all',
                      style: TextStyle(
                          color: index % 2 == 0
                              ? Colors.black
                              : const Color(0xFFBABABA),
                          fontSize: index % 2 == 0 ? 20 : 14,
                          fontWeight: index % 2 == 0 ? FontWeight.bold : null),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionScreenHeight(11),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: const Color(0xFFB4B4B4)),
                          color: const Color(0xFFEBEAF3),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        width: getProportionScreenWidth(157),
                        height: getProportionScreenHeight(105),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Image.asset(
                              '${Data.sbrend[index]['brend3']}',
                              height: getProportionScreenHeight(66),
                              width: getProportionScreenWidth(133),
                            ),
                            SizedBox(
                              height: getProportionScreenHeight(4),
                            ),
                            Text(
                              '${Data.sbrend[index]['brend1']}',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionScreenHeight(27),
                ),
              ],
            );
          },
          itemCount: Data.sbrend.length),
    );
  }
}
