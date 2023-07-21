// ignore_for_file: public_member_api_docs, sort_constructors_first, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:bill_payment_app/common/gradient_button.dart';
import 'package:bill_payment_app/constants.dart';
import 'package:bill_payment_app/size_config.dart';

import 'components/custom_text.dart';
import 'components/nesco_card.dart';

class ScannedBillScreen extends StatelessWidget {
  const ScannedBillScreen({
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
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Stack(children: [
          Positioned(
            right: getProportionateScreenWidth(24),
            top: getProportionateScreenWidth(24),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: SvgPicture.asset(
                Constants.kclose,
                color: Colors.black,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                Constants.kgradientbill,
                height: getProportionateScreenWidth(32),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: const Color(0xFF24363C),
                    fontSize: getProportionateScreenWidth(20),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    const TextSpan(
                      text: 'Your Bill Info\n\n',
                    ),
                    TextSpan(
                      text:
                          'We\'ve fetched the details from your bill. Please verify the details',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const NescoCard(),
              SizedBox(
                height: getProportionateScreenHeight(112),
                width: getProportionateScreenWidth(354),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Board Name',
                          ),
                          CustomText(
                            text: 'S&D/ESU',
                          ),
                          CustomText(
                            text: 'Customer Name',
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomText(
                            text: 'NESCO',
                          ),
                          CustomText(
                            text: 'Rajshahi S&D1',
                          ),
                          CustomText(
                            text: 'Siam Ahmed',
                          ),
                        ],
                      ),
                    ]),
              ),
              SizedBox(
                  width: getProportionateScreenWidth(354),
                  child: GradientButton(
                    buttonText: "CONTINUE",
                    onTap: () => Navigator.of(context).pop(),
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
