import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green, Colors.white],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/repair-tool.png", width: 180),
                      const Text(
                        "ระบบแจ้งซ่อมอุปกรณ์คอมพิวเตอร์",
                        style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: username,
                        decoration:
                            const InputDecoration(labelText: "Username"),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: password,
                        decoration:
                            const InputDecoration(labelText: "Password"),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.login, color: Colors.white),
                            label: const Text("เข้าสู่ระบบ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: () {},
                          )),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
