import 'package:flutter/material.dart';
import 'package:ui_practice/Navigator/model/user_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _surNameController = TextEditingController();
    final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

    return Scaffold(
      body: Form(
        key: _formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 350,
                height: 400,
                child: Card(
                  color: Colors.grey.shade900,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text("Kullanıcı bilgileri"),
                        SizedBox(height: 50),

                        _inputField("Ad", "Ad", 8, controller: _nameController),
                        SizedBox(height: 10),

                        _inputField("Soyad", "Soyad", 8, controller: _surNameController),
                        SizedBox(height: 10),
                        ElevatedButton(
                          child: Text("Gönder"),
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              Navigator.of(context).pushNamed(
                                "/detailPage",
                                arguments: UserModel(
                                  name: _nameController.text,
                                  surname: _surNameController.text,
                                ),
                              );
                            } else {
                              return;
                            }
                          },
                        ),
                        SizedBox(height: 20),
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

  TextFormField _inputField(
    String hintText,
    String labelText,
    int length, {
    bool isSecure = false,
    required TextEditingController controller,
  }) {
    return TextFormField(
      controller: controller,
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
