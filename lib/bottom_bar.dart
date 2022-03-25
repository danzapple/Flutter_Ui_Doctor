import 'package:flutter/material.dart';
import 'package:project_flutter_pemula_dicoding/page/dashboard.dart';

class HomeBottomBar extends StatefulWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  _HomeBottomBarState createState() => _HomeBottomBarState();
}

class _HomeBottomBarState extends State<HomeBottomBar> {
  List<Widget> tabs = [
    const Center(child: Text("Home", style: TextStyle(color: Colors.white))),
    const Center(child: Text("Search", style: TextStyle(color: Colors.white))),
    const Center(child: Text("Profile", style: TextStyle(color: Colors.white))),
    const Center(
        child: Text("Notification", style: TextStyle(color: Colors.white))),
    const Center(
        child: Text("Add item", style: TextStyle(color: Colors.white))),
  ];

  int currentPage = 0;

  // setPage(index) {
  //   setState(() {
  //     currentPage = index;
  //   });
  // }

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentPageWidget = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey.withOpacity(0.9),
      body: PageStorage(
        child: currentPageWidget,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade400,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.white.withOpacity(0.7),
          shape: const CircularNotchedRectangle(),
          child: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPageWidget = const Dashboard();
                        currentPage = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentPage == 0
                            ? const Icon(Icons.home,
                                color: Colors.blue, size: 30)
                            : Icon(Icons.home_outlined,
                                color: Colors.grey.shade600, size: 30),
                        Text('Home',
                            style: TextStyle(
                                color: currentPage == 0
                                    ? Colors.blue
                                    : Colors.grey.shade600,
                                fontSize: 10))
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPageWidget = const Dashboard();
                        currentPage = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentPage == 1
                            ? const Icon(Icons.date_range,
                                color: Colors.blue, size: 30)
                            : Icon(Icons.date_range_outlined,
                                color: Colors.grey.shade600, size: 30),
                        Text('Date',
                            style: TextStyle(
                                color: currentPage == 1
                                    ? Colors.blue
                                    : Colors.grey.shade600,
                                fontSize: 10))
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPageWidget = const Dashboard();
                        currentPage = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentPage == 2
                            ? const Icon(Icons.notifications_active,
                                color: Colors.blue, size: 30)
                            : Icon(Icons.notifications_active_outlined,
                                color: Colors.grey.shade600, size: 30),
                        Text('Notifications',
                            style: TextStyle(
                                color: currentPage == 2
                                    ? Colors.blue
                                    : Colors.grey.shade600,
                                fontSize: 10))
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentPageWidget = const Dashboard();
                        currentPage = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        currentPage == 3
                            ? const Icon(Icons.person,
                                color: Colors.blue, size: 30)
                            : Icon(Icons.person_outline_outlined,
                                color: Colors.grey.shade600, size: 30),
                        Text('Profile',
                            style: TextStyle(
                                color: currentPage == 3
                                    ? Colors.blue
                                    : Colors.grey.shade600,
                                fontSize: 10))
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
