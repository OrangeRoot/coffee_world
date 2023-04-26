import 'package:card_swiper/card_swiper.dart';
import 'package:coffee_world/screens/coffee_detail_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/coffee_card.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  Widget _buildAppTitle(BoxConstraints cons) {
    return Container(
      margin: EdgeInsets.only(
        top: cons.maxHeight / 10,
        right: cons.maxWidth / 10,
        left: cons.maxWidth / 10,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
        color: const Color.fromARGB(255, 139, 66, 40),
        border: Border.all(
          width: 3,
          color: const Color.fromARGB(255, 176, 76, 39),
        ),
      ),
      alignment: Alignment.center,
      height: cons.maxHeight / 10,
      width: double.infinity,
      child: const FittedBox(
        child: Text(
          'Types of Coffee',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 50,
            fontFamily: 'Lobster',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: LayoutBuilder(
          builder: (ctx, cons) => Column(
            children: [
              _buildAppTitle(cons),
              Container(
                height: cons.maxHeight * 4 / 5,
                padding: EdgeInsets.only(bottom: cons.maxHeight / 6),
                child: Swiper(
                  itemWidth: cons.maxWidth / 1.1,
                  itemCount: 8,
                  pagination: SwiperPagination(
                    margin: const EdgeInsets.all(0),
                    builder: DotSwiperPaginationBuilder(
                      activeColor: const Color.fromARGB(255, 142, 59, 29),
                      color: Colors.brown.shade200,
                      space: 4,
                      size: 8,
                    ),
                  ),
                  layout: SwiperLayout.STACK,
                  itemBuilder: (ctx, i) => Padding(
                    padding: EdgeInsets.only(top: cons.maxHeight / 15),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (context, a, b) => CoffeeDetailScreen(i: i),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        ),
                      ),
                      child: CoffeeCard(i: i),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
