import 'package:bill_payment_app/screens/Scanned%20bill%20Sheet/components/nesco_card.dart';
import 'package:bill_payment_app/size_config.dart';
import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          '⚡ Invoices',
          style: TextStyle(
            color: const Color(0xFF24363C),
            fontSize: getProportionateScreenWidth(26),
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: const SingleChildScrollView(
        child: Align(
          child: Column(
            children: [
              NescoCard(),
              SizedBox(
                height: 16,
              ),
              NescoCard(),
              SizedBox(
                height: 16,
              ),
              NescoCard(),
              SizedBox(
                height: 16,
              ),
              NescoCard(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
