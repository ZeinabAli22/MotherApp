import 'package:flutter/material.dart';
import 'package:proj_app/components/iteam.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: const Text('Games'),
      ),
      //body
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          padding: const EdgeInsets.all(5),
          childAspectRatio: 1.20,
          children: items
              .map<Widget>((Item item) => _ItemGridCellWidget(item))
              .toList(),
        ),
      ),
    );
  }
}

class _ItemGridCellWidget extends StatelessWidget {
  final Item item;
  const _ItemGridCellWidget(
    this.item, {
    super.key,
  });

  void _selectItem(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => _ItemFullScreenWidget(item),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
        footer: GridTileBar(
          title: Text(item.name),
          //subtitle: Text(_item.description),
          backgroundColor: const Color(0xb4024934),
        ),
        child: GestureDetector(
          onTap: () => _selectItem(context),
          child: Hero(
            key: Key(item.imageUrl),
            tag: item.name,
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}

class _ItemFullScreenWidget extends StatelessWidget {
  final Item item;
  const _ItemFullScreenWidget(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.gameUrl),
      ),
      body: SizedBox.expand(
        child: Hero(
            tag: item.gameUrl,
            child: Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
