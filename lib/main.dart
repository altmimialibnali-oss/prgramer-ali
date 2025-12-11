import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListPage(),
  ));
}

class ListItem {
  final String title;
  final String subtitle;
  final IconData icon;

  ListItem(this.title, this.subtitle, this.icon);
}

class ListPage extends StatelessWidget {
  final item1 = ListItem('Item 1', 'Description 1', Icons.home);
  final item2 = ListItem('Item 2', 'Description 2', Icons.star);
  final item3 = ListItem('Item 3', 'Description 3', Icons.settings);
  final item4 = ListItem('Item 4', 'Description 4', Icons.person);

  @override
  Widget build(BuildContext context) {
    final items = [item1, item2, item3, item4];

    return Scaffold(
      appBar: AppBar(title: Text('My List'), backgroundColor: Colors.lightBlueAccent),
      body: ListView(
        children: items.map((item) {
          return ListTile(
            leading: Icon(item.icon),
            title: Text(item.title),
            subtitle: Text(item.subtitle),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailPage(item: item)),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final ListItem item;

  const DetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.title), backgroundColor: Colors.blueGrey),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(item.icon, size: 100),
            SizedBox(height: 20),
            Text(item.title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(item.subtitle, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}