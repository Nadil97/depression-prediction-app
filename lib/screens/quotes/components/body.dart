import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widgets/search_bar.dart';
import 'quote_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const Text(
                      "Daily Quotes",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .8, // it just take 60% of total width
                      child: const Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: const SearchBar(),
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Day 1',
                      subtext: "Opportunities don't happen, you create them",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Day 2',
                      subtext:
                          "Just one small positive thought in the morning can change your whole day",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Day 3',
                      subtext:
                          "Love your family, work super hard, live your passion",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Day 4',
                      subtext:
                          "It is never too late to be what you might have been",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

