import 'package:flutter/material.dart';

import '../widget/main_drawer.dart';

class FiltersScreen extends StatelessWidget {

  static const routeName = '/filter-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: const Center(
        child: Text('Filters!'),
      ),
    );
  }
}
