import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(16)),
      child: Container(
        width: getProportionateScreenWidth(242),
        decoration: BoxDecoration(
            color: const Color(0xFFB3B3B3).withOpacity(0.10),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorColor: Colors.white,
                indicatorWeight: 0,
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.w700, color: Color(0xFFA056FE)),
                unselectedLabelStyle: const TextStyle(
                    fontWeight: FontWeight.w500, color: Color(0xFFB3B3B3)),
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                controller: tabController,
                tabs: const [
                  Tab(
                    text: '6 Months',
                  ),
                  Tab(
                    text: '1 Year',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
