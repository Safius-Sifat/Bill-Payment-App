// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.buttonText,
    this.icon = const Placeholder(
      color: Colors.transparent,
      fallbackHeight: 0,
      fallbackWidth: 0,
    ),
    this.gradient = const LinearGradient(
      begin: Alignment(-1.00, -0.01),
      end: Alignment(1, 0.01),
      colors: [Color(0xFFA056FE), Color(0xFF916BFF)],
    ),
    this.onTap,
  }) : super(key: key);

  final String buttonText;
  final Widget icon;
  final Gradient gradient;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Ink(
      child: InkWell(
        onTap: onTap,
        child: Container(
            height: 60,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              gradient: gradient,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(
              children: [
                icon,
                Expanded(
                  child: Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
