import 'package:Bitalarm/screens/favorites/favorites.screen.dart';
import 'package:Bitalarm/screens/portfolio/portfolio.screen.dart';
import 'package:Bitalarm/screens/toplist/toplist.screen.dart';
import 'package:flutter/material.dart';
import 'package:nav_router/nav_router.dart';

class BitalarmBottomNavBar extends StatelessWidget {
  final String active;

  BitalarmBottomNavBar({this.active});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text('Favorites'),
              activeIcon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('All'),
              activeIcon: Icon(Icons.filter_list)),
          BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text('Portfolio'),
              activeIcon: Icon(Icons.monetization_on)),
        ],
        currentIndex: ['favorites', 'toplist', 'portfolio']
            .indexWhere((element) => element == active),
        onTap: (int i) {
          int currentIndex = ['favorites', 'toplist', 'portfolio']
              .indexWhere((element) => element == active);

          if (currentIndex == i) {
            return;
          }

          Widget screen =
              [FavoritesScreen(), TopListScreen(), PortfolioScreen()][i];
          routePush(screen, RouterType.material);
        });
  }
}
