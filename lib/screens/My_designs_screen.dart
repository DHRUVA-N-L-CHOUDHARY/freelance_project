import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mydesignsscreen extends StatefulWidget {
  const Mydesignsscreen({super.key});

  @override
  State<Mydesignsscreen> createState() => _MydesignsscreenState();
}

class _MydesignsscreenState extends State<Mydesignsscreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
        title: Text('My Designs', style: TextStyle(color: Colors.black),),
        bottom: TabBar(
          labelColor: Colors.black,
          controller: _tabController,
          tabs: [
            Tab(text: 'Designs', ),
            Tab(text: 'Community'),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Icon(Icons.share, color: Colors.black,),
          )
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(''),
              Text('No saved posts to show!' ,style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600,
              ),),
              Text("Explore designs & save them here",style: TextStyle(
                fontSize: 13, color: Colors.black, fontWeight: FontWeight.w400,
              ),)
            ],
          )),
          Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(''),
              Text('No saved posts to show!', style: TextStyle(
                    fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600,
              ),),
              Text("Explore designs & save them here",style: TextStyle(
                fontSize: 13, color: Colors.black, fontWeight: FontWeight.w400,
              ),)
            ],
          )),
        ],
      ),
    );
  }
}