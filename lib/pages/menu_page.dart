import 'package:flutter/material.dart';
import 'package:nexxora/models/menu_model.dart';
import 'package:nexxora/pages/calls_page.dart';
import 'package:nexxora/pages/group_page.dart';
import 'package:nexxora/pages/home_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int selectedIndex = 0;
  Map<int, MenuModel> menu = {
    0: MenuModel(
      icon: Icons.chat_bubble_outline,
      activeIcon: Icons.chat_bubble,
      label: "Chats",
      color: Colors.white,
      page: HomePage(),
    ),
    1: MenuModel(
      icon: Icons.people_outline,
      activeIcon: Icons.people,
      label: "Group",
      color: Colors.white,
      page: GroupPage(),
    ),
    2: MenuModel(
      icon: Icons.call_outlined,
      activeIcon: Icons.call,
      label: "Call",
      color: Colors.white,
      page: CallsPage(),
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff1E293B),
        currentIndex: selectedIndex,
        elevation: 10,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        items: menu.entries
            .map(
              (a) => BottomNavigationBarItem(
                icon: Icon(a.value.icon, color: Colors.white),
                activeIcon: Icon(a.value.activeIcon, color: a.value.color),
                label: a.value.label,
              ),
            )
            .toList(),
      ),
      body: menu[selectedIndex]!.page,
    );
  }
}
