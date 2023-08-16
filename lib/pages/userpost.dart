import 'package:flutter/material.dart';

// class UserPosts extends StatefulWidget {
//   const UserPosts({super.key});

//   @override
//   State<UserPosts> createState() => _UserPostsState();
// }

// class _UserPostsState extends State<UserPosts> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.topRight,
//         children: [
//           Image.asset(
//             'assets/images/user1.png',
//             height: MediaQuery.of(context).size.width,
//             width: MediaQuery.of(context).size.width,
//           ),
//           Container(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Colors.black.withOpacity(0.8),
//               ),
//               child: const Text(
//                 '1/4',
//                 style: TextStyle(color: Colors.white, fontSize: 12),
//               ))
//         ],
//       ),
// bottomNavigationBar: BottomNavigationBar(
//   type: BottomNavigationBarType.fixed,
//   items: const [
//     BottomNavigationBarItem(
//       icon: Icon(Icons.favorite_outline_outlined),
//     ),

//     BottomNavigationBarItem(icon: Icon(Icons.message_outlined),),
//     BottomNavigationBarItem(icon: Icon(Icons.share),),

//   ],
// ),

// Row(
//     children: [
//       Icon(Icons.favorite_border),
//       SizedBox(width: 4),
//       Icon(Icons.comment),
//       SizedBox(width: 4),
//       Icon(Icons.share),
//       SizedBox(width: 4),
//     ],
//           SmoothPageIndicator(
//             controller: Pagecontroller(),
//             count: 6,
//             axisDirection: Axis.vertical,
//             effect: SlideEffect(
//                 spacing: 8.0,
//                 radius: 4.0,
//                 dotWidth: 12.0,
//                 dotHeight: 12.0,
//                 paintStyle: PaintingStyle.fill,
//                 strokeWidth: 1.5,
//                 dotColor: Colors.grey,
//                 activeDotColor: Colors.indigo
//                 ),
//           ),
//           ),
//     );
//   }
// }
class Post {
  final String username;
  final String location;
  final String imageUrl;

  Post({
    required this.username,
    required this.location,
    required this.imageUrl,
  });
}

class UserPosts extends StatelessWidget {
  final List<Post> posts = [
    Post(
      username: 'Usha',
      location: 'kathmandu',
      imageUrl: 'assets/images/user3.jpeg',
    ),
    Post(
      username: 'Prabesh',
      location: 'Pokhara',
      imageUrl: 'assets/images/user4.jpeg',
    ),
    // Add more posts here...
  ];

  UserPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Clone'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostWidget(post: posts[index]);
        },
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            post.username,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4.0),
          Image.network(post.imageUrl),
          const SizedBox(height: 4.0),
          Text(post.location),
        ],
      ),
    );
  }
}
