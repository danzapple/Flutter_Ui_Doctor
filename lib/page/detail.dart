// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:project_flutter_pemula_dicoding/model/%20doctor_medical.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final DoctorMedical place;

  const DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final DoctorMedical place;

  const DetailMobilePage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height / 2.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 100.0, bottom: 30),
                          child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                              ),
                              child: Image.asset(place.imageAsset)),
                        ),
                        Text(
                          place.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Staatliches',
                          ),
                        ),
                        Text(
                          place.profesi,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Staatliches',
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 110),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white,
                                    ),
                                  ),
                                  child:
                                      const Icon(Icons.videocam_off_outlined)),
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: const Icon(Icons.phone_outlined)),
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.orangeAccent,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white,
                                    ),
                                  ),
                                  child: const Icon(
                                      Icons.chat_bubble_outline_outlined)),
                            ],
                          ),
                        )
                      ],
                    )),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(left: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.6),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            margin: const EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.6),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 20),
              child: const Text(
                'Schdule',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8.0),
                      Text(
                        place.openDays,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.access_time),
                      const SizedBox(height: 8.0),
                      Text(
                        place.openTime,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.monetization_on),
                      const SizedBox(height: 8.0),
                      Text(
                        place.hargaKonsultasi,
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                place.description,
                overflow: TextOverflow.visible,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            // Container(
            //   height: 150,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: place.imageUrls.map((url) {
            //       return Padding(
            //         padding: const EdgeInsets.all(4.0),
            //         child: ClipRRect(
            //           borderRadius: BorderRadius.circular(10),
            //           child: Image.network(url),
            //         ),
            //       );
            //     }).toList(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final DoctorMedical place;

  const DetailWebPage({required this.place});

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(left: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.6),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.6),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.4,
                              child: Image.asset(
                                widget.place.imageAsset,
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Text(
                                  widget.place.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                                Text(
                                  widget.place.profesi,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 18.0),
                                const Text(
                                  'Schedlue :',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.calendar_today),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      widget.place.openDays,
                                      style: informationTextStyle,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.access_time),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      widget.place.openTime,
                                      style: informationTextStyle,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8.0),
                                Row(
                                  children: <Widget>[
                                    const Icon(Icons.monetization_on),
                                    const SizedBox(width: 8.0),
                                    Text(
                                      widget.place.hargaKonsultasi,
                                      style: informationTextStyle,
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16.0),
                                  child: Text(
                                    widget.place.description,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Oxygen',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
