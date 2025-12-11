import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تسجيل الدخول باستخدام File',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<File> get _usersFile async {
    final directory = await getApplicationDocumentsDirectory();
    return File('${directory.path}/users.txt');
  }

  Future<void> _createAccount() async {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      _showMessage('الرجاء إدخال اسم المستخدم وكلمة المرور');
      return;
    }

    final file = await _usersFile;
    final users = await _readUsers(file);

    if (users.containsKey(username)) {
      _showMessage('اسم المستخدم موجود بالفعل');
      return;
    }

    users[username] = password;
    await _writeUsers(file, users);
    _showMessage('تم إنشاء الحساب بنجاح');
    _clearFields();
  }

  Future<void> _login() async {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      _showMessage('الرجاء إدخال اسم المستخدم وكلمة المرور');
      return;
    }

    final file = await _usersFile;
    final users = await _readUsers(file);

    if (users[username] == password) {
      _showMessage('تم تسجيل الدخول بنجاح');
    } else {
      _showMessage('اسم المستخدم أو كلمة المرور غير صحيحة');
    }
  }

  Future<Map<String, String>> _readUsers(File file) async {
    Map<String, String> users = {};

    if (await file.exists()) {
      final lines = await file.readAsLines();
      for (var line in lines) {
        final parts = line.split(':');
        if (parts.length == 2) {
          users[parts[0]] = parts[1];
        }
      }
    }

    return users;
  }

  Future<void> _writeUsers(File file, Map<String, String> users) async {
    final lines = users.entries.map((e) => '${e.key}:${e.value}').toList();
    await file.writeAsString(lines.join('\n'));
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void _clearFields() {
    _usernameController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تسجيل الدخول باستخدام File'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'اسم المستخدم',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'كلمة المرور',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: _createAccount,
                    icon: const Icon(Icons.person_add),
                    label: const Text('إنشاء حساب'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      backgroundColor: Colors.green,
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: _login,
                    icon: const Icon(Icons.login),
                    label: const Text('تسجيل الدخول'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      backgroundColor: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}