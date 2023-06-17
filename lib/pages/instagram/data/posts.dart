class InstagramPost {
  String image;
  String user;
  bool favorite;
  bool block;
  String description;

  InstagramPost(
      {required this.image,
      required this.user,
      required this.favorite,
      required this.block,
      required this.description});
}

List<InstagramPost> instagramPosts = [
  InstagramPost(
      user: 'kadyu',
      favorite: true,
      block: false,
      image: 'assets/images/post-1.png',
      description:
          'That awkward moment when you\'re wearing Nikes but you can\'t do it.'),
  InstagramPost(
      user: 'talantbek_ismailov',
      favorite: true,
      block: false,
      image: 'assets/images/post-2.png',
      description:
          'That awkward moment when you\'re wearing Nikes but you can\'t do it.'),
  InstagramPost(
      user: 'nurakyrgyz',
      favorite: true,
      block: false,
      image: 'assets/images/post-1.png',
      description:
          'That awkward moment when you\'re wearing Nikes but you can\'t do it.'),
  InstagramPost(
      user: 'nurakyrgyz',
      favorite: true,
      block: false,
      image: 'assets/images/post-1.png',
      description:
          'That awkward moment when you\'re wearing Nikes but you can\'t do it.'),
];
