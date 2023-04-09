# flutter_notification_http_post

Firebase notifications & awesome_notifications usage places & Cloud Messaging and more with http.post...

## Where and how can I use Firebase Messaging & Http.post & awesome_notifications?

I opened this project to explain and give information about the notifications system I use in my own applications, if you pay attention to what I write and make the notification system, you will get a much more efficient and optimized notification system.

 - To get tokens, you need to install the firebase_messaging package and get tokens from there.
 - Example: await FirebaseMessaging.instance.getToken(),
 - Note: this token must be the code of the person to be notified.
 - You need to activate the Cloud Messaging API (Legacy and get it from the section that says Server key) from the firebase settings to the part that says FCM Key.
 - My advice to you is to create a class called NotificationService, create a function called initialize in that class and call this function in main.dart.
 - If you are going to use Cloud Messaging, you can initialize the awesome_notifications library inside this function.
 - Then I suggest you to initialize the firebase_messaging library for foreground messages.
 - When initializing for firebase_messaging, you can use the listen command to show a notification for incoming foreground messages (see: Flutter Snackbar but my recommendation isGetX  - Snackbar).
 - Then you need to prepare an event for foreground and background notifications, if you are going to use snackbar for foreground messages, you can put it in the onTap method.
 - In addition, if the user you are sending a message to is already in the application.
 - I recommend using the firebase database to ensure that it does not send messages. With the LifeCycle cycle, you can check the user's online or offline status and sendnotifications  - accordingly.
 - However, if you use LifeCycle, you may encounter some problems, for example, sometimes the user may appear online even when not in the application.
 - This is a common situation in my applications and I recommend using Firebase Functions in this situation. You can enable the user to throw firebase data at certain intervals andto  - integrate the status of being online or offline according to the incoming data with javascript codes.
   
