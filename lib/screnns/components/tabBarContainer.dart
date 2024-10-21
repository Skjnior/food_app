import 'package:flutter/material.dart';
import 'package:food_app/screnns/components/myFirstTabBar.dart';


class MyContainerForTabarController extends StatelessWidget {
  const MyContainerForTabarController({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 510,
      width: 500,
      decoration: const BoxDecoration(
        color: Colors.red,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 20,),
          Stack(
              children: [
                Card(
                  margin: const EdgeInsets.only(top: 30,),
                  color: Colors.amber,
                  child: Container(
                    height: 280,
                    width: 510,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 55.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 18.0),
                            child: Text("Burguers Factory"),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 17.0),
                            child: Row(
                              children: [
                                Icon(
                                    Icons.star
                                ),
                                Text("4.9"),
                                SizedBox(width: 8,),
                                Text("data"),
                                SizedBox(width: 5,),
                                Icon(
                                    Icons.keyboard_arrow_down
                                ),
                              ],
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                ),

                const Positioned(
                    bottom: 228,
                    top: 0,
                    left: 0,
                    right: 310,
                    child: CircleAvatar()
                ),
                Positioned(
                    bottom: 180,
                    top: 0,
                    left: 360,
                    right: 0,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(
                              Icons.share_outlined
                          ),
                        ),
                        const Icon(
                            Icons.favorite_border
                        ),
                      ],
                    )
                ),


                Positioned(
                  bottom: 0,
                  top: 160,
                  left: 0,
                  right: 0,
                  child:    SingleChildScrollView(
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 25, right: 25),
                          width: 390,
                          height: 40, // Ajuste la hauteur selon tes besoins
                          decoration: BoxDecoration(
                            color: Colors.grey[200], // Couleur de fond grise pour le Container
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        MyFirstTabBarr(tabController: tabController),
                      ],
                    ),
                  ),
                ),


                const Positioned(
                    bottom: 10,
                    top: 240,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("datfddfda"),
                            Text("datdfdfdsa"),
                            Text("dfdsfdsfd"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("daa"),
                            Text("data"),
                            Text("data"),
                          ],
                        ),
                      ],
                    )
                ),

              ]
          ),
        ],
      ),
    );
  }
}

