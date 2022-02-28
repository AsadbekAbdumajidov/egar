import 'package:animate_do/animate_do.dart';
import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:avtosalon/screens/saved/about_saved/about.dart';
import 'package:flutter/material.dart';

class SavedPages extends StatefulWidget {
  const SavedPages({Key? key}) : super(key: key);

  @override
  _SavedPagesState createState() => _SavedPagesState();
}

class _SavedPagesState extends State<SavedPages> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SlideInUp(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar(context),
        body: Padding(
          padding: EdgeInsets.only(
              left: getProportionScreenWidth(19),
              right: getProportionScreenWidth(19.0),
              top: getProportionScreenHeight(10)),
          child: Column(
            children: [
              sav.isEmpty
                  ? Container(
                      height: MediaQuery.of(context).size.height * 0.81,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/image/pust.jpg"),
                              fit: BoxFit.contain)),
                    )
                  : SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.81,
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding:
                            EdgeInsets.only(top: getProportionScreenHeight(5)),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            mainAxisExtent: getProportionScreenHeight(200),
                            crossAxisSpacing: getProportionScreenWidth(20)),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AboutSaved(
                                      fotom: sav[index].foto,
                                      namem: sav[index].name,
                                      seriyam: sav[index].seriya,
                                      narxm: sav[index].narx),
                                ),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: const Color(0xFFB4B4B4)),
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
                                            sav[index].name.toString(),
                                            style: const TextStyle(fontSize: 8),
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
                                    SizedBox(
                                      height: getProportionScreenHeight(4),
                                    ),
                                    Text(
                                      sav[index].seriya.toString(),
                                      style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: getProportionScreenHeight(244),
                                      height: getProportionScreenWidth(92),
                                      child: Image.asset(
                                        sav[index].foto.toString(),
                                        height: getProportionScreenHeight(105),
                                        width: getProportionScreenWidth(165),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(
                                      height: getProportionScreenHeight(4),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '${sav[index].narx}/ day',
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right:
                                                  getProportionScreenWidth(1)),
                                          child: IconButton(
                                            iconSize: 22,
                                            icon: const Icon(
                                                Icons.bookmark_outlined),
                                            onPressed: () {
                                              homeIndex[indexCatcher[index][0]
                                                          ["saved"]
                                                      [indexCatcher[index][1]] =
                                                  '0'];
                                              indexCatcher.removeAt(index);
                                              sav.removeAt(index);

                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: sav.length,
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
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          currentIndex = 0;
          setState(() {});
          Navigator.pushNamed(context, '/bottom');
        },
        icon: const Icon(Icons.arrow_back_ios_rounded),
      ),
      actions: [
        const Icon(Icons.search),
        SizedBox(
          width: getProportionScreenWidth(13),
        )
      ],
      elevation: 0,
      centerTitle: true,
      title: const Center(
          child: Text(
        'Saved  ',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      )),
    );
  }
}
