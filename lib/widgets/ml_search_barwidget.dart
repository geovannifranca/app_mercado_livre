import 'package:flutter/material.dart';

class MlSearchBar<T> extends StatefulWidget {
  final String? hintText;
  final List<T> items;
  final T Function() onItemSelected;
  const MlSearchBar({
    super.key,
    this.hintText,
    required this.items,
    required this.onItemSelected,
  });

  @override
  State<MlSearchBar> createState() => _MlSearchBarState();
}

class _MlSearchBarState extends State<MlSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: SearchAnchor.bar(
        barHintText: widget.hintText,

        suggestionsBuilder: (context, controller) {
          final String input = controller.value.text;
          var itemSelected = widget.items
              .where((item) => item.name.toLowerCase().contains(input))
              .map(
                (filtered) => ListTile(
                  title: Text(filtered.name),
                  onTap: () {
                    widget.onItemSelected();
                    controller.closeView(filtered.name);
                  },
                ),
              )
              .toList();
          return itemSelected;
        },
      ),
    );
  }
}
