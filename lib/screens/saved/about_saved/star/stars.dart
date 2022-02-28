import 'package:avtosalon/constants/size_config.dart';
import 'package:flutter/material.dart';

class Stars extends StatefulWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  _StarsState createState() => _StarsState();
}

class _StarsState extends State<Stars> {
  int son1 = 0, son2 = 0, son3 = 0, son4 = 0, son5 = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: getProportionScreenHeight(5)),
      child: Row(
        children: [
          Row(
            children: [
              InkWell(
                child: son1 == 1
                    ? Icon(Icons.star, color: Colors.amber.shade800, size: 20)
                    : const Icon(Icons.star_border,
                        color: Colors.black, size: 20),
                onTap: () {
                  star1();
                  son2 = 0;
                  son3 = 0;
                  son4 = 0;
                  son5 = 0;
                  setState(() {});
                },
              ),
              InkWell(
                child: son2 == 1
                    ? Icon(Icons.star, color: Colors.amber.shade800, size: 20)
                    : const Icon(Icons.star_border,
                        color: Colors.black, size: 20),
                onTap: () {
                  star2();
                  son1 = 1;
                  son3 = 0;
                  son4 = 0;
                  son5 = 0;
                  setState(() {});
                },
              ),
              InkWell(
                child: son3 == 1
                    ? Icon(Icons.star, color: Colors.amber.shade800, size: 20)
                    : const Icon(Icons.star_border,
                        color: Colors.black, size: 20),
                onTap: () {
                  star3();
                  son1 = 1;
                  son2 = 1;
                  son4 = 0;
                  son5 = 0;
                  setState(() {});
                },
              ),
              InkWell(
                child: son4 == 1
                    ? Icon(Icons.star, color: Colors.amber.shade800, size: 20)
                    : const Icon(Icons.star_border,
                        color: Colors.black, size: 20),
                onTap: () {
                  star4();
                  son1 = 1;
                  son2 = 1;
                  son3 = 1;
                  son5 = 0;
                  setState(() {});
                },
              ),
              InkWell(
                child: son5 == 1
                    ? Icon(Icons.star, color: Colors.amber.shade800, size: 20)
                    : const Icon(Icons.star_border,
                        color: Colors.black, size: 20),
                onTap: () {
                  star5();
                  son1 = 1;
                  son2 = 1;
                  son3 = 1;
                  son4 = 1;
                  setState(() {});
                },
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionScreenWidth(5)),
            child: const Text("24 revievs",
                style: TextStyle(color: Colors.black38)),
          ),
        ],
      ),
    );

  }
  star1() {
    if (son1 == 0) {
      return son1 = 1;
    } else {
      return son2 == 1 ? son1 = 1 : son1 = 0;
    }
  }

  star2() {
    if (son2 == 0) {
      return son2 = 1;
    } else {
      return son3 == 1 ? son2 = 1 : son2 = 0;
    }
  }

  star3() {
    if (son3 == 0) {
      return son3 = 1;
    } else {
      return son4 == 1 ? son3 = 1 : son3 = 0;
    }
  }

  star4() {
    if (son4 == 0) {
      return son4 = 1;
    } else {
      return son5 == 1 ? son4 = 1 : son4 = 0;
    }
  }

  star5() {
    if (son5 == 0) {
      return son5 = 1;
    } else {
      return son5 = 0;
    }
  }

}
