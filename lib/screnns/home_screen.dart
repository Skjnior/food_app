import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: MyCustomAppBar(),

        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10,),
              Container(
                height: 230,
                width: 500,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text("data"),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 150,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red,
                                    ), //BoxDecoration
                                  ),
                                  const SizedBox( height: 8,),
                                  Container(
                                      width: 150,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.red,
                                      ) //BoxDecoration
                                  ),//Container
                                ],
                              ), //Container
                            ], //<Widget>[]
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 8,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Row(
                         children: [
                           Container(
                             width: 260,
                             height: 120,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.black87
                             ), //BoxDecoration
                           ),
                         ],
                       ),

                       const SizedBox(height: 8,),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             width: 130,
                             height: 200,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.teal,
                             ), //BoxDecoration
                           ),
                           const SizedBox(width: 8,),

                           Container(
                             width: 120,
                             height: 120,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.greenAccent,
                             ), //BoxDecoration
                           ),
                         ],
                       ),




                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 18.0,),
                    child: Text("data"),
                  ),
                ],
              ),
              const SizedBox(height: 10,),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 190,
                          width: 420,
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                        Container(
                          height: 190,
                          width: 420,
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                        Container(
                          height: 190,
                          width: 420,
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                        Container(
                          height: 190,
                          width: 420,
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30)
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20,),
            ], //<widget>[]
          ),
        ),
      ),
    );
  }
}



class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Size get preferredSize => Size.fromHeight(180.0);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      color: Colors.amber,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            height: 100,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("data"),
                    Row(
                      children: [
                        Icon(
                          Icons.menu,
                        ),
                        Text("data"),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.menu,
                ),
              ],
            ),
          ),



          Positioned(
            top: 100.0, // Positionnement de la barre de recherche
            left: 0.0,
            right: 0.0,
            child: Container(
              width: 150,
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(80.0),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 32,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black45,
                    ),
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
