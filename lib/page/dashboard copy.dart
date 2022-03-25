import 'package:flutter/material.dart';
import 'package:project_flutter_pemula_dicoding/model/%20doctor_medical.dart';
import 'package:project_flutter_pemula_dicoding/page/detail.dart';
import 'package:project_flutter_pemula_dicoding/widgets/input.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        extendBody: true,
        // ignore: avoid_unnecessary_containers
        backgroundColor: Colors.white.withOpacity(0.9),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 20, right: 20, bottom: 20.0),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 54, 81, 155),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              image: DecorationImage(
                                image: AssetImage('assets/doctor.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text(
                                'Dr. John Doe',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Dokter Spesialis Anak',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.75,
                        child: InputField(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          icon: Icons.search_outlined,
                          color: Colors.grey,
                          hintText: 'Search health issues',
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Icon(
                          Icons.horizontal_distribute,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Our Service",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("See All",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                child: Wrap(
                  spacing: 15,
                  children: [
                    Container(
                      height: 100,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 245, 169, 228),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Center(
                                    child: Image.asset(
                                  'assets/menu/medical.png',
                                  fit: BoxFit.fill,
                                )),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: 40,
                                width: 80,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 255, 75, 159),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Doctor',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 183, 255, 221),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Center(
                                    child: Image.asset(
                                  'assets/menu/drug.png',
                                  fit: BoxFit.fill,
                                )),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: 40,
                                width: 80,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 116, 206, 164),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Drug',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 177, 172),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Center(
                                    child: Image.asset(
                                  'assets/menu/covid.png',
                                  fit: BoxFit.fill,
                                )),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: 40,
                                width: 80,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 255, 72, 0),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Covid',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 171, 205, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Center(
                                    child: Image.asset(
                                  'assets/menu/more.png',
                                  fit: BoxFit.fill,
                                )),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: 40,
                                width: 80,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 24, 132, 255),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: const Center(
                                    child: Text(
                                  'Other',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20, right: 20, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Popular Docotors",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("See All",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                  ],
                ),
              ),
              const Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: TourismPlaceGrid()),
            ],
          ),
        ),
      );
    });
  }
}

class TourismPlaceGrid extends StatelessWidget {
  const TourismPlaceGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 1,
      children: doctorMedicalList.map((place) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: place);
            }));
          },
          child: Container(
            height: 50,
            width: 200,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 245, 169, 228),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                        child: Image.asset(
                      place.imageAsset,
                      fit: BoxFit.fill,
                      height: height * 0.12,
                    )),
                  ),
                  Container(
                      height: 67,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              place.name,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    place.profesi,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.2),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 255, 166, 0),
                                    size: 10,
                                  ),
                                  Text(
                                    4.8.toString(),
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
