import 'package:flutter/material.dart';


class MyFirstTabBarr extends StatelessWidget {
  const MyFirstTabBarr({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      physics: const AlwaysScrollableScrollPhysics(),
      enableFeedback: true,
      automaticIndicatorColorAdjustment: true,
      indicatorPadding: const EdgeInsets.only(bottom: 8, top: 1, left: 10, right: 10),
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.blue,
      indicatorWeight: 1,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      controller: tabController,
      tabs: [
        Tab(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 6, top: 4), // Padding pour espacer le texte
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                        Icons.delivery_dining
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Delivery",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Tab(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 6, top: 4),// Padding pour espacer le texte
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                        Icons.delivery_dining
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Delivery",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}