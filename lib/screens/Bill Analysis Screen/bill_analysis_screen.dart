// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bill_payment_app/screens/Home%20Screen/components/consumption_section.dart';
import 'package:bill_payment_app/screens/Scanned%20bill%20Screen/components/nesco_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/gradient_button.dart';
import '../../constants.dart';
import '../../size_config.dart';

class BillAnalysisScreen extends StatelessWidget {
  const BillAnalysisScreen({
    Key? key,
    required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.9,
        builder: (_, controller) => Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Stack(children: [
                Positioned(
                  right: getProportionateScreenWidth(24),
                  top: getProportionateScreenWidth(24),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: SvgPicture.asset(
                      Constants.kclose,
                      // ignore: deprecated_member_use
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(36)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Analyse Your Bill',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xFF24363C),
                            fontSize: getProportionateScreenWidth(20),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const NescoCard(),
                        const ConsumptionSection(),
                        const ConsumptionSection(),
                        SizedBox(
                          height: getProportionateScreenHeight(36),
                        ),
                        SizedBox(
                            width: getProportionateScreenWidth(354),
                            child: GradientButton(
                              buttonText: "PAY THE BILL",
                              onTap: () => Navigator.of(context).pop(),
                            ))
                      ],
                    ),
                  ),
                )
              ]),
            ));
  }
}
