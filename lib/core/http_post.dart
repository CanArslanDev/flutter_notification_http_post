import 'dart:convert';

import 'package:http/http.dart' as http;

class HTTPService {
  Future<void> sendFcmMessage(String title, String message, var token) async {
    /*
    To get tokens, you need to install the firebase_messaging package and get tokens from there.
    Example: await FirebaseMessaging.instance.getToken(),
    Note: this token must be the code of the person to be notified.
    You need to activate the Cloud Messaging API (Legacy and get it from the section that says Server key) from the firebase settings to the part that says FCM Key.
    My advice to you is to create a class called NotificationService, create a function called initialize in that class and call this function in main.dart.
    If you are going to use Cloud Messaging, you can initialize the awesome_notifications library inside this function.
    Then I suggest you to initialize the firebase_messaging library for foreground messages.
    When initializing for firebase_messaging, you can use the listen command to show a notification for incoming foreground messages (see: Flutter Snackbar but my recommendation is GetX Snackbar).
    Then you need to prepare an event for foreground and background notifications, if you are going to use snackbar for foreground messages, you can put it in the onTap method.
    */
    try {
      if (token != "") {
        var header = {
          "Content-Type": "application/json",
          "Authorization": "key=<FCM KEY>",
        };
        var request = {
          "notification": {
            "title": title,
            "body": message,
            "sound": "default",
            "color": "#2a94e5",
          },
          "priority": "high",
          "to": token,
        };

        var client = http.Client();
        // ignore: unused_local_variable
        var response = await client.post(
            Uri.parse('https://fcm.googleapis.com/fcm/send'),
            headers: header,
            body: json.encode(request));
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
  }
}
