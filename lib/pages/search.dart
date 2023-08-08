// // // import 'package:flutter/material.dart';

// // // class UserSearch extends StatelessWidget {
// // //   const UserSearch({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return const Placeholder();
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // class UserSearch extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         leading: IconButton(
// //           icon: const Icon(
// //             Icons.camera_alt,
// //             size: 32,
// //           ),
// //           onPressed: () {},
// //         ),
// //         title: const Text(
// //           'instagram',
// //           style: TextStyle(fontFamily: 'PTSans', fontSize: 41),
// //         ),
// //         centerTitle: true,
// //         actions: <Widget>[
// //           IconButton(
// //             icon: const Icon(
// //               Icons.live_tv,
// //               size: 32,
// //             ),
// //             onPressed: () {},
// //           ),
// //           IconButton(
// //             icon: const Icon(
// //               Icons.send,
// //               size: 32,
// //             ),
// //             onPressed: () {},
// //           ),
// //         ],
// //       ),
// //       body: ListView(
// //         children: <Widget>[
// //           Padding(
// //             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: <Widget>[
// //                 Text(
// //                   'Stories',
// //                   style: TextStyle(
// //                       color: Colors.black.withOpacity(.8),
// //                       fontWeight: FontWeight.w600,
// //                       fontSize: 19),
// //                 ),
// //                 Row(
// //                   children: <Widget>[
// //                     const Icon(
// //                       Icons.arrow_right,
// //                       size: 43,
// //                     ),
// //                     Text(
// //                       'Watch All',
// //                       style: TextStyle(
// //                           color: Colors.black.withOpacity(.8),
// //                           fontWeight: FontWeight.w600,
// //                           fontSize: 19),
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //           ),
// //           Container(
// //             padding: const EdgeInsets.only(left: 15),
// //             height: 122,
// //             child: ListView(
// //               scrollDirection: Axis.horizontal,
// //               children: <Widget>[
// //                 Padding(
// //                   padding: const EdgeInsets.only(right: 12),
// //                   child: Column(
// //                     children: <Widget>[
// //                       Stack(
// //                         // overflow: Overflow.visible,
// //                         children: <Widget>[
// //                           Container(
// //                             width: 75,
// //                             height: 75,
// //                             decoration: const BoxDecoration(
// //                                 image: DecorationImage(
// //                                     image:
// //                                         AssetImage('assets/users/user.png'))),
// //                           ),
// //                           Positioned(
// //                             bottom: 0,
// //                             right: -9,
// //                             child: Container(
// //                               decoration: BoxDecoration(
// //                                   color: Colors.blue,
// //                                   shape: BoxShape.circle,
// //                                   border: Border.all(
// //                                       color: Colors.white, width: 2)),
// //                               child: const Icon(Icons.add, color: Colors.white),
// //                             ),
// //                           )
// //                         ],
// //                       ),
// //                       const SizedBox(
// //                         height: 5,
// //                       ),
// //                       Text(
// //                         'My Story',
// //                         style: TextStyle(
// //                             color: Colors.black.withOpacity(.8),
// //                             fontWeight: FontWeight.w500),
// //                       )
// //                     ],
// //                   ),
// //                 ),
// //                 story('assets/users/person1.jpg', 'Hassan'),
// //                 story('assets/users/person2.jpg', 'Hassan'),
// //                 story('assets/users/person3.jpg', 'Hassan'),
// //                 story('assets/users/person1.jpg', 'sqd'),
// //               ],
// //             ),
// //           ),
// //           feed('assets/1.jpg'),
// //           feed('assets/2.jpg'),
// //           feed('assets/3.jpg'),
// //           feed('assets/4.jpg'),
// //         ],
// //       ),
// //       bottomNavigationBar: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //         children: <Widget>[
// //           IconButton(
// //             onPressed: () {},
// //             icon:
// //                 Icon(Icons.home, size: 32, color: Colors.black.withOpacity(.9)),
// //           ),
// //           IconButton(
// //             onPressed: () {},
// //             icon: Icon(Icons.search,
// //                 size: 32, color: Colors.black.withOpacity(.4)),
// //           ),
// //           IconButton(
// //             onPressed: () {},
// //             icon: Icon(Icons.add_circle_outline,
// //                 size: 32, color: Colors.black.withOpacity(.4)),
// //           ),
// //           IconButton(
// //             onPressed: () {},
// //             icon: Icon(Icons.favorite_border,
// //                 size: 32, color: Colors.black.withOpacity(.4)),
// //           ),
// //           IconButton(
// //             onPressed: () {},
// //             icon: Icon(Icons.person_outline,
// //                 size: 32, color: Colors.black.withOpacity(.4)),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // Widget story(String image, name) {
// //   return Padding(
// //     padding: const EdgeInsets.only(right: 12),
// //     child: Column(
// //       children: <Widget>[
// //         Container(
// //           padding: const EdgeInsets.all(1),
// //           width: 76,
// //           height: 76,
// //           decoration: BoxDecoration(
// //               shape: BoxShape.circle,
// //               border: Border.all(color: const Color(0xFFc05ba6), width: 3)),
// //           child: ClipOval(
// //             child: Image.asset(
// //               image,
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //         ),
// //         const SizedBox(
// //           height: 5,
// //         ),
// //         Text(
// //           name,
// //           style: TextStyle(
// //               color: Colors.black.withOpacity(.8), fontWeight: FontWeight.w500),
// //         )
// //       ],
// //     ),
// //   );
// // }

