import 'package:estate_plus/frontend/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<LoginProvider>(
          child: Text('Login'),
          builder: (context, value, child) {
            return Column(
              children: [
                child!,
                TextFormField(
                  onChanged: (String text) => value.setEmail = text,
                ),
                TextFormField(
                  onChanged: (String password) => value.setPassword = password,
                ),
                if (value.loading) ...[CircularProgressIndicator()],
                if (!value.loading) ...[
                  ElevatedButton(
                      onPressed: () => value.login(context),
                      child: Text('Login'))
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
