class AppConfig {
  //# CONFIG
  static String yourName = "M. Zulkarnaen";
  static String phoneNumber = "081270326205";
  //# ---------------------------------------
  //# ---------------------------------------

  static String get baseUrl {
    var storage = yourName.replaceAll(" ", "-").toLowerCase();
    storage = "$storage-$phoneNumber";
    return "http://capekngoding.com:8080/$storage/api";
    //"http://capekngoding.com:8080/M.Zulkarnaen/api";
  }
}
