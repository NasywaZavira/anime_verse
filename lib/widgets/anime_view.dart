import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import 'anime_card.dart';

class AnimeView extends StatelessWidget {
  const AnimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.04,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount;
          double childAspectRatio;

          if (constraints.maxWidth < 600) {
            crossAxisCount = 3;
            childAspectRatio = 0.55;
          } else if (constraints.maxWidth < 900) {
            crossAxisCount = 5;
            childAspectRatio = 0.6;
          } else {
            crossAxisCount = (constraints.maxWidth / 200).floor().clamp(4, 6);
            childAspectRatio = 0.8;
          }

          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: constraints.maxWidth * 0.03,
              crossAxisSpacing: constraints.maxWidth * 0.05,
              childAspectRatio: childAspectRatio,
            ),
            itemCount: DummyData.animeList.length,
            itemBuilder: (context, index) {
              final anime = DummyData.animeList[index];
              return AnimeCard(
                id: anime.id,
                title: anime.title,
                imagePath: anime.imagePath,
              );
            },
          );

        },
      ),

    );
  }
}
