import 'package:flutter/material.dart';
import 'package:form_project/components/form_field.dart';

import '../components/button.dart';
import '../models/validator.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _businessController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // validator
  final validator = Validator();

  // form state
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _businessController.dispose();
    _numberController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                // main title
                Text(
                  "Let's Register Account",
                  style: TextStyle(
                    fontSize: 39,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // sizedbox
                SizedBox(height: 10),

                // subtitle
                Text(
                  'Hello user, you have a greatful journey',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),

          // name form field
          Form(
            key: _formKey,
            child: Column(
              children: [
                MyFormField(
                  controller: _nameController,
                  validator: validator.nameValidator,
                  name: 'Name',
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                // Business form field
                MyFormField(
                  controller: _businessController,
                  validator: validator.nameValidator,
                  name: 'Business Name',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // Phone number form field
                MyFormField(
                  controller: _numberController,
                  validator: validator.numberValidator,
                  name: 'Phone Number',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // email form field
                MyFormField(
                  controller: _emailController,
                  validator: validator.emailValidator,
                  name: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password form field
                MyFormField(
                  controller: _passwordController,
                  validator: validator.passwordValidator,
                  name: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 40),

                // Button
                MyButton(
                  text: 'Sign Up',
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Sign Up Successful!"),
                      ));
                    }
                  },
                )
              ],
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Sign In Successful')),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.cyan,
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
