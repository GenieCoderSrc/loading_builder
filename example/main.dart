import 'package:flutter/material.dart';
import 'package:loading_builder/loading_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading Builder Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoadingExampleScreen(),
    );
  }
}

class LoadingExampleScreen extends StatefulWidget {
  const LoadingExampleScreen({super.key});

  @override
  State<LoadingExampleScreen> createState() => _LoadingExampleScreenState();
}

class _LoadingExampleScreenState extends State<LoadingExampleScreen> {
  bool _isButtonLoading = false;

  void _simulateButtonLoading() async {
    setState(() {
      _isButtonLoading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _isButtonLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading Builder Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: _isButtonLoading ? null : _simulateButtonLoading,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Submit'),
                  btnLoading(loading: _isButtonLoading),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Text('Centered Loading:', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const BuildLoading(),
            const SizedBox(height: 40),
            const Text('Shimmer Loading Placeholder:', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const ShimmerLoading(
              height: 100,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}