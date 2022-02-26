import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
            Icons.menu,
        ),
        title: Text(
          'First App'
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notification_important),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          ),
        ],
      ),
      body: Column(
        children:
        [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),

              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children:
                [
                  Image(
                    image: NetworkImage(
                      'https://th.bing.com/th/id/R.0bfb3e7889bb08212fa3ac69d148d9e8?rik=wcu3gcI2nJmCEA&pid=ImgRaw&r=0'),
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 200.0,
                    color: Colors.black.withOpacity(0.7),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Text(
                      'Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}