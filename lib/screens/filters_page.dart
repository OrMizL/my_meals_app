import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters Page')),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filters!'),
      ),
    );
  }
}
