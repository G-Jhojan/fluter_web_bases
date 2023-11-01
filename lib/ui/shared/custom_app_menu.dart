import 'package:flutter/material.dart';
import 'package:material_design/ui/shared/custom_flat_button.dart';
class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      color: Colors.blue,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: () => Navigator.pushNamed(context, '/stateful') ,
            color: Colors.black,
          ),

          const SizedBox(width: 10,),

          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () => Navigator.pushNamed(context, '/provider'),
            color: Colors.black,
          ),

          const SizedBox(width: 10,),

          CustomFlatButton(
            text: 'otra pagina',
            onPressed: () => Navigator.pushNamed(context, '/abc123'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
