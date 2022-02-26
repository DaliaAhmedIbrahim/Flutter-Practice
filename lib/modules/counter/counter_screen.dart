import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
 int Counter = 1;

 @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: ()
              {
                setState(()
                {
                  Counter--;
                  print(Counter);
                });
              },
              child: Text(
                'Minus'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                '$Counter',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: ()
              {
                setState(()
                {
                  Counter++;
                  print(Counter);
                });
              },
              child: Text(
                  'Plus'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
