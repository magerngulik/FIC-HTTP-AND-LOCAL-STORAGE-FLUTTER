import 'package:flutter/material.dart';
import 'package:example/core.dart';

class LsUserSettingView extends StatefulWidget {
  const LsUserSettingView({Key? key}) : super(key: key);

  Widget build(context, LsUserSettingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("LsUserSetting"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*
              TODO: --
              Ini sangat mudah, cukup ambil nilai storage-nya dan atur sebagai
              value dari SwitchListTile.
              Berikut adalah contoh-nya:
              */
              SwitchListTile(
                value: mainStorage.get("dev_mode") ?? false,
                title: Text(
                    (mainStorage.get("dev_mode")) ? "Dev mode" : "Normal Mode"),
                onChanged: (value) {
                  var current = mainStorage.get("dev_mode") ?? false;
                  print("current : $current");
                  print("main storage : ${mainStorage.get("dev_mode")}");
                  mainStorage.put("dev_mode", !current);
                  controller.setState(() {});
                },
              ),
              // SwitchListTile(
              //   value: mainStorage.get("admin_mode") ?? false,
              //   title: Text((mainStorage.get("admin_mode"))
              //       ? "admin mode"
              //       : "user Mode"),
              //   onChanged: (value) {
              //     var current = mainStorage.get("admin_mode") ?? false;
              //     print("current : $current");
              //     print("main storage : ${mainStorage.get("admin_mode")}");
              //     mainStorage.put("admin_mode", !current);
              //     controller.setState(() {});
              //   },
              // ),
              SwitchListTile(
                value: mainStorage.get("admin_mode") ?? false,
                title: const Text("Login as Admin"),
                onChanged: (value) {
                  var current = mainStorage.get("admin_mode") ?? false;
                  print("current : $current");
                  print("main storage : ${mainStorage.get("admin_mode")}");
                  mainStorage.put("admin_mode", !current);
                  controller.update();
                },
              ),
              SwitchListTile(
                value: mainStorage.get("experimental_mode") ?? false,
                title: const Text("Experimental mode"),
                onChanged: (value) {
                  var current = mainStorage.get("experimental_mode") ?? false;
                  print("current : $current");
                  print(
                      "main storage : ${mainStorage.get("experimental_mode")}");
                  mainStorage.put("experimental_mode", !current);
                  controller.update();
                },
              ),
              SwitchListTile(
                value: mainStorage.get("offline_mode") ?? false,
                title: const Text("Offline mode"),
                onChanged: (value) {
                  var current = mainStorage.get("offline_mode") ?? false;
                  print("current : $current");
                  print("main storage : ${mainStorage.get("offline_mode")}");
                  mainStorage.put("offline_mode", !current);
                  controller.update();
                },
              ),
              SwitchListTile(
                value: mainStorage.get("cache_mode") ?? false,
                title: const Text("Cache mode"),
                onChanged: (value) {
                  var current = mainStorage.get("cache_mode") ?? false;
                  print("current : $current");
                  print("main storage : ${mainStorage.get("cache_mode")}");
                  mainStorage.put("cache_mode", !current);
                  controller.update();
                },
              ),

              /*
              1. Ok, dengan contoh di atas, buatlah beberapa pengaturan
              dengan SwitchListTile!
              ! Pastikan key yang digunakan berbeda!
              ! sesuaikan label-nya

              - Dark mode
              - Login as Admin
              - Experimental mode
              - Offline mode
              - Cache mode

              2. Coba ubah ke5 switchlist tile yang baru dibuat menjadi:
              - Dark mode => true
              - Login as Admin => false
              - Experimental mode => true
              - Offline mode => false
              - Cache mode => true

              Jika perubahan yang kamu lakukan tidak mempengarungi
              Switch yang lainnya, maka task ini selesai!
              */
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LsUserSettingView> createState() => LsUserSettingController();
}
