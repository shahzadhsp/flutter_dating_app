import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  const CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: height * 0.05,
          width: width * 0.23,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
          child: Image(
            fit: BoxFit.cover,
            image:
            
             NetworkImage(
                'https://images.pexels.com/photos/1769735/pexels-photo-1769735.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
           ),
        ),
        Text(title!),
        SizedBox(
          width: width * 0.12,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.message),
            SizedBox(
              width: width * 0.04,
            ),
            Icon(Icons.person)
          ],
        )
      ],
    );
  }
}
