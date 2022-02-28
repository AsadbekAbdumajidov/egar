import 'package:animate_do/animate_do.dart';
import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return FadeInUp(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionScreenWidth(20),
              vertical: getProportionScreenHeight(10)),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: getProportionScreenHeight(80),
                        width: getProportionScreenWidth(80),
                        decoration: const BoxDecoration(
                            color: Color(0xFFEBEAF3),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                image: AssetImage("assets/image/person.png"),
                                fit: BoxFit.scaleDown)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                Data.fulName.text.isEmpty
                                    ? "Asadbek Abdumajidov"
                                    : Data.fulName.text,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                "id: 259760",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: getProportionScreenHeight(40)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.content_paste,
                                  size: 28,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionScreenWidth(8)),
                                  child: const Text(
                                    "Payment methods",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: getProportionScreenWidth(27)),
                        child: const Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: getProportionScreenHeight(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.mail_outline_sharp,
                                  size: 28,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionScreenWidth(8)),
                                  child: const Text(
                                    "Messages",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: getProportionScreenWidth(27)),
                        child: const Divider(
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/acc');
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: getProportionScreenHeight(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.account_box_outlined,
                                    size: 28,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: getProportionScreenWidth(8)),
                                    child: const Text(
                                      "Account details",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.black,
                                size: 25,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: getProportionScreenWidth(27)),
                        child: const Divider(
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: getProportionScreenHeight(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.login,
                                  size: 28,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionScreenWidth(8)),
                                  child: const Text(
                                    "Log out",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.black,
                              size: 25,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: getProportionScreenWidth(27)),
                        child: const Divider(
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
               Positioned(
                left: getProportionScreenWidth(55),
                top: getProportionScreenHeight(55),
                  child:const CircleAvatar(
                    radius: 15,
                backgroundColor: Colors.amber,
                child: Center(
                  child: Icon(Icons.add_a_photo,color: Colors.white,size: 18,),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
