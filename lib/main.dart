import 'package:flutter/material.dart';

import 'app_screen/home.dart';

void main() => runApp(
      MaterialApp(
        title: "Exploring UI Widgert",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Basic ListView"),
          ),
          body: getListViewDynamic(),
          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint('Add clicked'),
            child: Icon(Icons.add),
            tooltip: 'Add one more Item',
          ),
          //body: getListView(),
        ),
      ),
    );

void showSnackBar(BuildContext context, String data) {
  var snackBar = SnackBar(
    content: Text(data),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () =>debugPrint('Performing undo dummy button');
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
          leading: Icon(Icons.landscape),
          title: Text('Landscape'),
          subtitle: Text('Beautiful View'),
          trailing: Icon(Icons.wb_sunny),
          onTap: () => debugPrint("Landscape tapped")),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text('Windows'),
      ),
      ListTile(leading: Icon(Icons.phone), title: Text('Phone'))
    ],
  );
  return listView;
}

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListViewDynamic() {
  var listItem = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItem[index]),
      onTap: () => showSnackBar(context, '${listItem[index]} was tapped'),
    );
  });
  return listView;
}
