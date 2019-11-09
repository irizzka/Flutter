import 'dart:io';

import 'package:flutter/material.dart';

class FavoritePlace {
  FavoritePlace(this.name, this.description, this.photo);

  final File photo;
  final String name;
  final String description;
}


class PlaceTile extends StatelessWidget {
  const PlaceTile({Key key, this.place}) : super(key: key);

  final FavoritePlace place;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.file(place.photo),
      title: Text(
        place.name,
        style: Theme.of(context).textTheme.subhead,
        maxLines: 1,
      ),
      subtitle: Text(
        place.description,
        style: Theme.of(context).textTheme.subtitle,
        maxLines: 1,
      ),
    );
  }
}