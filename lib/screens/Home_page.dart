import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  late int tabIndex;
   NavigationScreen({super.key, this.tabIndex = 2});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  void changeTabIndex(int index)
  {
    setState(() {
      widget.tabIndex = index;      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 57,
        child: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          onTap: changeTabIndex,
          iconSize: 15.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.shifting,
          currentIndex: widget.tabIndex,
          items: [
            _bottomNavigationBarItem(
              icon: '',
              label: "Home",
            ),
            _bottomNavigationBarItem(
              icon: '',
              label: "",
            ),
            _bottomNavigationBarItem(
              icon: '',
              label: "Explore",
            ),
            _bottomNavigationBarItem(
              icon: '',
              label: "Community",
            ),
            _bottomNavigationBarItem(
              icon: '',
              label: "Saved",
            ),
             _bottomNavigationBarItem(
              icon: '',
              label: "Profile",
            )
          ],
        ),
      ),
    );
  }

  _bottomNavigationBarItem({required String icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(icon, scale:1.7, height: 26, color: Colors.black54, ),
      activeIcon: Image.asset(icon, scale:1.3, height: 27, color: Colors.blue),
      label: label,
    );
}}