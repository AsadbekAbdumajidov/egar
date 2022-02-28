import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SliderPackage extends StatefulWidget {
  const SliderPackage({Key? key}) : super(key: key);

  @override
  State<SliderPackage> createState() => _SliderState();
}

class _SliderState extends State<SliderPackage> {
  SfRangeValues _values = const SfRangeValues(80.0, 350.0);

  @override
  Widget build(BuildContext context) {
    return SfRangeSlider(
      min: 0,
      max: 500,
      inactiveColor: const Color(0xFFB4B4B4),
      activeColor: Colors.yellow,
      values: _values,
      interval: 100,
      showTicks: true,
      showLabels: true,
      enableTooltip: true,
      minorTicksPerInterval: 1,
      onChanged: (SfRangeValues values) {
        setState(() {
          _values = values;
        });
      },
    );
  }
}
