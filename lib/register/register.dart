import 'package:flutter/material.dart';

import 'components/build_body.dart';
import 'components/build_header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _accept = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildHeader(),
            SizedBox(height: size.height / 4),
            buildBody(),
            SizedBox(height: size.height / 4),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Flexible(
                    child: Text(
                      'I have read and agree with privacy policy and agree my personal data will be shared to you',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Checkbox(
                    value: _accept,
                    onChanged: (bool? value) {
                      setState(() {
                        _accept = !_accept;
                      });
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, fixedSize: Size(380, 50)),
                onPressed: _register,
                child: Text(
                  "Confirm",
                  style: TextStyle(
                      letterSpacing: 2, fontSize: 20, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }

  void _register() {}
}
