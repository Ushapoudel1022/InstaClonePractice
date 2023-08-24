// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_app/pages/Home/bloc/home_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<HomeBloc>().add(HomeAddPostRequested());
          },
          child: const Icon(Icons.add)),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                  fontFamily: 'Billabong', fontSize: 35, color: Colors.black),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(
                    Icons.favorite_outline_outlined,
                    size: 31,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.messenger_outline_rounded,
                  size: 31,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => HomeBloc(),
        child: BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is HomeFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error),
                  duration: const Duration(seconds: 2),
                ),
              );
            }
          },
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeLoaded) {
                return Column(
                  children: [
                    const Text("Welcome Usha"),
                    Expanded(
                        child: ListView.builder(
                            itemCount: state.posts.length,
                            itemBuilder: (context, index) {
                              return Card(
                                margin: const EdgeInsets.all(30),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    children: [
                                      Text(state.posts[index].name.toString()),
                                      Text(
                                          "Like Count:${state.posts[index].likecount ?? 0}"),
                                      FloatingActionButton(
                                        onPressed: () {
                                          context
                                              .read<HomeBloc>()
                                              .add(HomePostLikedRequested(
                                                id: state.posts[index].id ?? 0,
                                              ));
                                        },
                                        child: const Icon(Icons.favorite),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }))
                  ],
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
