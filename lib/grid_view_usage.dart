import 'package:flutter/material.dart';

class GridViewUsage extends StatelessWidget {
  const GridViewUsage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
      ),
      body: GridView.builder(
        itemCount: 100,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              margin: const EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue.shade800,
                  width: 3,
                  style: BorderStyle.solid,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blueGrey,
                    offset: Offset(5.0, 4.0),
                    blurRadius: 5.0,
                  ),
                ],
                //shape: BoxShape.circle,
                //color: Colors.blue[100 * ((index + 1) % 8)],
                gradient: const LinearGradient(
                  colors: [Colors.yellow, Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                image: const DecorationImage(
                  image: AssetImage("assets/images/tree.jpeg"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Landscape",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            onTap: () => debugPrint("Hello Flutter $index clicked."),
            onDoubleTap: () => debugPrint("Hello Flutter $index çift clicked."),
            onLongPress: () => debugPrint("Hello Flutter $index long press."),
            onHorizontalDragStart: (e) =>
                debugPrint("Hello Flutter $index long press. - $e"),
          );
        },
      ),
    );
  }
}

/*GridView.extent(
        maxCrossAxisExtent: 200,
        primary: true,
        // scrollDirection: Axis.horizontal, kaydırma yönü yatay yapıyor.
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,

        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),*/

/*GridView.count(
        crossAxisCount: 2,
        primary: false,
        // scrollDirection: Axis.horizontal, kaydırma yönü yatay yapıyor.
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 20,
        mainAxisSpacing: 40,

        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.orange.shade400,
            child: Text(
              "Hello world",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),*/
