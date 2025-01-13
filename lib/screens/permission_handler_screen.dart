import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandlerScreen extends StatelessWidget {
   Future<void> _requestCameraPermission() async {
     var status = await Permission.locationAlways.request();
    if (status.isGranted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(' permission granted')),
      );
    } else if (status.isDenied) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(' permission denied')),
      );
    } else if (status.isPermanentlyDenied) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(' permission permanently denied')),
      );
      openAppSettings();
    } else {

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(' permission indeterminate')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Permission Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: _requestCameraPermission,
            child: const Text('Request Permission'),
          ),
        ),
      ),
    );
  }
}