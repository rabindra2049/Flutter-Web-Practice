import 'package:flutter/material.dart';
import 'package:flutter_web/pages/containers/container_first.dart';
import 'package:flutter_web/pages/containers/container_second.dart';
import 'package:flutter_web/utils/constants.dart';
import 'package:flutter_web/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.sizeOf(context).width;
    h = MediaQuery.sizeOf(context).height;
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            ContainerFirst(),
            ContainerSecond(),
          ],
        ),
      ),
    );
  }
}
