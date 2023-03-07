import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotficationsScreen extends StatelessWidget {
  const NotficationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Row(
          //   children: [
          //     Icon(Icons.arrow_back_ios),
          //     Text("Notifications"),
          //     Text("Messages"),
          //   ],
          // ),
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
          Text("Earlier", style: TextStyle(fontSize: 20, color: Colors.black),),
          _notificationtile(),
          _notificationtile(),
          _notificationtile(),

        ],
      ),
    );
  }

  _notificationtile() {
    return ListTile(
      leading: Container(
        height: 90,
        width: 90,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: Icon(Icons.person),
      ),
      title: Text("Your Profile has been verified. You can now save designs and share saved posts 12h"),
      isThreeLine: true,
    );
  }
}
