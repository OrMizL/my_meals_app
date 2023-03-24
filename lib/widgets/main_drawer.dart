import 'package:flutter/material.dart';

import '../screens/tabs_page.dart';
import '../screens/filters_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildListTile(String title, IconData icon, Function tapHandler) {
      return ListTile(
        leading: Icon(
          icon,
          size: 28,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: tapHandler,
      );
    }

    return Drawer(
      child: Column(
        children: [
          Container(
            height: 135,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Cooking!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          _buildListTile(
            'Meals',
            Icons.restaurant,
            () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return TabsPage();
                  },
                ),
              ),
            },
          ),
          _buildListTile(
            'Filters',
            Icons.filter_alt,
            () => {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) {
                    return FiltersPage();
                  },
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
