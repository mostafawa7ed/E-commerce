import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"1": "اختار المنتاج", "2": "اهلا", "3": "هل نسيت كلمة السر ؟"},
        "en": {
          "1": "Choose Product",
          "2": "Welcome Back",
          "3": "Forget Your Password ?"
        }
      };
}
