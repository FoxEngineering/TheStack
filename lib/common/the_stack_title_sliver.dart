import 'package:flutter/cupertino.dart';

SliverPadding getTitleSliver(String text, {bool center = false}) {
  Text titleText = Text(
    text,
    style: const TextStyle(
      fontSize: 20,
      decoration: TextDecoration.underline,
    ),
  );

  return SliverPadding(
    padding: const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
    sliver: SliverToBoxAdapter(
      child: center ? Center(
        child: titleText,
      ) : titleText,
    ),
  );
}