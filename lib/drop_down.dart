import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<String> drop = ["India", "USA", "Canada", "United Kingdom"];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down Menu"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownMenu<String>(
              width: double.infinity,
              label: Text("Select Value"),
              hintText: "Select Value",
              initialSelection: selectedValue,
              onSelected: (value) {
                selectedValue = value;
              },

              dropdownMenuEntries: drop.map((item) {
                return DropdownMenuEntry(value: item, label: item);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
