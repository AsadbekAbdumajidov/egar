import 'package:animate_do/animate_do.dart';
import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:avtosalon/data/modul.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Markalar extends StatefulWidget {
  var mar;
  int? bigIndex;
  Markalar({Key? key, this.mar, this.bigIndex}) : super(key: key);

  @override
  _markalarState createState() => _markalarState();
}

// ignore: camel_case_types
class _markalarState extends State<Markalar> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BounceInLeft(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.865,
                color: Colors.white,
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      mainAxisExtent: getProportionScreenHeight(200),
                      crossAxisSpacing: getProportionScreenWidth(20)),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.5, color: const Color(0xFFB4B4B4)),
                        color: const Color(0xFFEBEAF3),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: getProportionScreenWidth(17),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: getProportionScreenHeight(13)),
                              child: Container(
                                height: getProportionScreenHeight(16),
                                width: getProportionScreenWidth(69),
                                child: Center(
                                    child: Text(
                                  widget.mar['name'].toString(),
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                )),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFDCA00),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: getProportionScreenHeight(8),
                            ),
                            Text(
                              '${widget.mar!['seriya'][index]}',
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: getProportionScreenHeight(5)),
                              child: SizedBox(
                                width: getProportionScreenWidth(144),
                                height: getProportionScreenHeight(92),
                                child: Image.asset(
                                  '${widget.mar!['foto'][index]}',
                                  height: getProportionScreenHeight(105),
                                  width: getProportionScreenWidth(165),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: getProportionScreenHeight(4),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${widget.mar!['narx'][index]}/day',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: getProportionScreenWidth(15)),
                                  child: InkWell(
                                    onTap: () {
                                      if (widget.mar!["saved"][index] == "0") {
                                        widget.mar!["saved"][index] = "1";

                                        sav.add(
                                          Jonatish(
                                            seriya: widget.mar!["seriya"]
                                                [index],
                                            foto: widget.mar!["foto"][index],
                                            narx: widget.mar!["narx"][index],
                                            name: widget.mar!['name'],
                                          ),
                                        );
                                        indexCatcher.add([widget.mar, index]);
                                        debugPrint(widget.mar.toString());
                                        setState(() {});
                                      } else if (widget.mar["saved"][index] ==
                                          "1") {
                                        widget.mar!["saved"][index] = "0";
                                        widget.mar["saved"][index] = "0";
                                        sav.removeAt(index);
                                        setState(() {});
                                      }
                                    },
                                    child: Container(
                                      width: getProportionScreenHeight(25),
                                      height: getProportionScreenWidth(25),
                                      child: Icon(
                                          widget.mar["saved"][index] == "1"
                                              ? Icons.bookmark_outlined
                                              : Icons.bookmark_border_rounded),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width:
                                                getProportionScreenWidth(0.5),
                                            color: const Color(0xFFB4B4B4)),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: widget.mar!['seriya'].length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black, size: 30),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios)),
      title: Text(
        widget.mar['name'].toString(),
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
