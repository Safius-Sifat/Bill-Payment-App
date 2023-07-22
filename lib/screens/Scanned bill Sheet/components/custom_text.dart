import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color(0xFF24363C),
        fontSize: getProportionateScreenWidth(16),
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
