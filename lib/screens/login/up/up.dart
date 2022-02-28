import 'package:animate_do/animate_do.dart';
import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/data/data_car.dart';
import 'package:flutter/material.dart';

class Up extends StatefulWidget {
  const Up({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<Up> {
  
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  bool s1 = false, s2 = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BounceInUp(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: getProportionScreenHeight(20),
                left: getProportionScreenWidth(15),
                right: getProportionScreenWidth(15)),
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
                  padding: EdgeInsets.only(top: getProportionScreenHeight(49)),
                  child: const Text(
                    "Create account",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 50,right: getProportionScreenWidth(5),left: getProportionScreenWidth(5)),
                  child: Form(
                    key: _formKey1,
                    child: TextFormField(
                      controller: Data.fulName,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Full name",
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
                        if (Data.fulName.text.isEmpty) {
                          return "Enter your name";
                        }
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(15),right: getProportionScreenWidth(5),left: getProportionScreenWidth(5)),
                  child: Form(
                    key: _formKey2,
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
                InkWell(
                  onTap: () {
                    if (_formKey1.currentState!.validate() && _formKey2.currentState!.validate()) {
                      setState(() {});

                      Navigator.popAndPushNamed(context, '/bottom');
                    }
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: getProportionScreenHeight(25)),
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
                        child: Center(
                          child: Text(
                            "Create Account",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: s2 == false ? Colors.black : Colors.white,
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(170)),
                  child: const Text(
                      "_________________________ or _________________________",
                      style: TextStyle(color: Colors.black38)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(36)),
                  child: Container(
                    height: getProportionScreenHeight(54),
                    width: getProportionScreenWidth(335),
                    decoration: const BoxDecoration(
                        color: Color(0XFF3B5999),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Image(
                                  image: AssetImage("assets/image/f.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(5)),
                            child: const Text(
                              "Sign up with Facebook",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getProportionScreenHeight(20)),
                  child: Container(
                    height: getProportionScreenHeight(54),
                    width: getProportionScreenWidth(335),
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            backgroundImage: NetworkImage(
                              "https://w7.pngwing.com/pngs/249/19/png-transparent-google-logo-g-suite-google-guava-google-plus-company-text-logo.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(5)),
                            child: const Text(
                              "Sign up with Google",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          )
                        ],
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
