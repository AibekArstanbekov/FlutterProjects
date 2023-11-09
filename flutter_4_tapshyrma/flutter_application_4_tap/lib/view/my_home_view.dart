import 'package:flutter/material.dart';
import 'package:flutter_application_4_tap/view/second_page.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056c5c),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text("Home Work 4"),
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(
            width: 150,
            height: 150,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/12234.jpg',
              ),
            ),
          ),
          const Text(
            "Aibek Arstanbekov",
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w400,
              fontFamily: "Oswald-VariableFont_wght",
            ),
          ),
          const Text(
            "Flutter Developer",
            style: TextStyle(
                color: Color(0xfff7f9f9),
                fontSize: 28,
                fontWeight: FontWeight.w400,
                fontFamily: 'Pacifico-Regular'),
          ),
          const Divider(
            indent: 30,
            endIndent: 30,
            height: 0,
            thickness: 2,
            color: Colors.white,
          ),
          const SizedBox(
            height: 23,
          ),
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              labelText: '+4917624102651',
              prefix: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Icon(Icons.phone),
              ),
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          TextFormField(
            decoration: const InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              labelText: 'arstanbekov77@gmail.com',
              prefix: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Icon(Icons.email),
              ),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                ),
              );
            },
            child: const Text('Next'),
          )
        ]),
      ),
    );
  }
}
