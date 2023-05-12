import 'package:flutter/material.dart';

class SnackBarView extends StatelessWidget {
  const SnackBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar With Flutter'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: SizedBox(
                    width: 100,
                    height: 44,
                    child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text('تمت الإضافة بنجاح!'),
                              duration: const Duration(seconds: 2),
                              action: SnackBarAction(
                                label: 'تراجع',
                                onPressed: () {
                                  // إجراء عند الضغط على الزر في SnackBar
                                },
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          'on Click',
                          style: TextStyle(fontSize: 12),
                        )))),
            
          ],
        ),
      ),
    );
  }
}
