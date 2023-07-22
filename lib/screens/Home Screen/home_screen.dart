// ignore_for_file: deprecated_member_use

import 'package:bill_payment_app/screens/Bill%20Analysis%20Sheet/bill_analysis_sheet.dart';
import 'package:bill_payment_app/screens/Scanned%20bill%20Sheet/scanned_bill_sheet.dart';
import 'package:bill_payment_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'components/consumption_section.dart';
import 'components/custom_tab_bar.dart';
import 'components/graph_indicator.dart';
import 'components/hero_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void _analysisBillModalSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: false,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return BillAnalysisSheet(
          context: context,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          '⚡ Hello Siam!',
          style: TextStyle(
            color: const Color(0xFF24363C),
            fontSize: getProportionateScreenWidth(26),
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.replay_outlined))
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
              onTap: () => _analysisBillModalSheet(context),
              child: const HeroSection()),
          GestureDetector(
              onTap: () => _analysisBillModalSheet(context),
              child: const ConsumptionSection()),
          const Divider(height: 2, color: Color(0xFFE4E4E4)),
          CustomTabBar(tabController: tabController),
          const GraphIndicator(),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(16)),
            child: SvgPicture.asset(
              Constants.kchart,
              width: getProportionateScreenWidth(366),
              height: getProportionateScreenHeight(198),
            ),
          ),
        ],
      ),
    );
  }
}
