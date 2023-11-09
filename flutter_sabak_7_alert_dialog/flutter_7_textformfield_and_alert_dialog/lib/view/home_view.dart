import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffeeeeee),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 237,
              color: const Color(0xff54b8ab),
              child: Column(
                children: [
                  Stack(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/флаг3.png',
                          width: 100,
                          height: 100,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.navigate_before),
                        )
                      ],
                    ),
                  ]),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      child: Image.network(
                        'https://png.pngtree.com/png-clipart/20220102/original/pngtree-programmer-s-day-programmers-are-programming-hand-painted-elements-with-bare-png-image_6992613.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Welcome Amelia Roe!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              'https://png.pngtree.com/png-clipart/20221224/ourmid/pngtree-cute-table-clock-png-image_6535989.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              child: Container(
                width: double.infinity,
                height: 310,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(137, 116, 114, 114),
                        offset: Offset(
                          4,
                          4,
                        ),
                        blurRadius: 10,
                      ),
                    ]),
                child: const Padding(
                  padding:
                      EdgeInsets.only(left: 20, top: 35, right: 52, bottom: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Grocery Shoping',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.border_color,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.auto_delete,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.04,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Website Hosting',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.border_color,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.auto_delete,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.04,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box_outline_blank,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'UX Designing      ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.border_color,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.auto_delete,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.04,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Haircut                ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.border_color,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.auto_delete,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.04,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check_box_outline_blank,
                            size: 40,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Guitar Sesion      ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 30),
                          Icon(
                            Icons.border_color,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.auto_delete,
                            size: 40,
                            color: Color(0xff4ebdaf),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
