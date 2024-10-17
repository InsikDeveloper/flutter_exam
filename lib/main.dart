// import 'dart:math';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Rolling game ni HARVEY',
//       home: DynamicUI(),
//     );
//   }
// }

// class DynamicUI extends StatefulWidget {
//   @override
//   _DynamicUIState createState() => _DynamicUIState();
// }

// class _DynamicUIState extends State<DynamicUI> {
//   double _size = 1.0;
//   Color _bgColor = const Color.fromARGB(255, 104, 15, 221);
//   String _boxText = 'Random Colors';

//   Color getRandomColor() {
//     final random = Random();
//     return Color.fromARGB(
//       random.nextInt(256),
//       random.nextInt(256),
//       random.nextInt(256),
//       random.nextInt(256),
//     );
//   }

//   void _scaleBox() {
//     setState(() {
//       _size = _size == 1.0 ? 1.5 : 1.0;

//       // _bgColor = _bgColor == const Color.fromARGB(255, 13, 178, 255)
//       //     ? const Color.fromARGB(255, 255, 6, 56)
//       //     : const Color.fromARGB(255, 13, 178, 255);
//       // _boxText = _boxText == 'Small' ? 'Big' : 'Small';

//       _bgColor = getRandomColor();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Rolling game ni HARVEY'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Image.asset(
//             //   'assets/hakari.jpeg',
//             //   height: 100,
//             // ),
//             SizedBox(
//               height: 20,
//             ),
//             AnimatedContainer(
//               duration: Duration(milliseconds: 300),
//               width: 100 * _size,
//               height: 100 * _size,
//               color: _bgColor,
//               alignment: Alignment.center,
//               child: Text(
//                 _boxText,
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _scaleBox,
//               child: Text(
//                 'Roll',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
// import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeric_MidtermExam',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Prutas(),
    );
  }
}

class Prutas extends StatelessWidget {
  final List<String> students = [
    'Jeric',
    'Harvey',
    'Ivy',
    'Jerico',
    'Dan',
    'Louie',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List of Students'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                students[index],
                // style: TextStyle(color: Colors.black),
                // style: TextStyle(color: textColors[index % colors.length]),
              ),
              // tileColor: colors[index % colors.length],
            ),
          );
        },
      ),
    );
  }
}
