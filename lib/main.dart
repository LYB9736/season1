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
    description: '복숭아는 대표적인 여름 제철 과일이다.',
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
    name: '사과',
    season: '가을',
    image: 'images/apple.jpg',
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '계절별 과일 소개',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FruitListScreen(),
      routes: {
        '/detail': (context) => FruitDetailScreen(),
      },
    );
  }
}

class FruitListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('계절별 과일'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount: fruits.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 가로로 3개씩 출력
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          final fruit = fruits[index];
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
            Text('계절: ${fruit.season}'),
            SizedBox(height: 16),
            Text(fruit.description),
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