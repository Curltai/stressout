class ApplicationName {
  String icon;
  String name;
  bool favorite;

  ApplicationName(
      {required this.icon, required this.name, required this.favorite});
}

List<ApplicationName> apps = [
  ApplicationName(
    name: 'Instagram',
    favorite: true,
    icon: 'assets/images/instagram.svg',
  ),
  ApplicationName(
    name: 'Youtube',
    favorite: true,
    icon: 'assets/images/youtube.svg',
  ),
  ApplicationName(
    name: 'Facebook',
    favorite: false,
    icon: 'assets/images/facebook.svg',
  ),
  ApplicationName(
    name: 'Twitter',
    favorite: false,
    icon: 'assets/images/twitter.svg',
  ),
  ApplicationName(
    name: 'Pinterest',
    favorite: true,
    icon: 'assets/images/pinterest.svg',
  ),
  ApplicationName(
    name: 'Linkedin',
    favorite: true,
    icon: 'assets/images/linkedin.svg',
  ),
  ApplicationName(
    name: 'Whatsapp',
    favorite: false,
    icon: 'assets/images/whatsapp.svg',
  ),
  ApplicationName(
    name: 'Spotify',
    favorite: false,
    icon: 'assets/images/spotify.svg',
  ),
];
