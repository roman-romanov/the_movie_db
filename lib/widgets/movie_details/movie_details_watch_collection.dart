import 'package:flutter/material.dart';
import 'package:the_movie_db/styles/const.dart';
import 'package:the_movie_db/styles/styles.dart';

class WatchCollectionWidget extends StatelessWidget {
  const WatchCollectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: widthInfifnity, height: half, color: black),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            color: Colors.grey.shade300,
            height: 250,
            width: widthInfifnity,
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      includedInTheCollection,
                      style: nameThirtyTwo,
                    ),
                    SizedBox(height: 30.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(50)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(watchCollection.toUpperCase(),
                            style: nameTwentyWhite),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
