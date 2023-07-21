import 'package:bill_payment_app/screens/Scan%20Bill%20Screen/scan_bill_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/gradient_button.dart';
import '../../constants.dart';
import '../../size_config.dart';

class AddBillScreen extends StatelessWidget {
  const AddBillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello Siam!',
                    style: TextStyle(
                      color: Color(0xFF24363C),
                      fontSize: 26,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SvgPicture.asset(
                    Constants.kUser,
                    height: 24,
                  )
                ],
              ),
              Expanded(
                child: SvgPicture.asset(
                  Constants.kIllustration,
                  // height: 100,
                ),
              ),
              const Text(
                'Sync Your Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF24363C),
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Opacity(
                opacity: 0.80,
                child: Text(
                  'We need to know your connection details so that we can fetch the data for you.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF24363C),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              GradientButton(
                buttonText: 'SCAN THE BILL',
                icon: SvgPicture.asset(
                  Constants.kscan,
                  height: 16,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              GradientButton(
                buttonText: 'Add Manually',
                icon: SvgPicture.asset(
                  Constants.kbill,
                  height: 16,
                ),
                gradient: const LinearGradient(
                  begin: Alignment(-1.00, -0.01),
                  end: Alignment(1, 0.01),
                  colors: [Color(0xFF56ADFE), Color(0xFF6B70FF)],
                ),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ScanBillScreen())),
              )
            ],
          ),
        ),
      ),
    );
  }
}
