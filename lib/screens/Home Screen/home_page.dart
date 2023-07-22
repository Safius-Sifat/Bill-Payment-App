// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:bill_payment_app/screens/Home%20Screen/home_screen.dart';
import 'package:bill_payment_app/screens/Invoice%20Screen/invoice_screen.dart';
import 'package:bill_payment_app/screens/Manually%20Add%20bill%20Sheet/manual_add_bill_sheet.dart';
import 'package:bill_payment_app/screens/Scan%20Bill%20Screen/scan_bill_screen.dart';

import '../../constants.dart';
import '../Scanned bill Sheet/scanned_bill_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.value,
  }) : super(key: key);
  final String value;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int times = 0;
  @override
  void initState() {
    super.initState();

    if (times < 1 && widget.value == "manual") {
      times++;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _manuallyAddBillModalSheet(context);
      });
    } else if (times < 1) {
      times++;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scannedBillModalSheet(context);
      });
    }
  }

  void _manuallyAddBillModalSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return ManualAddBillSheet(
          context: context,
        );
      },
    );
  }

  void _scannedBillModalSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return ScannedBillSheet(
          context: context,
        );
      },
    );
  }

  List<Widget> widgetList = [
    const HomeScreen(),
    const InvoiceScreen(),
    const ScanBillScreen(),
    const Center(child: Text("User"))
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          selectedItemColor: const Color(0xFF6B70FF),
          unselectedItemColor: Colors.grey[500],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Constants.kbill,
                  color: selectedIndex == 1
                      ? const Color(0xFF6B70FF)
                      : Colors.grey[500],
                ),
                label: "Bill"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Constants.kscan,
                  color: selectedIndex == 2
                      ? const Color(0xFF6B70FF)
                      : Colors.grey[500],
                ),
                label: "Scan"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Constants.kUser,
                  color: selectedIndex == 3
                      ? const Color(0xFF6B70FF)
                      : Colors.grey[500],
                ),
                label: "User"),
          ]),
    );
  }
}
