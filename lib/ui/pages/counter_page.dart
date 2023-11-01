import 'package:flutter/material.dart';
import 'package:material_design/ui/shared/custom_app_menu.dart';
import 'package:material_design/ui/shared/custom_flat_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(),
          const Text('Stateful Counter', style: TextStyle(fontSize: 20)),

           FittedBox(
            fit: BoxFit.contain,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Text('Contador: $counter',
               style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold
                )
                       ),
             ),
           ),

         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           CustomFlatButton(
            text: 'Incrementar Valor',
            onPressed: () => setState(() => counter++),
            color: Colors.transparent,
            ),

           CustomFlatButton(
            text: 'Decremente Valor',
            onPressed: () => setState(() => counter--),
            color: Colors.transparent,
            ),
          ],
         ),

         const Spacer(),

        ],
      ),
    );
  }
}
