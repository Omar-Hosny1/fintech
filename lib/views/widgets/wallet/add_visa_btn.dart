import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddVisaBtn extends StatelessWidget {
  const AddVisaBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.only(right: 10, left: 5),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        dashPattern: const [10, 10],
        color: Colors.grey,
        strokeWidth: 2,
        child:  const SizedBox(
          width: 40,
          height: 300,
          child: Center(
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
