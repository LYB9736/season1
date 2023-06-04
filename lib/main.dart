import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Fruit {
  final String name;
  final String season;
  final List<String> images;
  final String description;

  Fruit({
    required this.name,
    required this.season,
    required this.images,
    required this.description,
  });
}

final fruits = [
  Fruit(
      name: '복숭아(Peach)',
      season: '여름(5월 ~ 8월)',
      images: ['images/peach.jpg', 'images/peach2.jpg'],
      description: '복숭아는 과학적으로 Prunus persica라고 불리는 과일로 알려져 있습니다. 이 과일은 맛과 영양가가 뛰어나며, 다양한 종류가 있어 많은 사람들에게 사랑받고 있습니다. 아래에서는 복숭아에 대한 개요, 상세 정보, 다양한 종류, 효능 및 주의사항에 대해 자세히 알려드리겠습니다.\n'
          '1. 개요\n'
          '복숭아는 Rosaceae과에 속하는 낙엽과 식물로, 주로 여름철에 수확됩니다. 이 과일은 부드러운 살과 달콤한 맛을 가지고 있으며, 주로 신선한 상태로 섭취되지만, 과일 주스, 요구르트, 잼 등의 형태로도 많이 이용됩니다.\n'
          '2. 상세\n'
          '외형 : 복숭아는 크기와 색상이 다양합니다. 주로 빨간색 또는 노란색으로 알려져 있으며, 피부는 부드럽고 벨벳처럼 느껴집니다. 과일은 원형 또는 타원형이며, 중앙에 돌과 같은 씨앗이 들어있습니다.\n'
          '맛과 향 : 복숭아는 달콤하고 촉촉한 맛을 가지고 있으며, 향기로운 향도 함께 느낄 수 있습니다.\n'
          '영양가 : 복숭아는 비타민 C, 비타민 A, 식이 섬유, 칼륨 등의 영양소가 풍부합니다. 이들 영양소는 면역력 강화, 소화 개선, 눈 건강 유지 등 다양한 건강상의 이점을 제공합니다.\n'
          '3. 종류\n'
          '황도복숭아 : 노란색 피부와 달콤한 맛을 가진 대표적인 복숭아 종류입니다.\n'
          '자두복숭아 : 달콤한 맛과 산미를 가진 작은 크기의 복숭아로, 자두와의 유사성으로 이름이 지어졌습니다.\n'
          '백도복숭아 : 백색 피부와 달콤한 맛을 가지고 있으며, 주로 건조 복숭아로 많이 사용됩니다.\n'
          '넥타린: 복숭아와 유사한 외형을 가졌지만 털이 없는 피부를 가지고 있으며, 달콤하고 산미가 있습니다.\n'
          '4.효능\n'
          '면역력 강화 : 복숭아는 비타민 C가 풍부하게 함유되어 있어 면역력을 향상시키고 감기 예방에 도움을 줄 수 있습니다.\n'
          '소화 개선 : 식이 섬유가 풍부한 복숭아는 소화를 원활하게 도와주고 변비 예방에 효과적입니다.\n'
          '눈 건강 유지 : 비타민 A가 풍부하게 함유된 복숭아는 눈 건강을 지키는 데 도움을 줄 수 있습니다.\n'
          '5. 주의사항\n'
          '알러지 반응 : 복숭아는 일부 사람들에게 알러지 반응을 일으킬 수 있으므로, 알러지가 있는 경우 섭취하기 전에 주의해야 합니다.\n'
          '과다 섭취 주의 : 복숭아에는 천연 설탕이 포함되어 있으므로, 과다 섭취 시 혈당 수준을 고려해야 합니다.\n'
          '미성숙한 복숭아 : 미성숙한 복숭아에는 신물질인 시아노겐산화물이 함유되어 있어 소화장애를 유발할 수 있으므로, 완전히 익은 복숭아를 섭취하는 것이 좋습니다.\n'
  ), // 복숭아
  Fruit(
      name: '포도(Grape)',
      season: '여름(5월 ~ 8월)',
      images: ['images/grape.jpg', 'images/grape2.jpg', 'images/grape3.jpg'],
      description: '포도는 Vitaceae과에 속하는 과일로, 주로 여름과 가을에 수확되는 인기 있는 과일입니다. 신선한 상태로 섭취할 수 있을 뿐만 아니라 건포도, 포도주 등 다양한 형태로 이용됩니다. 이제 포도에 대한 개요, 상세 정보, 다양한 종류, 효능 및 주의사항에 대해 자세히 알려드리겠습니다.\n'
          '1. 개요\n'
          '외형: 포도는 작은 크기에서 큰 크기까지 다양한 크기를 가지며, 보통 둥근 형태입니다. 포도송이라는 가지에 여러 개의 과일이 달려 있습니다.\n'
          '색상: 포도는 빨간색, 초록색, 보라색 등 다양한 색상으로 알려져 있습니다.\n'
          '맛과 향: 포도는 달콤한 맛과 향기로운 향을 가지고 있으며, 다양한 풍미를 제공합니다.\n'
          '2. 상세\n'
          '섭취 방법: 포도는 신선한 상태로 바로 섭취할 수 있으며, 과일 샐러드, 주스, 잼, 건조 포도 등 다양한 방식으로 이용됩니다.\n'
          '영양가: 포도는 비타민 C, 비타민 K, 식이 섬유, 폴리페놀류 등의 영양소가 풍부합니다. 이들 영양소는 면역력 강화, 심혈관 건강 개선, 소화 촉진, 항산화 효과 등 다양한 이점을 제공합니다.\n'
          '3. 종류\n'
          '청포도: 청록색이며 상큼한 맛과 씨앗이 작은 특징을 가진 포도로 알려져 있습니다.\n'
          '레드 와인 포도: 특히 포도주 제조에 사용되는 빨간색 포도로, 다양한 종류가 있으며 각각 특색 있는 맛과 향을 가지고 있습니다.\n'
          '톰슨 씨드리스: 크기가 크고, 씨가 없는 포도로서 신선한 상태로 섭취하기 좋습니다.\n'
          '캠벨 포도: 한국에서 재배되는 대표적인 포도로 달콤한 맛과 풍부한 과즙을 가지고 있습니다.\n'
          '4. 효능\n'
          '심혈관 건강 : 포도에는 폴리페놀류라는 항산화물질이 풍부하게 함유되어 있어 심혈관 건강을 개선하는 데 도움을 줄 수 있습니다.\n'
          '항산화 효과 : 포도에 함유된 폴리페놀류는 강력한 항산화 효과를 가지고 있어 세포 손상을 예방하고, 노화를 지연시키는 데 도움을 줄 수 있습니다.\n'
          '소화 촉진 : 식이 섬유가 풍부한 포도는 소화를 원활하게 도와주고 변비 예방에 효과적입니다.\n'
          '5. 주의사항\n'
          '당분 함량 : 포도는 천연 당분을 함유하고 있으므로 과다 섭취 시 혈당 수준을 고려해야 합니다.\n'
          '알러지 반응 : 일부 사람들은 포도에 알러지 반응을 나타낼 수 있으므로, 알러지가 있는 경우 섭취 전에 주의해야 합니다.\n'
          '씨앗 : 일부 사람들은 포도 씨앗을 섭취하는 데 불편을 느낄 수 있으므로, 씨앗을 제거하거나 주의해서 섭취해야 합니다.\n'
  ), // 포도
  Fruit(
    name: '자두(Plum)',
    season: '여름(5월 ~ 8월)',
    images: ['images/plum.jpg', 'images/plum2.jpg'],
    description: '자두는 장과류 식물인 Prunus domestica의 열매로, 주로 여름과 가을에 수확되는 과일입니다. 자두는 다양한 색상과 크기를 가지며, 달콤한 맛과 풍부한 과즙이 특징입니다. 이제 자두에 대한 개요, 상세 정보, 다양한 종류, 효능 및 주의사항에 대해 자세히 알려드리겠습니다.\n'
        '1. 개요\n'
        '외형 : 자두는 보통 둥글거나 타원형이며, 피부는 매끈하고 광택이 있습니다. 색상은 보라색, 빨간색, 노란색 등 다양한 변종이 있습니다.\n'
        '맛과 향 : 자두는 달콤한 맛과 산미를 가지며, 풍부한 향기를 제공합니다.\n'
        '2. 상세\n'
        '섭취 방법 : 자두는 신선한 상태로 바로 섭취할 수 있으며, 잼, 주스, 파이 등 다양한 방식으로 이용됩니다.\n'
        '영양가 : 자두는 비타민 C, 비타민 K, 식이 섬유, 안토시아닌 등의 영양소가 풍부합니다. 이들 영양소는 면역력 강화, 소화 개선, 항산화 효과 등 다양한 이점을 제공합니다.\n'
        '3. 종류\n'
        '유럽 자두 : 가장 일반적인 자두로, 보통 보라색이나 빨간색을 띠며 달콤한 맛과 산미를 가지고 있습니다.\n'
        '일본 자두 : 더 작고 단단한 특징을 가진 자두로, 빨간색이 강조되고 산미가 강합니다.\n'
        '미국 자두 : 크기가 크고, 달콤하면서도 산미가 조화롭게 나타나는 자두로 알려져 있습니다.\n'
        '4. 효능\n'
        '소화 개선 : 자두는 식이 섬유가 풍부하여 소화를 원활하게 도와주고 변비 예방에 효과적입니다.\n'
        '항산화 효과 : 자두에는 안토시아닌이라는 항산화 물질이 포함되어 있어 세포 손상을 예방하고, 노화를 지연시키는 데 도움을 줄 수 있습니다.\n'
        '비타민 공급 : 자두는 비타민 C와 비타민 K를 비롯한 다양한 비타민을 제공하여 면역력 강화에 도움을 줍니다.\n'
        '5. 주의사항\n'
        '과다 섭취 : 자두에는 천연 당분이 포함되어 있으므로 과다 섭취 시 혈당 수준을 고려해야 합니다.\n'
        '씨앗 : 자두의 씨앗은 독성이 있을 수 있으므로 섭취 시 주의해야 합니다. 씨앗을 제거하거나 조심해서 섭취해야 합니다.\n',
  ), // 자두
  Fruit(
      name: '살구(Apricot)',
      season: '여름(5월 ~ 8월)',
      images: ['images/apricot.jpg', 'images/apricot2.jpg'],
      description: '살구는 Prunus armeniaca라는 식물의 열매로, 주로 봄과 여름에 수확되는 과일입니다. 살구는 주황색으로 둥근 형태를 가지며, 달콤하고 산미가 있어 상큼한 맛을 가지고 있습니다. 이제 살구에 대한 개요, 상세 정보, 다양한 종류, 효능 및 주의사항에 대해 자세히 알려드리겠습니다.\n'
          '1. 개요\n'
          '여름에 주로 수확되는 과일로, 주로 주황색을 띠고 둥근 형태를 가지며, 크기는 중간 정도입니다.\n'
          '살구는 신선한 상태에서 섭취할 때 가장 맛있고 영양가 있습니다.\n'
          '과즙이 풍부하고 달콤한 맛을 가지며, 향기도 풍부합니다.\n'
          '원산지로는 유럽 및 지중해 지역이 주로 알려져 있으며, 세계 각지에서 재배되고 소비되고 있습니다.\n'
          '2. 상세\n'
          '섭취 방법: 살구는 신선한 상태에서 바로 섭취하거나, 다양한 요리나 음료에 이용됩니다. 잼, 컴포트, 스무디, 파이, 샐러드 등으로 활용할 수 있습니다.\n'
          '영양 가치: 살구에는 비타민 A, 비타민 C, 식이 섬유, 칼륨 등이 풍부하게 함유되어 있습니다. 비타민 A는 시력 개선에 도움을 주고, 비타민 C는 면역력 강화에 기여합니다. 식이 섬유는 소화를 원활하게 도와주고 변비 예방에 효과적입니다.\n'
          '3. 종류\n'
          '표준 살구: 일반적으로 볼 수 있는 주황색 살구로, 달콤하면서도 산미가 조화롭게 나타납니다. 크기와 맛은 다소 변동이 있을 수 있습니다.\n'
          '특별한 품종: 지역이나 국가에 따라 특별한 종류의 살구가 재배되고 있습니다. 이러한 품종은 특정 지역의 토지와 기후 조건에 맞게 발전시킨 결과로 다양한 맛과 향을 가지고 있을 수 있습니다.\n'
          '4. 효능\n'
          '항산화 효과: 살구에는 안토시아닌과 카로티노이드 같은 항산화 물질이 풍부하게 함유되어 있어 세포 손상을 예방하고, 노화를 지연시키는 데 도움을 줍니다.\n'
          '소화 개선: 식이 섬유가 풍부한 살구는 소화를 원활하게 도와주고 변비 예방에 효과적입니다.\n'
          '비타민 공급: 살구는 비타민 A와 C를 비롯한 다양한 비타민을 제공하여 면역력 강화에 도움을 줍니다. 또한 식이 섬유와 칼륨도 함유하고 있어 건강한 식단에 기여합니다.\n'
          '5. 주의사항\n'
          '과다 섭취: 살구에는 천연 당분이 포함되어 있으므로 과다 섭취 시 혈당 수준을 고려해야 합니다.\n'
          '알레르기 반응: 살구에 알레르기 반응이 있는 사람들은 주의해야 합니다. 알레르기 반응이 있는 경우 살구 섭취를 피하는 것이 좋습니다.\n'
  ), // 살구
  Fruit(
    name: '사과(apple)',
    season: '가을(9월 ~ 11월)',
    images: ['images/apple.jpg', 'images/peach2.jpg'],
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '배(pear)',
    season: '가을(9월 ~ 11월)',
    images: ['images/pear.jpg', 'images/peach2.jpg'],
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '감(Persimmon)',
    season: '가을(9월 ~ 11월)',
    images: ['images/persimmon.jpg', 'images/peach2.jpg'],
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '무화과(Fig)',
    season: '가을(9월 ~ 11월)',
    images: ['images/fig.jpg', 'images/peach2.jpg'],
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '귤(Mandarin)',
    season: '겨울(12월 ~ 2월)',
    images: ['images/mandarin.jpg', 'images/peach2.jpg'],
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '한라봉(Hallabong)',
    season: '겨울(12월 ~ 2월)',
    images: ['images/hallabong.jpg', 'images/peach2.jpg'],
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '유자(Yuzu)',
    season: '겨울(12월 ~ 2월)',
    images: ['images/yuzu.jpg', 'images/peach2.jpg'],
    description: '사과는 대표적인 가을 제철 과일이다.',
  ),
  Fruit(
    name: '금귤(Kumquat)',
    season: '겨울(12월 ~ 2월)',
    images: ['images/kumquat.jpg', 'images/peach2.jpg'],
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
                          fruit.images[0],
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 350, // 이미지 영역의 높이 설정
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // 가로 스크롤
                itemCount: fruit.images.length, // 이미지 리스트의 길이만큼 반복
                itemBuilder: (context, index) {
                  final image = fruit.images[index];
                  return Container(
                    width: 350, // 이미지 컨테이너의 너비 설정
                    height: 300, // 이미지 컨테이너의 높이 설정
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover, // 이미지를 부모 위젯에 꽉 채움
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              '계절: ${fruit.season}',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            Text(
              fruit.description,
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