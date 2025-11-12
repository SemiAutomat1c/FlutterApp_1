import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        // Use provided Poppins font (declare in pubspec.yaml)
        fontFamily: 'Poppins',
      ),
      home: const BreakfastScreen(),
    );
  }
}

class BreakfastScreen extends StatelessWidget {
  const BreakfastScreen({super.key});

  static const List<_CategoryInfo> _categories = [
    _CategoryInfo(title: 'Salad', emoji: '🥗', assetPath: null),
    _CategoryInfo(title: 'Cake', emoji: '🎂', assetPath: 'assets/icons/pancakes.svg'),
    _CategoryInfo(title: 'Pie', emoji: '🥧', assetPath: 'assets/icons/pie.svg'),
    _CategoryInfo(title: 'Smoothie', emoji: '🧋', assetPath: 'assets/icons/orange-snacks.svg'),
  ];

  static const List<_RecommendationInfo> _recommendations = [
    _RecommendationInfo(
      title: 'Honey Pancake',
      details: 'Easy | 30mins | 180kCal',
      emoji: '🥞',
      assetPath: 'assets/icons/honey-pancakes.svg',
      backgroundColor: Color(0xFFE3F2FD),
      buttonColor: Colors.blue,
    ),
    _RecommendationInfo(
      title: 'Canai Bread',
      details: 'Easy | 20mins | 240kCal',
      emoji: '🧁',
      assetPath: 'assets/icons/canai-bread.svg',
      backgroundColor: Color(0xFFF8E9F3),
      buttonColor: Colors.pink,
    ),
  ];

  static const List<_PopularItemInfo> _popularItems = [
    _PopularItemInfo(title: 'Blueberry Pancake', details: 'Nutrition', emoji: '🥞', assetPath: 'assets/icons/blueberry-pancake.svg'),
    _PopularItemInfo(title: 'Salmon Nigiri', details: 'Nutrition', emoji: '🍣', assetPath: 'assets/icons/salmon-nigiri.svg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                    const Text(
                      'Breakfast',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Pancake',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.tune),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                ),
              ),
              // Category Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    final category = _categories[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: _CategoryCard(
                        title: category.title,
                        emoji: category.emoji,
                        assetPath: category.assetPath,
                        isSelected: index == 0,
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
              // Recommendation Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Recommendation for Diet',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  itemCount: _recommendations.length,
                  itemBuilder: (context, index) {
                    final rec = _recommendations[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: _RecommendationCard(
                        title: rec.title,
                        details: rec.details,
                        emoji: rec.emoji,
                        assetPath: rec.assetPath,
                        backgroundColor: rec.backgroundColor,
                        buttonColor: rec.buttonColor,
                      ),
                    );
                  },
                ),
              ),
              // Popular Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Popular',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ..._popularItems.map((item) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: _PopularItem(
                  title: item.title,
                  details: item.details,
                  emoji: item.emoji,
                  assetPath: item.assetPath,
                ),
              )),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final String title;
  final String emoji;
  final String? assetPath;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryCard({
    required this.title,
    required this.emoji,
    this.assetPath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.grey[200],
          borderRadius: BorderRadius.circular(12),
          border: isSelected ? Border.all(color: Colors.blue, width: 2) : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (assetPath != null)
              SvgPicture.asset(
                assetPath!,
                width: 32,
                height: 32,
              )
            else
              Text(emoji, style: const TextStyle(fontSize: 32)),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RecommendationCard extends StatelessWidget {
  final String title;
  final String details;
  final String emoji;
  final String assetPath;
  final Color backgroundColor;
  final Color buttonColor;

  const _RecommendationCard({
    required this.title,
    required this.details,
    required this.emoji,
    required this.assetPath,
    required this.backgroundColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: SvgPicture.asset(
              assetPath,
              width: 60,
              height: 60,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                details,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
              onPressed: () {},
              child: const Text(
                'View',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PopularItem extends StatelessWidget {
  final String title;
  final String details;
  final String emoji;
  final String assetPath;

  const _PopularItem({
    required this.title,
    required this.details,
    required this.emoji,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            assetPath,
            width: 32,
            height: 32,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  details,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward, color: Colors.grey),
        ],
      ),
    );
  }
}

class _CategoryInfo {
  final String title;
  final String emoji;
  final String? assetPath;

  const _CategoryInfo({
    required this.title,
    required this.emoji,
    required this.assetPath,
  });
}

class _RecommendationInfo {
  final String title;
  final String details;
  final String emoji;
  final String assetPath;
  final Color backgroundColor;
  final Color buttonColor;

  const _RecommendationInfo({
    required this.title,
    required this.details,
    required this.emoji,
    required this.assetPath,
    required this.backgroundColor,
    required this.buttonColor,
  });
}

class _PopularItemInfo {
  final String title;
  final String details;
  final String emoji;
  final String assetPath;

  const _PopularItemInfo({
    required this.title,
    required this.details,
    required this.emoji,
    required this.assetPath,
  });
}
