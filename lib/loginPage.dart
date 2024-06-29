import 'package:flutter/material.dart';
import 'package:creo_assignment1/nextPage.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isObscuretext = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    isObscuretext = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 239, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 246, 239, 1),
        title: const Text(
          'SIGN IN',
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'H★MILTON',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 4.5),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    _buildBlackText('Email Address'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.red),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.red),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        } else if (!isValidEmail(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    _buildBlackText('Password'),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _passwordcontroller,
                      obscureText: isObscuretext,
                      decoration: InputDecoration(
                        hintText: '8+ characters',
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.red),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2.0, color: Colors.red),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        suffixIcon: TextButton(
                          style: TextButton.styleFrom(
                            elevation: 0,
                          ),
                          onPressed: () {
                            setState(
                              () {
                                isObscuretext = !isObscuretext;
                              },
                            );
                          },
                          child: Text(
                            isObscuretext ? 'Show' : 'Hide',
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 16),
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (!isValidPassword(value)) {
                          return 'Password should contain a number and special character';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.grey,
                              backgroundColor: Color.fromRGBO(248, 248, 255, 1),
                              decoration: TextDecoration.underline),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: _isLoading
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  _isLoading = true;
                                });

                                // Simulate a delay for demonstration purposes
                                Future.delayed(const Duration(seconds: 1), () {
                                  setState(() {
                                    _isLoading = false;
                                  });
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const NextPage(),
                                    ),
                                  );
                                });
                              }
                            },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color.fromRGBO(214, 175, 36, 1),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 100),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: _isLoading
                          ? const CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : const Text(
                              'Log in',
                              style: TextStyle(fontSize: 20),
                            ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Haven't signed up yet?",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    TextButton(
                      onPressed: () {}, //move to signup page
                      child: const Text(
                        'Create an account',
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          if (_isLoading)
            Container(
              color: const Color.fromRGBO(247, 246, 239, 1),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildBlackText(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
        textAlign: TextAlign.left,
      ),
    );
  }

  bool isValidEmail(String email) {
    const String emailPattern =
        r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
    final RegExp regex = RegExp(emailPattern);
    return regex.hasMatch(email);
  }

  bool isValidPassword(String password) {
    const String passwordPattern =
        r'^(?=.*[0-9])(?=.*[!@#$%^&*()_+=<>?{}~\-]).{8,}$';
    final RegExp regex = RegExp(passwordPattern);
    return regex.hasMatch(password);
  }
}
