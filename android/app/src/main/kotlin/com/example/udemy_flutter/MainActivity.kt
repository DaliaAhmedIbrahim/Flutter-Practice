package com.example.udemy_flutter

import android.os.Bundle
import io.flutter.app.FlutterActivity
import com.tekartik.sqflite.SqflitePlugin

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        SqflitePlugin.registerWith(registrarFor("com.tekartik.sqflite.SqflitePlugin"))

    }
}
