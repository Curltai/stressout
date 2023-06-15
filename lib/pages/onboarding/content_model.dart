class UnbordingContent {
  String image;
  String title;
  String description;

  UnbordingContent(
      {required this.image, required this.title, required this.description});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Welcome to StressOut',
      image: 'assets/images/onboarding-1.svg',
      description:
          "Discover a safer, more positive social media experience with our web3 super app. Explore popular platforms while enjoying advanced content filtering and personalized features."),
  UnbordingContent(
      title: 'Empower Online Journey',
      image: 'assets/images/onboarding-2.svg',
      description:
          "Take control of your social media experience with our innovative web3 super app. Customize your content preferences, protect your mental well-being, and engage with a diverse community."),
  UnbordingContent(
      title: 'Unlock New Possibilities',
      image: 'assets/images/onboarding-3.svg',
      description:
          "Experience the future of social media with our web3 super app. Access popular platforms, leverage data insights, and forge meaningful partnerships for your business or content creation endeavors."),
];
