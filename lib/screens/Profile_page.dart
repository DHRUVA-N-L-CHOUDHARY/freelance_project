import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(initialIndex: selectedIndex, length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.share),
          Icon(Icons.edit),
          Icon(Icons.more_vert_outlined),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dhruva N L Choudhary"),
                    Row(
                      children: [
                        Icon(Icons.home),
                        Text("Home Owner"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_city),
                        Text("Lucknow"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("0"),
                    Text("Posts"),
                  ],
                ),
                Column(
                  children: [
                    Text("0"),
                    Text("Followers"),
                  ],
                ),
                Column(
                  children: [
                    Text("0"),
                    Text("Following"),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  right: 0, left: 0, bottom: 10.0, top: 0.0),
              width: MediaQuery.of(context).size.width - 10,
              height: 100,
              color: Colors.white,
              child: ListView(
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 50,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      color: Colors.blue,
                      height: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      width: 100,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                child: Column(
                  children: [
                    Text("Your Requirments"),
                    Text(
                        "You have not posted any requirment. Post your material or service provider requiment here."),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        child: Row(
                          children: [
                            // Image.asset(""),
                            Icon(Icons.add),
                            Text("Post your Requirment")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //   Container(
            //     height: 150,
            //     child: Column(
            //       children:[
            TabBar(
              labelColor: Colors.black,
              controller: _tabController,
              onTap: (int index) {
                setState(() {
                  selectedIndex = index;
                  _tabController.animateTo(index);
                });
              },
              tabs: [
                Tab(
                  text: 'Saved',
                ),
                Tab(text: 'Details'),
              ],
            ),
            IndexedStack(
              children: <Widget>[
                Visibility(
                  child: Container(
                    // height: 200,
                    color: Colors.yellow,
                    child: Center(
                      child: Text('Content left'),
                    ),
                  ),
                  maintainState: true,
                  visible: selectedIndex == 0,
                ),
                Visibility(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            child: Row(
                              children: [
                                Icon(Icons.edit, size: 15,),
                                Text(
                                  "Edit Details",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                        _customtextheader(inpttxt: "Company"),
                        _customtextvalue(inpttxt: "Self Employed"),
                        _customtextheader(inpttxt: "Languages"),
                        _customtextvalue(inpttxt: "English"),
                        _customtextheader(inpttxt: "Pin Code"),
                        _customtextvalue(inpttxt: "226002"),
                        _customtextheader(inpttxt: "Mobile Number"),
                        _customtextvalue(inpttxt: "9353478558"),
                        _customtextheader(inpttxt: "Email ID"),
                        _customtextvalue(
                            inpttxt: "dhruvanlchoudhary@gmail.com"),
                      ],
                    ),
                  ),
                  maintainState: true,
                  visible: selectedIndex == 1,
                ),
              ],
              index: selectedIndex,
            ),
          ],
        ),
      ),
    );
  }

  _customtextvalue({String? inpttxt}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 15.0),
      child: Text(
        inpttxt ?? "",
        style: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
      ),
    );
  }

  _customtextheader({String? inpttxt}) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      child: Text(
        inpttxt ?? "",
        style: TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
      ),
    );
  }
}
