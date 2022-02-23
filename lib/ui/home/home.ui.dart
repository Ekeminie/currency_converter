import 'package:flutter/material.dart';

import '../base.ui.dart';
import 'home.vm.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
        builder: (context, model, child)
        => Scaffold(body: Container()));
  }
}
