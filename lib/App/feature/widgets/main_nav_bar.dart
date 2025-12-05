import 'package:flutter/material.dart';

class MainNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MainNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const Color activeColor = Color(0xFF029C71);
    const Color inactiveColor = Colors.grey;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 20,

      selectedItemColor: activeColor,
      unselectedItemColor: inactiveColor,
      iconSize: 24,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Image.asset(
              'assets/images/HomepageAndPersonalization/Home.png',
              color: currentIndex == 0 ? activeColor : inactiveColor,
              width: 24,
              height: 24,
            ),
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Image.asset(
              'assets/images/HomepageAndPersonalization/Tanaman.png',
              color: currentIndex == 1 ? activeColor : inactiveColor,
              width: 24,
              height: 24,
            ),
          ),
          label: 'Pantau Tanaman',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Image.asset(
              'assets/images/HomepageAndPersonalization/Marketplace.png',
              color: currentIndex == 2 ? activeColor : inactiveColor,
              width: 24,
              height: 24,
            ),
          ),
          label: 'Marketplace',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Image.asset(
              'assets/images/HomepageAndPersonalization/Profile.png',
              color: currentIndex == 3 ? activeColor : inactiveColor,
              width: 24,
              height: 24,
            ),
          ),
          label: 'Profil',
        ),
      ],
    );
  }
}
