import 'package:flutter/material.dart';

import '../dummyData/dummyData.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key, required this.i});
  final int i;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                    side: const BorderSide(
                      width: 3,
                      color: Color.fromARGB(255, 94, 36, 15),
                    ),
                  ),
                  color: const Color.fromARGB(255, 142, 59, 29),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60),
                        Padding(
                          padding: const EdgeInsets.only(top: 32.0),
                          child: FittedBox(
                            child: Hero(
                              tag: coffeeData[i].name,
                              child: Text(
                                coffeeData[i].name,
                                style: Theme.of(context).textTheme.displaySmall!.apply(
                                      fontFamily: 'Lobster',
                                    ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Text('More'),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_forward_rounded),
                            ],
                          ),
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: imgCor[i].bottom,
            right: imgCor[i].right,
            height: imgCor[i].height,
            child: Hero(
              tag: coffeeData[i].img,
              child: Image.asset(
                coffeeData[i].img,
                alignment: Alignment.topRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
