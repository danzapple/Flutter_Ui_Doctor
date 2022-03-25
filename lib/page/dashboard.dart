import 'package:flutter/material.dart';
import 'package:project_flutter_pemula_dicoding/page/dashboard_phone.dart';
import 'package:project_flutter_pemula_dicoding/page/dashboard_web.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const DashboardPhone();
              } else if (constraints.maxWidth <= 1200) {
                return const DashboardWeb(gridCount: 4);
              } else {
                return const DashboardWeb(gridCount: 6);
              }
            },
          ),
        );
      },
    );
  }
}
