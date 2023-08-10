import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:moscowzoo/const.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import 'OtherPages/Contacts.dart';
import 'OtherPages/Feeding.dart';
import 'package:moscowzoo/pages/OtherPages/excursions.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

final newsData = parseMoscowZooNews("https://www.moscowzoo.ru/about-zoo/news/");

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset('assets/images/bg.jpg',
            fit: BoxFit.cover, width: double.infinity, height: double.infinity),
        Positioned(
            right: 0,
            bottom: -2,
            child: Image.asset('assets/images/bg-gir.jpg',
                fit: BoxFit.fill,
                width: MediaQuery.sizeOf(context).width * 0.68,
                height: MediaQuery.sizeOf(context).height * 0.5)),
        Column(children: [
          Center(child: Container(child: Image.asset('assets/images/logo.png'), height: MediaQuery.sizeOf(context).height * 0.2, width: MediaQuery.sizeOf(context).width * 0.4,)),
          Column(children: [
            GridView.count(crossAxisCount: 2, shrinkWrap: true, children: [
              Column(children: [
                IconButton(
                    onPressed: () => launch(tickets_link),
                    icon: Image.asset('assets/icons/tic.png'),
                    iconSize: 100),
                TextButton(
                    onPressed: () => launch(tickets_link),
                    child: Text("КУПИТЬ БИЛЕТЫ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )))
              ]),
              Column(children: [
                IconButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeedingPage()))
                        },
                    icon: Image.asset('assets/icons/paw.png'),
                    iconSize: 100),
                SizedBox(height: 2),
                TextButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeedingPage()))
                        },
                    child: Text("ПОКАЗАТЕЛЬНЫЕ КОРМЛЕНИЯ",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18)))
              ]),
              Column(children: [
                IconButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExcursionsPage()))
                        },
                    icon: Image.asset('assets/icons/megaph.png'),
                    iconSize: 100),
                SizedBox(height: 2),
                TextButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ExcursionsPage()))
                        },
                    child: Text("ЭКСКУРСИИ",
                        style: TextStyle(color: Colors.white, fontSize: 18)))
              ]),
              Column(children: [
                IconButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactsPage()))
                        },
                    icon: Image.asset('assets/icons/phone.png'),
                    iconSize: 100),
                SizedBox(height: 2),
                TextButton(
                    onPressed: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactsPage()))
                        },
                    child: Text("КОНТАКТЫ",
                        style: TextStyle(color: Colors.white, fontSize: 18)))
              ]),
            ])
          ]),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.185,
            width: MediaQuery.sizeOf(context).width * 0.88,
            child: FutureBuilder<List<List<String>>>(
              future: parser(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Column(children: [Container(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(
                        color: Color(AppTextColor),
                      ),
                    ), Text('Прогружаем интереснейшие новости для ВАС', textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20))],),
                  );
                } else if (snapshot.hasError) {
                  return Text('Нет одключения к интернету или включен vpn', textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 24));
                } else if (snapshot.hasData) {
                  List<String> newsTitles = snapshot.data![0];
                  List<String> newsLinks = snapshot.data![1];
                  List<String> newsPhotos = snapshot.data![2];

                  return NewsCarouselWidget(
                    newsTitles: newsTitles,
                    newsLinks: newsLinks,
                    newsPhotos: newsPhotos,
                  );
                } else {
                  return Text('Нет одключения к интернету или включен vpn', textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 24));
                }
              },
            ),
          )
        ]),
      ]),
    );
  }
}

class NewsCarouselWidget extends StatelessWidget {
  final List<String> newsTitles;
  final List<String> newsLinks;
  final List<String> newsPhotos;

