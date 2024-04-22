class Proj {
  final String name;
  final String url;

  const Proj({
    required this.name,
    required this.url,
  });

  factory Proj.fromJson(Map json) {
    return Proj(
      name: json['name'],
      url: json['url'],
    );
  }
}

extension ProjExtOnMap on Map {
  Proj get toProj => Proj.fromJson(this);
}
