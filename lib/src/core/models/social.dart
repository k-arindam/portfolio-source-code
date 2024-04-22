class Social {
  final String link;
  final String img;

  const Social({
    required this.link,
    required this.img,
  });

  factory Social.fromJson(Map json) {
    return Social(
      link: json['link'],
      img: json['img'],
    );
  }
}

extension SocialExtOnMap on Map {
  Social get toSocial => Social.fromJson(this);
}
