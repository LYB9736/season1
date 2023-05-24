import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Fruit {
  final String name;
  final String season;
  final String image;
  final String description;

  Fruit({
    required this.name,
    required this.season,
    required this.image,
    required this.description,
  });
}

final fruits = [
  Fruit(
    name: '복숭아(peach)',
    season: '여름(5월 ~ 8월)',
    image: 'images/peach.jpg',
    description: '개요 : 복숭아는 대표적인 여름 제철 과일이다.\n'
        '상세 : ',
  ),
  Fruit(
    name: '포도(grape)',
    season: '여름(5월 ~ 8월)',
    image: 'images/grape.jpg',
    description: '복숭아는 대표적인 여름 제철 과일이다.',
  ),
  Fruit(
    name: '자두(plum)',
    season: '여름(5월 ~ 8월)',
    image: 'images/plum.jpg',
    description: '복숭아는 대표적인 여름 제철 과일이다.',
  ),
  Fruit(
    name: '살구(Apricot)',
    season: '여름(5월 ~ 8월)',
    image: 'images/apricot.jpg',
    description: '복숭아는 대표적인 여름 제철 과일이다.',
  ),
  Fruit(
    name: '사과(apple)',
    season: '가을(9월 ~ 11월)',
    image: 'images/apple.jpg',
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '배(pear)',
    season: '가을(9월 ~ 11월)',
    image: 'images/pear.jpg',
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '감(Persimmon)',
    season: '가을(9월 ~ 11월)',
    image: 'images/persimmon.jpg',
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '무화과(Fig)',
    season: '가을(9월 ~ 11월)',
    image: 'images/fig.jpg',
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '계절별 과일 소개',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
      routes: {
        '/detail': (context) => FruitDetailScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedSeason = '여름(5월 ~ 8월)';

  List<Fruit> getFilteredFruits() {
    return fruits.where((fruit) => fruit.season == selectedSeason).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('계절별 과일'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SeasonButton(
                  text: '여름',
                  isSelected: selectedSeason == '여름(5월 ~ 8월)',
                  onPressed: () {
                    setState(() {
                      selectedSeason = '여름(5월 ~ 8월)';
                    });
                  },
                ),
                SeasonButton(
                  text: '가을',
                  isSelected: selectedSeason == '가을(9월 ~ 11월)',
                  onPressed: () {
                    setState(() {
                      selectedSeason = '가을(9월 ~ 11월)';
                    });
                  },
                ),
                SeasonButton(
                  text: '겨울',
                  isSelected: selectedSeason == '겨울(12월 ~ 2월)',
                  onPressed: () {
                    setState(() {
                      selectedSeason = '겨울(12월 ~ 2월)';
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(16),
              itemCount: getFilteredFruits().length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                final fruit = getFilteredFruits()[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/detail',
                      arguments: fruit,
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          fruit.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        fruit.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        fruit.season,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SeasonButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const SeasonButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: isSelected ? MaterialStateProperty.all(Colors.blue) : null,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : null,
        ),
      ),
    );
  }
}

class FruitDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final fruit = ModalRoute.of(context)!.settings.arguments as Fruit;

    return Scaffold(
      appBar: AppBar(
        title: Text(fruit.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(fruit.image),
            SizedBox(height: 16),
            Text(
              '계절: ${fruit.season}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            Text(fruit.description,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Lato',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('뒤로 가기'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
