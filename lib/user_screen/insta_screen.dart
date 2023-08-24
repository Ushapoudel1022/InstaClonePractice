import 'package:flutter/material.dart';
import 'package:insta_app/user_screen/bloc/insta_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/src/bloc_builder.dart';

class InstaScreen extends StatelessWidget {
  const InstaScreen({super.key});

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
        body: BlocBuilder<InstaBloc, InstaState>(
          builder: (context, state) {
            if (state is InstaInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is InstaFinal) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: state.userInstaData.length,
                        itemBuilder: (context, index) => Container(
                              margin: const EdgeInsets.symmetric(vertical: 12),
                              child: Text(state.userInstaData[index].name),
                            )),
                  ),
                ],
              );
            }
            return const SizedBox();
          },
        ));
  }
}
