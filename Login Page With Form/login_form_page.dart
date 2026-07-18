import 'package:flutter/material.dart';

class LoginFormPage extends StatefulWidget {
  const LoginFormPage({super.key});

  @override
  State<LoginFormPage> createState() => _LoginFormPageState();
}

class _LoginFormPageState extends State<LoginFormPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 350,
                width: 400,
                child: Card(
                  color: Colors.grey.shade900,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("Hosgeldiniz ! ", style: TextStyle(color: Colors.blue)),
                        SizedBox(height: 50),

                        inputField("Email", "Email", 8),
                        SizedBox(height: 10),

                        inputField("Sifre", "Sifre", 8),

                        TextButton(child: Text("Şifrenizi mi unuttunuz ? !"), onPressed: () {}),
                        SizedBox(height: 20),

                        ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(const SnackBar(content: Text("Başarılı")));
                            }
                          },
                          child: Text("Giris Yap"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _validator(String? value, int length) {
    if (value == null || value.isEmpty) {
      return "Boş bırakmayınız";
    }

    if (value.length < length) {
      return "En az $length karakter giriniz";
    }

    return null;
  }

  TextFormField inputField(String hintText, String labelText, int length, {bool isSecure = false}) {
    return TextFormField(
      obscureText: isSecure,
      validator: (value) => _validator(value, length),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
