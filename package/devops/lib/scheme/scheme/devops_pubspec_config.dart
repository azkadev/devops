// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class DevopsPubspecConfig extends JsonScheme {

  
  DevopsPubspecConfig(super.rawData);
   
  static Map get defaultData {
    return {"@type":"packageFullTemplatePubspecConfig"};
  }

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set special_type(String? value) {
    rawData["@type"] = value;
  }


  
  static DevopsPubspecConfig create({

    String special_type = "packageFullTemplatePubspecConfig",
})  {
    // DevopsPubspecConfig packageFullTemplatePubspecConfig = DevopsPubspecConfig({
Map packageFullTemplatePubspecConfig_data_create_json = {
  
      "@type": special_type,


};


          packageFullTemplatePubspecConfig_data_create_json.removeWhere((key, value) => value == null);
DevopsPubspecConfig packageFullTemplatePubspecConfig_data_create = DevopsPubspecConfig(packageFullTemplatePubspecConfig_data_create_json);

return packageFullTemplatePubspecConfig_data_create;



      }
}