// // Widget feed(String image) {
// //   return Container(
// //     decoration: BoxDecoration(
// //         color: Colors.white,
// //         border: Border(top: BorderSide(color: Colors.grey.withOpacity(.3)))),
// //     child: Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: <Widget>[
// //         ListTile(
// //           leading: const CircleAvatar(
// //             backgroundImage: AssetImage('assets/users/person1.jpg'),
// //           ),
// //           title: Text(
// //             'alexs',
// //             style: TextStyle(
// //                 color: Colors.black.withOpacity(.8),
// //                 fontWeight: FontWeight.w400,
// //                 fontSize: 21),
// //           ),
// //           trailing: const Icon(Icons.more_vert),
// //         ),
// //         Image.asset(
// //           image,
// //           fit: BoxFit.cover,
// //           width: double.infinity,
// //         ),
// //         const Padding(
// //           padding: EdgeInsets.all(8.0),
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //             children: <Widget>[
// //               Row(
// //                 children: <Widget>[
// //                   Icon(Icons.favorite_border, size: 31),
// //                   SizedBox(
// //                     width: 12,
// //                   ),
// //                   // Icon(FontAwesomeIcons.solidComment,size:31),
// //                   SizedBox(
// //                     width: 12,
// //                   ),
// //                   Icon(Icons.send, size: 31),
// //                 ],
// //               ),
// //               Icon(Icons.bookmark_border, size: 31)
// //             ],
// //           ),
// //         ),
// //         Padding(
// //           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
// //           child: Text(
// //             'liked by mohamed and 26 others',
// //             style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(.8)),
// //           ),
// //         )
// //       ],
// //     ),
// //   );
// // }


// // import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// // import 'package:flutter_instagram_ui/InstaStories.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'Data_Model_Story.dart';

// class InstaList extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {

// Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
        
//         //1st row
        
//         Padding(
//           padding: const EdgeInsets.fromLTRB(16.0,16.0,8.0, 16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 40.0,width: 40.0,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: NetworkImage(dummyStoryData[index].profilepic)
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Text(dummyStoryData[index].name,style: TextStyle(fontWeight: FontWeight.bold),),
//                 ],
//               ),

//                IconButton(
//                  icon: Icon(Icons.more_vert),
//                  onPressed: null,
//                )

//              ],
//           ),
//         ),

//         //2nd row


//         InteractiveViewer(
//           boundaryMargin: EdgeInsets.all(8.0),
//           minScale: 0.1,
//           maxScale: 1.6,
//           onInteractionUpdate: (_)=>print("Interaction Updated"),
//           child: ClipRRect(borderRadius: BorderRadius.circular(15),
//               child: Flexible(
//                 fit: FlexFit.loose,
//                 child: Image.network(dummyStoryData[index].postphoto,fit: BoxFit.cover,),
//               ),
//           ),
//         ),

//         //3rd row
        
//         Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Icon(
//                     FontAwesomeIcons.heart
//                   ),
//                   SizedBox(width: 10,),
//                   Icon(
//                     FontAwesomeIcons.comment
//                   ),
//                   SizedBox(width: 10,),
//                   Icon(
//                     FontAwesomeIcons.paperPlane
//                   )
//                 ],
//               ),
//               Icon(
//                 FontAwesomeIcons.bookmark
//               )
//             ],
//           ),
//         ),

//         //4th Row

//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0),
//           child: Text(
//             "Liked by Rajat Palankar and 568,444 others ",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ),
        
//         //5th Row

//         Padding(
//           padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 height: 40.0,
//                   width: 40.0,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                       fit: BoxFit.fill,
//                       image: NetworkImage(dummyStoryData[index].profilepic)
//                   ),
//                 ),
//               ),
//               SizedBox(width: 10.0,),
//               Expanded(
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: "Add a comment..."
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),

// // 6th row
//       Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Text("20 Minutes Ago",style: TextStyle(color: Colors.grey),) ,
//       )
//       ],
//     ),);
//   }
// }