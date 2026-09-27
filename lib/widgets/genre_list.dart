import 'package:flutter/material.dart';

class GenreList extends StatelessWidget {
  final List<String> genres = const [
    "All",
    "Action",
    "Adventure",
    "Comedy",
    "Drama",
    "Fantasy",
    "Horror",
    "Mystery",
    "Romance",
    "Sci-Fi",
    "Slice of Life",
  ];

  final String selected;
  final ValueChanged<String>? onGenreSelected;

  const GenreList({
    super.key,
    this.selected = "All",
    this.onGenreSelected,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.04,
        vertical: screenHeight * 0.01,
      ),
      child: Row(
        children: genres.map((genre) {
          final isActive = genre == selected;

          return Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.06),
            child: InkWell(
              borderRadius: BorderRadius.circular(screenWidth * 0.06),
              onTap: () {
                // TODO: Update the selected genre and filter the anime list accordingly
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.06,
                  vertical: screenHeight * 0.01,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(screenWidth * 0.06),
                  color: const Color(0xFF0b395e),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.3),
                      blurRadius: screenWidth * 0.02,
                      offset: Offset(0, screenHeight * 0.005),
                    ),
                  ],
                ),
                child: Text(
                  genre,
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: isActive ? Colors.white : Colors.grey.shade600,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          );
        }).toList(),

      ),
    );
  }
}
