import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

// ignore: must_be_immutable
class ListViewUsage extends StatelessWidget {
  ListViewUsage({Key? key}) : super(key: key);

  List<Student> allStudent = List.generate(
    500,
    (index) => Student(
        index + 1, "Student name ${index + 1}", "Student surname ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student List"),
      ),
      body: buildListViewSeparated(),
    );
  }

  ListView buildListViewSeparated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var oankiStudent = allStudent[index];
        return Card(
          color:
              index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: (() {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue;
              }
              EasyLoading.showToast(
                "Member clicked",
                dismissOnTap: true,
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            }),
            onLongPress: () {
              _alertDialogIslemleri(context, oankiStudent);
            },
            title: Text(oankiStudent.name),
            subtitle: Text(oankiStudent.surname),
            leading: CircleAvatar(
              child: Text(
                oankiStudent.id.toString(),
              ),
            ),
          ),
        );
      },
      itemCount: allStudent.length,
      separatorBuilder: (context, index) {
        var newIndex = index + 1;
        if (newIndex % 4 == 0) {
          return const Divider(
            thickness: 2,
            color: Colors.teal,
          );
        }
        return const SizedBox();
      },
    );
  }

  ListView classicListView() {
    return ListView(
      children: allStudent
          .map(
            (Student ogr) => ListTile(
              title: Text(ogr.name),
              subtitle: Text(ogr.surname),
              leading: CircleAvatar(
                child: Text(
                  ogr.id.toString(),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Student selected) {
    showDialog(
      barrierDismissible: false,
      context: myContext,
      builder: (context) {
        return AlertDialog(
          title: Text(selected.toString()),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("data" * 100),
                Text("ahmet" * 200),
                Text("ensar" * 121),
              ],
            ),
          ),
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("OKEY"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("CLOSE"),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}

class Student {
  final int id;
  final String name;
  final String surname;

  Student(this.id, this.name, this.surname);

  @override
  String toString() {
    return "Name : $name - Surname : $surname - id : $id";
  }
}
