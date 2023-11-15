import 'package:flutter/material.dart';
import './home_page.dart';
import 'package:flutter/rendering.dart';
import 'package:modernlogintute/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // sign user in method
  // void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 179, 211, 236),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 100.0,
              ),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              Text(
                'Selamat datang :) Silahkan login terlebih dahulu ',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              Container(
                color: Color.fromARGB(255, 216, 210, 210),
                child: TextFormField(
                  controller: cUser,
                  decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Input Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Isi kolom user';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Color.fromARGB(255, 216, 210, 210),
                child: TextFormField(
                  obscureText: true,
                  controller: cPass,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Input Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Isi kolom password';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  String tUser = 'qiani';
                  String tPass = '1234';
                  if (formKey.currentState!.validate()) {
                    if (cUser.text == tUser && cPass.text == tPass) {
                      //kode untuk panggil halaman list view
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ));
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Konfirmasi login'),
                              content: Text('User atau Password salah'),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      cUser.text = '';
                                      cPass.text = '';
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Ok'))
                              ],
                            );
                          });
                    }
                  }
                },
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
