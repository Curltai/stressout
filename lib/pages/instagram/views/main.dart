import 'package:flutter/material.dart';
import 'package:stressout/pages/instagram/widgets/bubble_stories.dart';
import 'package:stressout/pages/instagram/widgets/user_posts.dart';

import '../data/posts.dart';

class Instagram extends StatelessWidget {
  Instagram({super.key});

  final List people = [
    'obama',
    'kadyu',
    'nurgpt',
    'coder',
    'zuckerberg',
    'talant',
    'john',
    'alex'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Stories
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(
                  name: people[index],
                );
              },
            ),
          ),

          // Posts
          Expanded(
            child: ListView.builder(
                itemCount: instagramPosts.length,
                itemBuilder: (context, index) {
                  return UserPosts(
                    post: instagramPosts[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}
