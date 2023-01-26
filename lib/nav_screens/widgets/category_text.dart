import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryText extends StatelessWidget {
  // const CategoryText({super.key});

  final List<String> _categorylable = [
    'food',
    'vegetable ',
    'egg',
    'tea',
    'chips',
    'groceries',
    'fruits'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          'Categories',
          style: TextStyle(fontSize: 20.0),
        ),
        Container(
          height: 40,
          child: Row(
            children: [
              Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _categorylable.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ActionChip(
                              backgroundColor: Colors.yellow.shade900,
                              onPressed: () {},
                              label: Center(
                                child: Text(
                                  _categorylable[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        );
                      })),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        )
      ],
    );
  }
}
