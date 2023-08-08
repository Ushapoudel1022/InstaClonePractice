import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  final List<String> imageUrls = [
    'assets/images/user1.png',
    'assets/images/user1.png',
    'assets/images/user1.png',
    // Add more image URLs here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Usha Poudel",
                style: TextStyle(fontFamily: 'PTSans', color: Colors.black),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.add_box_rounded,
                              size: 31,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            size: 31,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("89",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Posts"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("89",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Followers"),
                        ],
                      ),
                      Column(
                        children: [
                          Text("89",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Text("Following"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Image.network(
            imageUrls[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
