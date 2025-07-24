import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchBarWidget({
    super.key,
    required this.onChanged,
    this.hintText = 'Search...',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white70)),

          prefixIcon: Icon(Icons.search),
          // border: OutlineInputBorder(borderSide: BorderSide(color: )),

          // filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );
  }
}
