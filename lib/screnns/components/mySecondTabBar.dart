import 'package:flutter/material.dart';


class MySecondTabBar extends StatelessWidget {
  const MySecondTabBar({
    super.key,
    required this.secondTabController,
  });

  final TabController secondTabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                dividerColor: Colors.transparent,
                labelColor: Colors.grey,
                controller: secondTabController,
                tabs:  [

                   Container(
                     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(25),
                     ),
                     child: Tab(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.grey,
                         ),
                         child: const Padding(
                           padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5.0),
                           child: Center(
                             child: Text(
                                 "All",
                               style: TextStyle(
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   Container(
                     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: Tab(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.grey,
                         ),
                         child: const Padding(
                           padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5.0),
                           child: Center(
                             child: Text(
                                 "Burgures",
                               style: TextStyle(
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   Container(
                     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(25),
                     ),
                     child: Tab(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.grey,
                         ),
                         child: const Padding(
                           padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5.0),
                           child: Center(
                             child: Text(
                                 "Empanadas",
                               style: TextStyle(
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   Container(
                     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(25),
                     ),
                     child: Tab(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Colors.grey,
                         ),
                         child: const Padding(
                           padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5.0),
                           child: Center(
                             child: Text(
                                 "Fries",
                               style: TextStyle(
                                 color: Colors.white,
                               ),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),



                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}