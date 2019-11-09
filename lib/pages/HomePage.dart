import 'package:codlab5_camera/models/FavoritePlace.dart';
import 'package:codlab5_camera/pages/CreatePlacePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final places = <FavoritePlace>[];

  @override
  Widget build(BuildContext context) {
    //add data to list
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Lesson 5'),
      ),
      body: places.isEmpty
          ? Center(
        child: const Text('Press + to add a new place.'),
      )
          : ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, index) {
          return PlaceTile(place: places[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:() {
          _showCreatePlace(context);
        },
      ),
    );
  }
  Future<void> _showCreatePlace<Widget>(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute<FavoritePlace>(
            builder: (context) => CreatePlacePage()));
    if (result != null) {
      setState(() {
        places.add(result);
      });
    }
  }
}





