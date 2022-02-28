import 'package:avtosalon/constants/size_config.dart';
import 'package:flutter/material.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  final DateTime _now = DateTime.now();
  final DateTime _firstDate = DateTime(2002, 1, 22);
  final DateTime _lastDate = DateTime(2025);
  DateTime? _tanlanganKun1;
  DateTime? _tanlanganKun2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Data",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.only(top: getProportionScreenHeight(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("From",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.only(top: getProportionScreenHeight(5)),
                    child: Container(
                        height: getProportionScreenHeight(50),
                        width: getProportionScreenWidth(157),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.8, color: const Color(0xFFB4B4B4)),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.calendar_today,
                                color: Colors.black54),
                            TextButton(
                              child: Text(
                                _tanlanganKun1 == null
                                    ? "2022.10.21"
                                    : _tanlanganKun1
                                        .toString()
                                        .substring(0, 10),
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.02),
                              ),
                              onPressed: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: _now,
                                  firstDate: _firstDate,
                                  lastDate: _lastDate,
                                ).then((value) {
                                  setState(
                                    () {
                                      _tanlanganKun1 = value;
                                    },
                                  );
                                });
                              },
                            ),
                          ],
                        )),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: getProportionScreenHeight(35),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("To",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Padding(
                padding: EdgeInsets.only(top: getProportionScreenHeight(5)),
                child: Container(
                  height: getProportionScreenHeight(50),
                  width: getProportionScreenWidth(157),
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 0.8, color: const Color(0xFFB4B4B4)),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.calendar_today_outlined,
                          color: Colors.black54),
                      TextButton(
                        child: Text(
                          _tanlanganKun2 == null
                              ? "2022.10.21"
                              : _tanlanganKun2.toString().substring(0, 10),
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02),
                        ),
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: _now,
                            firstDate: _firstDate,
                            lastDate: _lastDate,
                          ).then(
                            (value) {
                              setState(
                                () {
                                  _tanlanganKun2 = value;
                                },
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