  NewsCarouselWidget({
    required this.newsTitles,
    required this.newsLinks,
    required this.newsPhotos,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: newsTitles.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        if (newsPhotos[index].isNotEmpty) {
          Uint8List imageBytes = base64Decode(newsPhotos[index]);
          return Stack(
            children: [
              GestureDetector(
                  onTap: () {
                    launch(newsLinks[index]);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.memory(
                      imageBytes,
                      width: MediaQuery.sizeOf(context).width,
                      height: MediaQuery.sizeOf(context).height,
                      fit: BoxFit.fill,
                    ),
                  )),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black.withOpacity(0.4)),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.03), child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.14,
                  ),
                  Text(
                    newsTitles[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              )),
              GestureDetector(child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.black.withOpacity(0)),
              ), onTap: () {
                launch(newsLinks[index]);
              },)
            ],
          );
        } else {
          return Text('Изображение отсутствует, попробуйте перезагрузить приложение',
              style: TextStyle(color: Colors.white, fontSize: 18));
        }
      },
      options: CarouselOptions(
        viewportFraction: 1,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 10),
        height: MediaQuery.sizeOf(context).height,
      ),
    );
  }
}

class News {
  late String newsTitle;
  late String newsLink;
  late String newsPhoto;

  News(this.newsTitle, this.newsLink, this.newsPhoto);
}

Future<String> getDcimDirectoryPath() async {
  final directory = await getExternalStorageDirectory();
  final dcimDirectory = Directory('${directory!.path}/DCIM/');

  if (!await dcimDirectory.exists()) {
    await dcimDirectory.create();
  }

  return dcimDirectory.path;
}

Future<void> downloadImage(String url, String savePath) async {
  try {
    final baseUrl = "https://www.moscowzoo.ru";
    if (url.startsWith('/')) {
      url = baseUrl + url;
    }
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final File file = File(savePath);
      final List<int> bytes = response.bodyBytes;
      await file.writeAsBytes(bytes);
    } else {
      print("Error downloading image. Status code: ${response.statusCode}");
    }
  } catch (e) {
    print("An error occurred while downloading the image: $e");
  }
}

String encodeImageToBase64(String imagePath) {
  final File imageFile = File(imagePath);
  final List<int> imageBytes = imageFile.readAsBytesSync();
  final String encodedString = base64Encode(imageBytes);
  return encodedString;
}

Future<List<News>> parseMoscowZooNews(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode != 200) {
    print("Error accessing the page. Status code: ${response.statusCode}");
    return [];
  }

  final baseUrl = "https://www.moscowzoo.ru";
  final dom.Document soup = dom.Document.html(response.body);
  final List<dom.Element> newsItems = soup.querySelectorAll('div.article-item');
  final List<News> newsData = [];

  for (final item in newsItems) {
    final headlineElement = item.querySelector('p.article-item-title');
    final headline = headlineElement?.text.trim() ?? '';

    final linkElement = item.querySelector('a.article-item-link');
    final link = linkElement != null ? linkElement.attributes['href'] : '';

    if (link != null && link.isNotEmpty && !link.startsWith("http")) {
      final resolvedLink = Uri.parse(baseUrl).resolve(link).toString();

      final imageElement = item.querySelector('img');
      final imageUrl = imageElement?.attributes['src'] ?? '';

      final String saveDirectory = await getDcimDirectoryPath();

      if (!Directory(saveDirectory).existsSync()) {
        Directory(saveDirectory).createSync();
      }

      final imageFilename = path.basename(imageUrl);
      final savePath = path.join(saveDirectory, imageFilename);

      await downloadImage(imageUrl, savePath);
      final encodedImage = encodeImageToBase64(savePath);

      final news = News(
        headline,
        resolvedLink,
        encodedImage,
      );
      newsData.add(news);
    }
  }

  return newsData;
}

Future<List<List<String>>> parser() async {
  final moscowZooUrl = "https://www.moscowzoo.ru/about-zoo/news/";

  final newsData = await parseMoscowZooNews(moscowZooUrl);
  final newsTitles = <String>[];
  final newsLinks = <String>[];
  final newsPhotos = <String>[];

  if (newsData.isNotEmpty) {
    for (final newsItem in newsData) {
      newsTitles.add(newsItem.newsTitle);
      newsLinks.add(newsItem.newsLink);
      newsPhotos.add(newsItem.newsPhoto);
    }
  }
  return [newsTitles, newsLinks, newsPhotos];
}
