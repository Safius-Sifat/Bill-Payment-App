import 'package:flutter/material.dart';

import '../../../size_config.dart';

class GraphIndicator extends StatelessWidget {
  const GraphIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(290),
      height: getProportionateScreenHeight(22),
      child: Row(
        children: [
          Container(
              height: getProportionateScreenWidth(16),
              width: getProportionateScreenWidth(16),
              decoration: const BoxDecoration(
                color: Color(0xFF56ADFE),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              )),
          const SizedBox(
            width: 2,
          ),
          Text(
            'Units Consumed',
            style: TextStyle(
              color: const Color(0xFF24363C),
              fontSize: getProportionateScreenWidth(14),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Container(
              height: getProportionateScreenWidth(16),
              width: getProportionateScreenWidth(16),
              decoration: const BoxDecoration(
                color: Color(0xFF6C71FF),
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              )),
          const SizedBox(
            width: 2,
          ),
          Text(
            'Amount Paid ',
            style: TextStyle(
              color: const Color(0xFF24363C),
              fontSize: getProportionateScreenWidth(14),
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
