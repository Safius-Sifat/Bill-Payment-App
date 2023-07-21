import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class NescoCard extends StatelessWidget {
  const NescoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(201),
      width: getProportionateScreenWidth(354),
      decoration: ShapeDecoration(
        gradient: const RadialGradient(
          center: Alignment(0, 1),
          radius: 0,
          colors: [Colors.white, Color(0xFFF8F9FF)],
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0x4C56ADFE)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenHeight(24)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: const Color(0xFF24363C),
                      fontSize: getProportionateScreenWidth(8),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Customer Number\n\n',
                      ),
                      TextSpan(
                        text: '102340000001242',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  Constants.kbarcode,
                  width: getProportionateScreenWidth(93),
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: const Color(0xFF24363C),
                  fontSize: getProportionateScreenWidth(8),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  const TextSpan(
                    text: 'Bill Date\n\n',
                  ),
                  TextSpan(
                    text: '30 Sep 2020',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(14),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: const Color(0xFF24363C),
                      fontSize: getProportionateScreenWidth(8),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Due Amount\n\n',
                      ),
                      TextSpan(
                        text: 'Tk 2692.40',
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'NESCO',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF24363C),
                    fontSize: getProportionateScreenWidth(26),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
