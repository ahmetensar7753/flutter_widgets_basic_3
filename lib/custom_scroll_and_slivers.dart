import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapsableToolBarOrnek extends StatelessWidget {
  const CollapsableToolBarOrnek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("Sliver App Bar"),
            backgroundColor: Colors.red,
            expandedHeight: 150,
            floating:
                true, //aşağıya kaydırınca toolbar gidiyor. flaoting yukarı kaydırmaya başladığında toolbarın geri gelmesini sağlıyor
            pinned:
                true, // toolbar flexibleSpaceBar hariç sabitleniyor (true iken).
            flexibleSpace: FlexibleSpaceBar(
              //title: Text("Flexible Title"), buranında title özelliği var. titleCenter: ile de merkeze alınıyor.
              background: Image.asset(
                "assets/images/tree.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                constListMembers(),
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(_createDynamicMember,
                  childCount: 10),
            ),
          ),

          SliverFixedExtentList(
              delegate: SliverChildListDelegate(constListMembers()),
              itemExtent: 100),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(_createDynamicMember,
                  childCount: 20),
              itemExtent: 150),
          //sabit elemanlarla 1 satırda kaç eleman olacağını verdiğimiz grid türü
          SliverGrid(
            delegate: SliverChildListDelegate(
              constListMembers(),
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
          ),
          //dinamik elemanlarla 1 satırda kaç eleman olacağını verdiğimiz grid türü.
          SliverGrid(
            delegate: SliverChildBuilderDelegate(_createDynamicMember,
                childCount: 21),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
          ),
          //dinamik elemanlarla 1 satırdaki elemanın max genişliğini verdiğimiz grid türü.
          SliverGrid(
            delegate:
                SliverChildBuilderDelegate(_createDynamicMember, childCount: 6),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150),
          ),
        ],
      ),
    );
  }

  List<Widget> constListMembers() {
    return [
      Container(
        height: 150,
        color: Colors.amber,
        alignment: Alignment.center,
        child: const Text(
          "Const List Member 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.lightBlue,
        alignment: Alignment.center,
        child: const Text(
          "Const List Member 2",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.pinkAccent,
        alignment: Alignment.center,
        child: const Text(
          "Const List Member 3",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.green,
        alignment: Alignment.center,
        child: const Text(
          "Const List Member 4",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 150,
        color: Colors.limeAccent,
        alignment: Alignment.center,
        child: const Text(
          "Const List Member 5",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  Widget _createDynamicMember(BuildContext context, int index) {
    return Container(
      height: 150,
      margin: const EdgeInsets.only(bottom: 20),
      color: _rasgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        "${index + 1}. Dynamic List Member",
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  Color _rasgeleRenkUret() {
    return Color.fromARGB(
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255),
        math.Random().nextInt(255));
  }
}
