import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xylophone_nota/components/button_container.dart';

class MyHomePages extends StatefulWidget {
  const MyHomePages({super.key});

  @override
  State<MyHomePages> createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Column _buildBody() {
    return Column(children: [
      ButtonContainer(
        color: const Color(0xfff85046),
        onTap: () {
          player.play(AssetSource('do.wav'));
        },
      ),
      ButtonContainer(
        color: const Color(0xfff9977b),
        onTap: () {
          player.play(AssetSource('re.wav'));
        },
      ),
      ButtonContainer(
        color: const Color(0xffe2d2fe),
        onTap: () {
          player.play(AssetSource('mi.wav'));
        },
      ),
      ButtonContainer(
        color: const Color(0xffE5989B),
        onTap: () {
          player.play(AssetSource('fa.wav'));
        },
      ),
      ButtonContainer(
        color: const Color(0xffFFB4A2),
        onTap: () {
          player.play(AssetSource('so.wav'));
        },
      ),
      ButtonContainer(
        color: const Color(0xffFFCDB2),
        onTap: () {
          player.play(AssetSource('la.wav'));
        },
      ),
      ButtonContainer(
        color: const Color(0xffdce0ac),
        onTap: () {
          player.play(AssetSource('si.wav'));
        },
      ),
    ]);
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        'XyloPhone',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
