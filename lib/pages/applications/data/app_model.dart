class ApplicationName {
  String image;
  String name;
  bool favorite;

  ApplicationName(
      {required this.image, required this.name, required this.favorite});
}

List<ApplicationName> apps = [
  ApplicationName(
    name: 'Instagram',
    favorite: true,
    image: 'assets/images/onboarding-1.svg',
  ),
  ApplicationName(
    name: 'Youtube',
    favorite: true,
    image: 'assets/images/onboarding-2.svg',
  ),
  ApplicationName(
    name: 'Facebook',
    favorite: false,
    image: 'assets/images/onboarding-3.svg',
  ),
  ApplicationName(
    name: 'Twitter',
    favorite: false,
    image: 'assets/images/onboarding-3.svg',
  ),
  ApplicationName(
    name: 'Instagram',
    favorite: true,
    image: 'assets/images/onboarding-1.svg',
  ),
  ApplicationName(
    name: 'Youtube',
    favorite: true,
    image: 'assets/images/onboarding-2.svg',
  ),
  ApplicationName(
    name: 'Facebook',
    favorite: false,
    image: 'assets/images/onboarding-3.svg',
  ),
  ApplicationName(
    name: 'Twitter',
    favorite: false,
    image: 'assets/images/onboarding-3.svg',
  ),
];
