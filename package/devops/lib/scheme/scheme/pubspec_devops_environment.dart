// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";


 
class PubspecDevopsEnvironment extends JsonScheme {

  
  PubspecDevopsEnvironment(super.rawData);
   
  static Map get defaultData {
    return {"@type":"pubspecDevopsEnvironment","sdk":">=2.18.5 <3.0.0"};
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


  
  String? get sdk {
    try {
      if (rawData["sdk"] is String == false){
        return null;
      }
      return rawData["sdk"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set sdk(String? value) {
    rawData["sdk"] = value;
  }


  
  static PubspecDevopsEnvironment create({

    String special_type = "pubspecDevopsEnvironment",
    String? sdk,
})  {
    // PubspecDevopsEnvironment pubspecDevopsEnvironment = PubspecDevopsEnvironment({
Map pubspecDevopsEnvironment_data_create_json = {
  
      "@type": special_type,
      "sdk": sdk,


};


          pubspecDevopsEnvironment_data_create_json.removeWhere((key, value) => value == null);
PubspecDevopsEnvironment pubspecDevopsEnvironment_data_create = PubspecDevopsEnvironment(pubspecDevopsEnvironment_data_create_json);

return pubspecDevopsEnvironment_data_create;



      }
}