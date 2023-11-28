import 'package:flutter/material.dart';

class CardAndListUsage extends StatelessWidget {
  const CardAndListUsage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card and List Tile"),
      ),
      body: Center(
        child: ListView(
          //reverse: true, // elemanları tersten yazdırma.
          children: [
            Column(
              children: [
                singleListMember(),
                singleListMember(),
                singleListMember(),
                singleListMember(),
                singleListMember(),
                singleListMember(),
                singleListMember(),
                singleListMember(),
              ],
            ),
            const Text("Hello World"),
            ElevatedButton(
              onPressed: () {
                {}
              },
              child: const Text("Test"),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildUsage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          singleListMember(),
          singleListMember(),
          singleListMember(),
          singleListMember(),
          singleListMember(),
          singleListMember(),
          singleListMember(),
          singleListMember(),
        ],
      ),
    );
  }

  Column singleListMember() {
    return Column(
      children: [
        Card(
          color: Colors.red.withOpacity(0.5),
          shadowColor: Colors.blue,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              foregroundColor: Colors.yellow,
              child: Icon(Icons.add),
            ),
            title: Text("Title"),
            subtitle: Text("Subtitle"),
            trailing: Icon(Icons.ac_unit_sharp),
          ),
        ),
        const Divider(
          color: Colors.red,
          thickness: 3,
          height: 20,
          indent: 20,
          endIndent: 20,
        ),
      ],
    );
  }
}
