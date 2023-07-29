import 'package:moscowzoo/pages/sometext/ADescription.dart';

class Animal {
  final String species;
  final String animal_class;
  final String squad;
  final String urlImage;
  final String location;
  final String description;
  final String location_text;
  final String next_text;

  

  const Animal({
    required this.species,
    required this.animal_class,
    required this.squad,
    required this.urlImage,
    required this.location,
    required this.description,
    required this.location_text,
    required this.next_text,
  });
}

const allAnimals = [
  Animal(species: 'Медоед', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Камышовый кот', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Краснорукий тамарин', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Кустарниковая собака', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Голубой баран', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Обычновенный дикдик', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Капская земляная белка', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Азарская мирикина', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Золотистый тамарин', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Большая панда', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Трубкозуб', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Полосатый мангуст', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Каменная куница', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Карликовый бегемот', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Индийский дикобраз', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Обыкновенный шакал', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Степной сурок', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Носуха', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Харза', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Японский макак', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Капский долгоног', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Мышь-малютка', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Песец', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Шиншилла', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Обыкновенная лисица', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Манул', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
  Animal(species: 'Медведь-губач', animal_class: "Млекопитающие", squad: "Хищные", urlImage: 'https://moscowzoo.ru/upload/resize_cache/iblock/0cf/350_350_1/0cfd89db75bf56fb20fd71280a4f01a9.JPG', location: 'https://moscowzoo.ru/upload/medialibrary/acd/acdf357e8599bfc95cbec7e326825fe5.jpg', description: honey_text, location_text: honey_location, next_text: more_honey_description),
];
