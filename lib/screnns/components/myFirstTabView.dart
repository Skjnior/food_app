import 'package:flutter/material.dart';



class MyFirstTabView extends StatelessWidget {
  const MyFirstTabView({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Row(
        children: [
          Expanded(
            child: TabBarView(
                controller: tabController,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          width: 300,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,

                          ),
                        ),
                        Container(
                          height: 300,
                          width: 300,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,

                          ),
                        ),
                        Container(
                          height: 300,
                          width: 300,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,

                          ),
                        ),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 300,
                          width: 300,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red,

                          ),
                        ),
                        Container(
                          height: 300,
                          width: 300,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,

                          ),
                        ),
                        Container(
                          height: 300,
                          width: 300,
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.cyan,

                          ),
                        ),
                      ],
                    ),
                  ),

                ]
            ),
          ),
        ],
      ),
    );
  }
}
