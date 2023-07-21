import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        width: getProportionateScreenWidth(374),
        height: getProportionateScreenHeight(134),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-1.00, -0.01),
            end: Alignment(1, 0.01),
            colors: [Color(0xFF56ADFE), Color(0xFF6B70FF)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: getProportionateScreenWidth(20),
              child: SvgPicture.asset(
                Constants.kbgmask,
                height: getProportionateScreenHeight(125),
              ),
            ),
            Positioned(
              top: getProportionateScreenHeight(24),
              left: getProportionateScreenHeight(24),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getProportionateScreenWidth(26),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: 'Your Latest Invoice\n',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6000000238418579),
                        fontSize: getProportionateScreenWidth(14),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const TextSpan(
                      text: 'Tk 2692.40',
                    ),
                    TextSpan(
                      text: '  + Tk 132.34',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(12),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: '\nLast Synced',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6000000238418579),
                          fontSize: getProportionateScreenWidth(12),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          height: getProportionateScreenHeight(2.7)),
                    ),
                    TextSpan(
                      text: '  20 Sep 2020',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(12),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
