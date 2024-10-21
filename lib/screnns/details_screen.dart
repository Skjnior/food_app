import 'package:flutter/material.dart';
import 'package:food_app/screnns/components/mySecondTabBar.dart';
import 'package:food_app/screnns/components/mySecondTabBarView.dart';
import 'components/myFirstTabBar.dart';
import 'components/myFirstTabView.dart';
import 'components/tabBarContainer.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> with TickerProviderStateMixin{
late TabController tabController;
late TabController secondTabController;

@override
void initState() {
// TODO: implement initState
tabController = TabController(length: 2, vsync: this);
secondTabController = TabController(length: 4, vsync: this);
super.initState();
}


@override
void dispose() {
// TODO: implement dispose
tabController.dispose();
secondTabController.dispose();
super.dispose();
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        excludeHeaderSemantics: true,
        leading: Container(
          margin: const EdgeInsets.only(top: 10, bottom: 7, left: 10, right: 10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 4, right: 10.0, bottom:0),
            child: Center(
              child: IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(
                      Icons.arrow_back_ios,
                    size: 25,
                  ),
              ),
            ),
          ),
        ),
      ),


      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [

              MyContainerForTabarController(tabController: tabController),

              const Row(
                children: [
                  SizedBox(
                    child: Text("data"),
                  ),
                ],
              ),

              MyFirstTabView(tabController: tabController),

              const Row(
                children: [
                  SizedBox(
                    child: Text("data"),
                  ),
                ],
              ),

              const SizedBox(height: 10,),

              MySecondTabBar(secondTabController: secondTabController),

              const SizedBox(height: 10,),

              MySecondTabView(secondTabBarController: secondTabController),



              const SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}









