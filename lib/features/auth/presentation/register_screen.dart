import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_6th_may/core/model/user.dart';
import 'package:flutter_app_6th_may/features/auth/presentation/login_screen.dart';
import 'package:flutter_app_6th_may/features/auth/providers/auth_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _confirmPasswordController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _idNumberController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Management App'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.manage_accounts,
                  size: 100.0,
                  color: Colors.deepPurple,
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter email';
                    }
                    // email verification regex
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email';
                    }

                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter full name';
                    }

                    if (value.length < 3) {
                      return 'Full name must be at least 3 characters';
                    }
                    return null;
                  },
                  controller: _fullNameController,
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                  ),
                ),
                Consumer<AuthProvider>(
                  builder: (context, provider, child) => TextFormField( 
                    readOnly: true,  
                  
                  initialValue: provider.dateOfBirth == null ? '' : DateFormat.yMEd().format(provider.dateOfBirth!),
                    
                    validator: (value) {
                    

                      return provider.dateOfBirth == null ? 'Please select date of birth' : null;
                   
                    },
                    onTap: () async {
                      final dob = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      ); 

                      if (dob != null) {
                        provider.setDateOfBirth(dob);
                      }
                    },
                    decoration:  InputDecoration(
                      labelText: 'Date of Birth', 
                      hintText:  provider.dateOfBirth ==null ?  'Select Date of Birth' : DateFormat.yMEd().format(provider.dateOfBirth!),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _idNumberController,
                  validator: (value) { 
                    if (value!.isEmpty) {
                      return 'Please enter ID Number';
                    }

                    if (value.length <13) {
                      return 'ID Number must be at least 13 characters';
                    }
                    return null;
                  
                  },
                  decoration: const InputDecoration(
                    labelText: 'ID Number',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _contactNumberController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter contact number';
                    }

                    if (value.length < 10) {
                      return 'Contact number must be at least 10 characters';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Contact Number',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField( 
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter password';
                    }

                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),

                TextFormField( 
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter password';
                    }

                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    } 
                    if (value != _passwordController.text) {
                      return 'Password does not match';
                    }
                    return null; 
                  },
                  controller: _confirmPasswordController,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 48.0),
                InkWell( 
                  onTap: () { 
                    if (_formKey.currentState!.validate()) {
                      final user = UserModel(
                        id: '',
                        email: _emailController.text,
                        fullName: _fullNameController.text,
                        dateOfBirth: DateFormat.yMEd().format(Provider.of<AuthProvider>(context, listen: false).dateOfBirth!),
                        idNumber: _idNumberController.text,
                        contactNumber: _contactNumberController.text,
                        password: _passwordController.text,
                      );
                     
                    }
                  
                  },
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24.0),
                RichText(
                  text: TextSpan(
                    text: 'Already a user? ',
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pop(context);
                          },
                        text: 'Login',
                        style: const TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
