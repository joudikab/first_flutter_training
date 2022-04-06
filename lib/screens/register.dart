import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'screen.dart';
import 'package:uni_training/components/component.dart';
import 'package:page_transition/page_transition.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;
    return Scaffold(
      body: Stack(
        children: [
          const BackGround(),
          Padding(
            padding: EdgeInsets.only(left: 26, right: 46),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height / 4.5),
                  const Text(
                    'Register',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  // const Text(
                  //   'Full Name',
                  //   style: TextStyle(color: Colors.blue),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6, bottom: 14),
                    child: SizedBox(
                      //height: 46,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: nameController,
                        validator: (String? text) {
                          if (text == null || text == '' || text.isEmpty) {
                            return 'Can\'t be empty';
                          }
                          if (text.length < 6) {
                            return 'too short';
                          }
                          if (text.contains(' ') == false) {
                            return 'wrong name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Joudi Alkabbani',
                          label: Text('Full name'),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const Text(
                  //   'Email',
                  //   style: TextStyle(color: Colors.blue),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 14),
                    child: SizedBox(
                      //height: 46,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: emailController,
                        validator: (String? text) {
                          if (text == null || text == '' || text.isEmpty) {
                            return 'Can\'t be empty';
                          }
                          if (text.length < 6) {
                            return 'too short';
                          }
                          if (text.contains('@') == false ||
                              text.contains('.') == false) {
                            return 'Invalid email format';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'johndoe@gmail.com',
                          label: Text('Email'),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const Text(
                  //   'Password',
                  //   style: TextStyle(color: Colors.blue),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0, bottom: 14),
                    child: SizedBox(
                      //height: 46,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: passwordController,
                        validator: (String? text) {
                          if (text == null || text == '' || text.isEmpty) {
                            return 'Can\'t be empty';
                          }
                          if (text.length < 6) {
                            return 'too short';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: Text('Password'),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.red),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Card(
                        elevation: 2,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          constraints: const BoxConstraints.expand(
                            width: 30,
                            height: 30,
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/google.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Card(
                        elevation: 2,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          constraints: const BoxConstraints.expand(
                            width: 30,
                            height: 30,
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: Svg('assets/Facebook_icon_2013.svg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Card(
                        elevation: 2,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          constraints: const BoxConstraints.expand(
                            width: 30,
                            height: 30,
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: Svg('assets/Apple_logo_black.svg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 10,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              right: 30,
              bottom: 40,
              child: Button(
                text: 'Register',
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Splash()));
                }
    },
              ),),
          Positioned(
            bottom: 30,
            left: 30,
            child: Row(
              children: [
                const Text(
                  'Already Member?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                          child: const Login(),
                          type: PageTransitionType.leftToRightJoined,
                          childCurrent: Register(),
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.bounceOut,
                        ));
                  },
                  child: const Text(
                    ' Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
