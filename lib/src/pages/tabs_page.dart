import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/src/pages/home_page.dart';
import 'package:shop_app/src/pages/profile_page.dart';
import 'package:shop_app/src/pages/shop_page.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        physics: NeverScrollableScrollPhysics(),
        children: [HomePage(), ProfilePage(), ShopPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() => _currentIndex = index);
          _pageController.animateToPage(_currentIndex,
              duration: Duration(milliseconds: 250), curve: Curves.easeInOut);
        },
        elevation: 0,
        backgroundColor: Colors.transparent,
        currentIndex: _currentIndex,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Color.fromRGBO(183, 188, 201, 1),
        items: [
          BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(EvaIcons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(EvaIcons.shoppingCart), label: ''),
        ],
      ),
    );
  }
}
