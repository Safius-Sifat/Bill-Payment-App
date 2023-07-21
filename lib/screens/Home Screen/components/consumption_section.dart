import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ConsumptionSection extends StatelessWidget {
  const ConsumptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(374),
      height: getProportionateScreenHeight(134),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: const Color(0xFF24363C),
                fontSize: getProportionateScreenWidth(14),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
              children: [
                const TextSpan(
                  text: 'Total Consumption\n',
                ),
                TextSpan(
                  text: '764',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(26),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: '  KWh\n',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
                const TextSpan(
                  text: '+ 045',
                  style: TextStyle(
                    color: Color(0xFFFE555D),
                  ),
                ),
                const TextSpan(
                  text: '  from last month',
                  style: TextStyle(
                    color: Color(0xFFB3B3B3),
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            Constants.kgraphmini,
            width: getProportionateScreenHeight(162),
          ),
        ],
      ),
    );
  }
}
