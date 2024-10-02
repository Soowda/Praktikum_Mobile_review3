import 'package:flutter/material.dart';
import 'package:review3/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController password = TextEditingController();
  // TextEditingController username = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? jenisKelamin;
  bool? hobi1 = false;
  bool? hobi2 = false;
  bool? hobi3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 20),
            // CustumTextField(
            //   controller: username,
            //   label: "Username",
            //   hint: "Masukkan Username",
            // ),
            // const SizedBox(height: 20),
            // CustumTextField(
            //   controller: password,
            //   label: "Password",
            //   hint: "Masukkan Password",
            // ),
            const SizedBox(height: 20),
            CustumTextField(
              controller: nama,
              label: "Nama",
              hint: "Masukkan Nama",
            ),
            const SizedBox(height: 20),
            CustumTextField(
              controller: email,
              label: "Email",
              hint: "Masukkan Email",
            ),
            const SizedBox(height: 20),
            CustumTextField(
              controller: umur,
              label: "Umur",
              hint: "Masukkan Umur",
            ),
            const SizedBox(height: 20),
            const Text("Jenis Kelamin"),
            const SizedBox(height: 5),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 430),
              title: const Text("Pria"),
              leading: Radio<String>(
                  value: "Pria",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 430),
              title: const Text("Wanita"),
              leading: Radio<String>(
                  value: "Wanita",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),
            const SizedBox(height: 20),
            const Text("Hobi"),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 430),
              title: const Text("Belajar"),
              leading: Checkbox(
                  value: hobi1,
                  onChanged: (value) {
                    setState(() {
                      hobi1 = value;
                    });
                  }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 430),
              title: const Text("Bermain"),
              leading: Checkbox(
                  value: hobi2,
                  onChanged: (value) {
                    setState(() {
                      hobi2 = value;
                    });
                  }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 430),
              title: const Text("Tidur"),
              leading: Checkbox(
                  value: hobi3,
                  onChanged: (value) {
                    setState(() {
                      hobi3 = value;
                    });
                  }),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // username.clear();
                    // password.clear();
                    // print(
                    //     "username: ${username.text}\npassword: ${password.text}");
                  });
                },
                style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
