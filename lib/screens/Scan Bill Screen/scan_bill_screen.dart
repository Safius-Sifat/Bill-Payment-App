import 'package:bill_payment_app/constants.dart';
import 'package:bill_payment_app/screens/Home%20Screen/home_screen.dart';
import 'package:bill_payment_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScanBillScreen extends StatelessWidget {
  const ScanBillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomeScreen())),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    Constants.kscanbg,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                  vertical: getProportionateScreenHeight(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        Constants.kflash,
                        height: getProportionateScreenHeight(24),
                      ),
                      SvgPicture.asset(
                        Constants.kclose,
                        height: getProportionateScreenHeight(24),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    Constants.kscanFrame,
                    height: getProportionateScreenHeight(434),
                    width: getProportionateScreenWidth(342),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Scan the Bill',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Place the bill close to scan your bill for\ngetting more info about your bill',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: getProportionateScreenHeight(1.7)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
