import 'package:flutter/material.dart';
import 'package:meals_app/Routes/categories.dart';
import 'package:meals_app/Routes/favourites.dart';
import 'package:meals_app/Widgets/main_drawer.dart';

//for drawing bottom tabbar stateful widget is needed while top tabBar could be drawn even with stateless widget
class BottomTab extends StatefulWidget {
  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  final List<Widget> screens = [CategoriesList(), Favorites()];
  int selectedIndex = 0;

  void selectTab(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      drawer: MainDrawer(),
      drawerEdgeDragWidth: 150,
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: selectTab,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favorites')
        ],
      ),
    );
  }
}

// class TopTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Meals'),
//           bottom: TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.category),
//               ),
//               Tab(
//                 icon: Icon(Icons.favorite),
//               )
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             CategoriesList(),
//             Favorites(),
//           ],
//         ),
//       ),
//     );
//   }
// }
