import 'package:avtosalon/constants/size_config.dart';
import 'package:avtosalon/screens/login/in/welcome_back.dart';
import 'package:flutter/material.dart';

class Egar extends StatelessWidget {
  const Egar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  "assets/image/egar.png",
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
              flex: 8,
            ),
            Expanded(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const WelcomeBack()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black),
                        color: Colors.black,
                      ),
                      child: const Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: getProportionScreenHeight(5)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/sign_up');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 5),
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold,fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
