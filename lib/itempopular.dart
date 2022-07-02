import 'dart:ffi';

import 'package:flutter/material.dart';

class ItemsPopular {
  String urlPhoto;

  ItemsPopular({required this.urlPhoto});
}

final List<ItemsPopular> listItemPopular = [
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  ),
  ItemsPopular(
    urlPhoto: "assets/images/111.jpeg",
  )
];

class MessageModel {
  String time;
  String text;

  MessageModel({
    required this.time,
    required this.text,
  });
}

final List<MessageModel> messages = [
  MessageModel(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie fermentum porttitor diam purus ",
      time: "08:30"),
  MessageModel(
      text:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie.",
      time: "08:30"),
  MessageModel(text: "Lorem ipsum dolor amet, consectetur.", time: "08:30"),
  MessageModel(text: "Consectetur", time: "08:30"),
  MessageModel(text: "ipsum .", time: "08:30")
];
