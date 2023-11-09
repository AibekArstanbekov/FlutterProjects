import 'package:flutter/material.dart';
import 'package:flutter_refactorin/features/presentation/components/app_button.dart';
import 'package:flutter_refactorin/features/presentation/components/app_text_fild.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Refactoring'.toUpperCase()),
        ),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextField(
                hintText: 'Enter your name',
                borderRadius: BorderRadius.circular(30),
              ),
              AppTextField(
                hintText: 'Enter your email',
                borderRadius: BorderRadius.circular(30),
              ),
              AppTextField(
                hintText: 'Enter your password',
                borderRadius: BorderRadius.circular(30),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    backgroundColor: Colors.white,
                    text: 'Continue',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
