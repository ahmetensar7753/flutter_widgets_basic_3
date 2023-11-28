import 'package:flutter/material.dart';

class ImageExamples extends StatelessWidget {
  const ImageExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imgUrl =
        "https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg";
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Image.asset(
                      "assets/images/tree.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: Image.network(
                      imgUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                      color: Colors.red.shade900,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(imgUrl),
                        foregroundColor: Colors.red,
                        child: Text(
                          "E",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
