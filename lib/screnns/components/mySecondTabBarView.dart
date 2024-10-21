import 'package:flutter/material.dart';



class MySecondTabView extends StatelessWidget {
  const MySecondTabView({
    super.key,
    required this.secondTabBarController,
  });

  final TabController secondTabBarController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Row(
        children: [
          Expanded(
            child: TabBarView(
                controller: secondTabBarController,
                physics: NeverScrollableScrollPhysics(),
                children: [

                SizedBox(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          height: 250,
                          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink,
                          ),
                        ),
                        Container(
                          height: 250,
                          margin: EdgeInsets.only(left: 10, right: 10,  bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,

                          ),
                        ),
                        Container(
                          height: 250,
                          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.teal,

                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                  Column(
                    children: [
                      Container(
                        height: 250,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,

                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        height: 250,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,

                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        height: 250,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.teal,

                        ),
                      ),
                    ],
                  ),

                ]
            ),
          ),
        ],
      ),
    );
  }
}
