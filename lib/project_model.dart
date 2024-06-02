class AppProject {
  AppProject.fromMap(Map<String, dynamic> newItem)
      : id = newItem['id'],
        name = newItem['name'],
        slug = newItem['slug'],
        platforms = newItem['platforms'],
        iconPath = newItem['iconPath'],
        imageList =
            (newItem['imageList'] as List).map((e) => e as String).toList(),
        download = (newItem['download'] as List)
            .map((e) => e as Map<String, String>)
            .toList(),
        techs = newItem['techs'],
        about = newItem['about'],
        introduction = newItem['introduction'],
        start = newItem['start'],
        end = newItem['end'];

  AppProject({
    required this.id,
    required this.name,
    required this.slug,
    required this.platforms,
    required this.iconPath,
    required this.imageList,
    required this.download,
    required this.techs,
    required this.about,
    required this.introduction,
    required this.start,
    required this.end,
  });

  String id;
  String name;
  String slug;
  List<String> platforms;
  String iconPath;
  List<String> imageList;
  List<Map<String, String>> download;
  Map<String, String> techs;
  String about;
  String introduction;
  String start;
  String end;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'platforms': platforms,
      'iconPath': iconPath,
      'imageList': imageList,
      'download': download,
      'techs': techs,
      'about': about,
      'introduction': introduction,
      'start': start,
      'end': end,
    };
  }
}
