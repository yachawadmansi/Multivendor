import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bannerwidget extends StatefulWidget {
  @override
  State<Bannerwidget> createState() => _BannerwidgetState();
}

class _BannerwidgetState extends State<Bannerwidget> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  int pageIndex = 0;

  final List _bannerimage = [];

  getBanners() {
    return _firestore
        .collection('banner')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        setState(() {
          _bannerimage.add(doc['image']);
        });
      });
    });
  }

  @override
  void initState() {
    getBanners();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.yellow.shade900,
            borderRadius: BorderRadius.circular(10),
          ),
          child: PageView.builder(
              itemCount: _bannerimage.length,
              itemBuilder: (context, index) {
                return Image.network(
                  _bannerimage[index],
                  fit: BoxFit.cover,
                );
              })),
    );
  }
}
