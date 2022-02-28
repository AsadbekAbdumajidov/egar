import 'package:avtosalon/constants/size_config.dart';
import 'package:flutter/material.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  final _nameController = TextEditingController();
  final _nameController2 = TextEditingController();
  final _nameController3 = TextEditingController();
  final _nameController4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: getProportionScreenHeight(100),
                  width: double.infinity,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.black,
                          size: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionScreenWidth(5),
                              top: getProportionScreenHeight(4)),
                          child: const Text(
                            "Back",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getProportionScreenHeight(151),
                      left: getProportionScreenWidth(100),
                      right: getProportionScreenWidth(100)),
                  child: SizedBox(
                    height: getProportionScreenHeight(21),
                    width: getProportionScreenWidth(210),
                    child: const Center(
                      child: Text(
                        "Enter Verification code",
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getProportionScreenHeight(10),
                      left: getProportionScreenWidth(112),
                      right: getProportionScreenWidth(112)),
                  child: SizedBox(
                    height: getProportionScreenHeight(30),
                    width: getProportionScreenWidth(141),
                    child: const Center(
                      child: Text(
                        "Enter OPT code send to your mobile number",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color(0XFFB4B4B4)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 37, left: 52, right: 52),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: getProportionScreenHeight(48.03),
                        width: getProportionScreenWidth(55),
                        decoration: BoxDecoration(
                          color: _nameController.text.length == 1
                              ? Colors.amber.shade100
                              : Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getProportionScreenWidth(21),
                            top: getProportionScreenHeight(10),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                            controller: _nameController,
                            onChanged: (val) {
                              _nameController.addListener(() {
                                if (val.length == 1) {
                                  setState(() {});
                                }
                              });
                            },
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(),
                          ),
                        ),
                      ),
                      Container(
                        height: getProportionScreenHeight(48.03),
                        width: getProportionScreenWidth(55),
                        decoration: BoxDecoration(
                          color: _nameController2.text.length == 1
                              ? Colors.amber.shade100
                              : Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getProportionScreenWidth(21),
                            top: getProportionScreenHeight(10),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                            controller: _nameController2,
                            onChanged: (val) {
                              _nameController2.addListener(() {
                                if (val.length == 1) {
                                  setState(() {});
                                }
                              });
                            },
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(),
                          ),
                        ),
                      ),
                      Container(
                        height: getProportionScreenHeight(48.03),
                        width: getProportionScreenWidth(55),
                        decoration: BoxDecoration(
                          color: _nameController3.text.length == 1
                              ? Colors.amber.shade100
                              : Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getProportionScreenWidth(21),
                            top: getProportionScreenHeight(10),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                            controller: _nameController3,
                            onChanged: (val) {
                              _nameController3.addListener(() {
                                if (val.length == 1) {
                                  setState(() {});
                                }
                              });
                            },
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(),
                          ),
                        ),
                      ),
                      Container(
                        height: getProportionScreenHeight(48.03),
                        width: getProportionScreenWidth(55),
                        decoration: BoxDecoration(
                          color: _nameController4.text.length == 1
                              ? Colors.amber.shade100
                              : Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getProportionScreenWidth(21),
                            top: getProportionScreenHeight(10),
                          ),
                          child: TextFormField(
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w700),
                            controller: _nameController4,
                            onChanged: (val) {
                              _nameController4.addListener(() {
                                if (val.length == 1) {
                                  setState(() {});
                                }
                              });
                            },
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(35)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.grey),
                        minimumSize: const Size(335, 54),
                        primary: _nameController4.text.length == 1
                            ? Colors.amber.shade100
                            : Colors.white,
                        elevation: 0),
                    child: const Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/bottom', (route) => false);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
