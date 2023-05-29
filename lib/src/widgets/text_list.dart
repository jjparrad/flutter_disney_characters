import 'package:flutter/material.dart';

class TextList extends StatelessWidget {
  final String? title;
  final List<String> elements;

  const TextList({super.key, required this.elements, this.title});

  @override
  Widget build(BuildContext context) {
    if (elements.isEmpty) {
      return Container();
    }

    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5), 
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              title as String,
              style: const TextStyle(
                fontWeight: FontWeight.w900
              ),
            ),
          ),
          ListBody(
            children: [
              for (final element in elements) (
                Flexible(child: 
                  Text(
                    element,
                    overflow: TextOverflow.ellipsis,
                  )
                )
              )
            ],
          )
        ],
      )
    );
  }
}
