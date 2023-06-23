import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // 생성자

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [
            const TabBarView(children: [Tab1(), Tab2(), Tab3()]),
            SafeArea(
              child: Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: TabPageSelector(
                      color: DefaultTabController.of(context)?.index == 1
                          ? Colors.blue
                          : Colors.white,
                      selectedColor:
                          DefaultTabController.of(context)?.index == 1
                              ? Colors.white
                              : Colors.blue,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    const songs = [
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
      {
        'imageUrl': 'https://i.ibb.co/MRSqtP8/autumnnight.jpg',
        'title': '가을밤에 든 생각',
        'artist': '잔나비',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        leading: const Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: const DefaultTextStyle(
          style: TextStyle(
            color: Colors.black,
          ),
          child: Text("라이브러리"),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.network(
                  "https://i.ibb.co/hxNbZ8p/shazam.png",
                  height: 20,
                ),
              ),
              const Text("Shazam")
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.person),
              ),
              Text("아티스트")
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.music_note),
              ),
              Text("shazam")
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: const [Text("최근 샤잠")],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 5,
              ),
              itemCount: songs.length,
              itemBuilder: (context, index) {
                var song = songs[index];
                String imageUrl = song['imageUrl']!;
                String title = song['title']!;
                String artist = song['artist']!;

                index % 2 == 0; // 왼쪽, 1이면 오른쪽

                return Container(
                  margin: const EdgeInsets.only(
                    left: 4,
                    right: 4,
                    top: 4,
                    bottom: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.width *
                              0.5 *
                              5 /
                              3 *
                              0.55,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                artist,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const Spacer(),
                              Image.network(
                                "https://i.ibb.co/KG9m5QS/applemusic.png",
                                width: 60,
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      )
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

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue[300]!, Colors.blue[900]!],
        ),
      ),
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        Text("라이브러리"),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(
                          Icons.light,
                          color: Colors.white,
                        ),
                        Text("차트"),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Shazam하려면 탭하세요",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                alignment: Alignment.center,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  "https://i.ibb.co/hxNbZ8p/shazam.png",
                  color: Colors.white,
                  height: 150,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    const chartData = {
      'korea': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'global': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
      'newyork': [
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
        {
          'imageUrl': 'https://i.ibb.co/xf2HpfG/dynamite.jpg',
          'name': 'Dynamite',
          'artist': 'BTS',
        },
      ],
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "차트",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(color: Colors.purple.shade800),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Text(
                      "국가 및 도시별 차트",
                      style: TextStyle(
                        color: Colors.purple[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    child: const Text(
                      "전 세계",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        '전세계 차트',
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        '모두 보기',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    ...chartData['global']!.map(
                      (song) {
                        String imageUrl = song['imageUrl']!;
                        String name = song['name']!;
                        String artist = song['artist']!;
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                imageUrl,
                                width: MediaQuery.of(context).size.width * 0.29,
                              ),
                              Text(
                                name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(artist),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        '서울 차트',
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        '모두 보기',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    ...chartData['korea']!.map(
                      (song) {
                        String imageUrl = song['imageUrl']!;
                        String name = song['name']!;
                        String artist = song['artist']!;
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                imageUrl,
                                width: MediaQuery.of(context).size.width * 0.29,
                              ),
                              Text(
                                name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(artist),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        '뉴욕 차트',
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        '모두 보기',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    ...chartData['newyork']!.map(
                      (song) {
                        String imageUrl = song['imageUrl']!;
                        String name = song['name']!;
                        String artist = song['artist']!;
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                imageUrl,
                                width: MediaQuery.of(context).size.width * 0.29,
                              ),
                              Text(
                                name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(artist),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
