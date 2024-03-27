import 'package:flutter/material.dart';

void main() {}

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Catalog'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(text: 'Collection'),
                Tab(text: 'Product'),
                Tab(text: 'Channel'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CollectionCatalog(title: 'Collection'),
              CollectionCatalog(title: 'Product'),
              CollectionCatalog(title: 'Channel'),
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionCatalog extends StatelessWidget {
  final String title;

  CollectionCatalog({required this.title});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(10, (index) {
        return Center(
          child: CollectionItem(),
        );
      }),
    );
  }
}

class CollectionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          // Handle collection item tap here.
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'asset/image/logo.png',
              fit: BoxFit.cover,
            ),
            const ListTile(
              title: Text('Collection Name'),
              subtitle: Text('Collection Description'),
            ),
          ],
        ),
      ),
    );
  }
}
