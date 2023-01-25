import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multivendor/nav_screens/widgets/banner_widget.dart';
import 'package:multivendor/nav_screens/widgets/search_input_widget.dart';
import 'package:multivendor/nav_screens/widgets/welcome_text_screen.dart';

class homesreen extends StatelessWidget {
  const homesreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Welcometext(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        searchwidget(),
        Bannerwidget(),
      ],
    );
  }
}
