import 'package:animate_do/animate_do.dart';
import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:flutter/material.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  _WelcomeBackState createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BounceInUp(
      child: Scaffold(
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
                      top: getProportionScreenHeight(130),
                      left: getProportionScreenWidth(80),
                      right: getProportionScreenWidth(80)),
                  child: const Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 65),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: Data.number,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixText: "+998 ",
                        hintText: "Phone number",
                        contentPadding:
                            const EdgeInsets.only(left: 10, bottom: 35),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.red.shade800),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.cyan.shade800),
                        ),
                      ),
                      validator: (value) {
                        if (Data.number.text.length != 9) {
                          return "Enter 9 numbers";
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {});

                        Navigator.popAndPushNamed(context, '/verificationPage');
                      }
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: getProportionScreenHeight(10)),
                      child: Container(
                        height: getProportionScreenHeight(54),
                        width: getProportionScreenWidth(335),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                                width: getProportionScreenWidth(1),
                                color: Colors.black45),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8))),
                        child: const Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
