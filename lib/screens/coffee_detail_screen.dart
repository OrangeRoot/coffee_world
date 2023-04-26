import 'package:flutter/material.dart';

import '../dummyData/dummyData.dart';

class CoffeeDetailScreen extends StatelessWidget {
  const CoffeeDetailScreen({super.key, required this.i});
  final int i;

  Widget _buildBackButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, top: 4.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            size: 40,
          ),
        ),
      ),
    );
  }

  Widget _buildCoffeeImage() {
    return Align(
      alignment: Alignment.center,
      child: Hero(
        tag: coffeeData[i].img,
        child: Image.asset(
          coffeeData[i].img,
          height: imgCor[i].height * 1.2,
        ),
      ),
    );
  }

  Widget _buildCoffeeName(BuildContext context) {
    return Hero(
      flightShuttleBuilder: (_, anim, direction, fromContext, toContext) {
        final Hero toHero = toContext.widget as Hero;
        final Hero fromHero = fromContext.widget as Hero;
        if (direction == HeroFlightDirection.pop) {
          return DualTransitionBuilder(
            animation: anim,
            forwardBuilder: (ctx, anim, _) => FadeTransition(
              opacity: anim,
              child: fromHero.child,
            ),
            reverseBuilder: (ctx, anim, _) => FadeTransition(
              opacity: anim,
              child: toHero.child,
            ),
          );
        } else {
          return toHero.child;
        }
      },
      tag: coffeeData[i].name,
      child: Align(
        child: FittedBox(
          child: Text(
            coffeeData[i].name,
            style: Theme.of(context).textTheme.displayLarge!.apply(
                  fontFamily: 'Lobster',
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildCoffeePhotosList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 15),
          ...List.generate(
            10,
            (i) => const Card(
              margin: EdgeInsets.all(5),
              child: SizedBox(
                height: 200,
                width: 200,
              ),
            ),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }

  Widget _buildCoffeeDescription(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.brown.shade700,
      ),
      child: Text(
        coffeeData[i].description,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Colors.white.withOpacity(0.85),
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(20),
          constraints: const BoxConstraints.expand(),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 5,
              color: const Color.fromARGB(255, 94, 36, 15),
            ),
            color: const Color.fromARGB(255, 142, 59, 29),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildBackButton(context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildCoffeeImage(),
                      _buildCoffeeName(context),
                    ],
                  ),
                ),
                _buildCoffeeDescription(context),
                _buildCoffeePhotosList(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
