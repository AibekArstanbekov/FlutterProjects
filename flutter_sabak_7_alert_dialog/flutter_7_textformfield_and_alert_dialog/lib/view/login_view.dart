import 'package:flutter/material.dart';
import 'package:flutter_7_textformfield_and_alert_dialog/view/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _HomeViewState();
}

class _HomeViewState extends State<LoginView> {
  String email = 'minuratma@gmail.com';
  String password = '0000';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffe6e6e6),
        body: Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/флаг3.png',
                    height: 150,
                    width: 150,
                  ),
                ],
              ),
              const Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Image.network(
                'https://elements-cover-images-0.imgix.net/9f58e7c4-138e-4054-824c-a9421f7647f9?auto=compress%2Cformat&fit=max&w=900&s=adc9212d5990c579d1258f19df49852a',
                width: 300,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Material(
                  elevation: 15,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Email';
                      } else if (value != email) {
                        return 'Email is incorrect';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Material(
                  elevation: 15,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Password';
                      } else if (value != password) {
                        return 'Password is incorrect';
                      }

                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Password',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Color(0xff029381),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff4ebdaf),
                  minimumSize: const Size(330, 60),
                  shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeView(),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Sing In',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an accaunt? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color(0xff4ebdaf),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
