import 'package:flutter/material.dart';

class ChipWidget extends StatefulWidget {
  @override
  _ChipWidgetState createState() => _ChipWidgetState();
}

class _ChipWidgetState extends State<ChipWidget> {
  List<String> cuisines = ['Indian','Deserts',  'Arabian', 'Smoothies', 'Mexican', 'Chinese', 'Thai', 'Italian'];
  int selectedChipIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: List.generate(cuisines.length, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: ChoiceChip(
              label: Text(
                cuisines[index],
                style: TextStyle(
                  color: selectedChipIndex == index
                      ? Colors.white // Highlighted color
                      : Theme.of(context).primaryColor, // Default color
                ),
              ),
              selected: selectedChipIndex == index,
              onSelected: (selected) {
                setState(() {
                  selectedChipIndex = selected ? index : -1;
                });
              },
              selectedColor: Theme.of(context).primaryColor, // Selected chip color
              backgroundColor: Colors.white70, // Default chip color
              elevation: 3,
              pressElevation: 5,
              labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          );
        }),
      ),
    );
  }
}
