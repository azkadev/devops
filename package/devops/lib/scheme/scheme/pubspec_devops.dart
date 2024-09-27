// ignore_for_file: non_constant_identifier_names, unused_import
import "package:general_lib/general_lib.dart";
// import "dart:convert";

import "pubspec_devops_platforms.dart";
import "pubspec_devops_environment.dart";
import "pubspec_devops_dependencies.dart";
import "pubspec_devops_dev_dependencies.dart";
import "devops_pubspec_config.dart";

 
class PubspecDevops extends JsonScheme {

  
  PubspecDevops(super.rawData);
   
  static Map get defaultData {
    return {"@type":"pubspecDevops","name":"example","description":"A sample command-line application.","version":"0.0.0","publish_to":"none","homepage":"https://youtube.com/{youtube_owner_username}","repository":"https://github.com/{main_username_owner}/packagex.git","issue_tracker":"https://github.com/{main_username_owner}/devops/issues","documentation":"https://github.com/{main_username_owner}/devops/tree/main/docs","funding":["https://github.com/sponsors/{main_username_owner}"],"platforms":{"@type":"pubspecDevopsPlatforms","android":null,"ios":null,"linux":null,"macos":null,"web":null,"windows":null},"environment":{"@type":"pubspecDevopsEnvironment","sdk":">=2.18.5 <3.0.0"},"dependencies":{"@type":"pubspecDevopsDependencies","flutter":{"@type":"pubspecDevopsDependenciesExtra","sdk":"flutter"},"cupertino_icons":"^1.0.2"},"dev_dependencies":{"@type":"pubspecDevopsDevDependencies","lints":"^2.0.0","test":"^1.16.0","packagex":{"@type":"pubspecDevopsDevDependenciesExtra","path":"../"},"msix":"^1.0.6"},"devops":{"@type":"packageFullTemplatePubspecConfig"}};
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


  
  String? get name {
    try {
      if (rawData["name"] is String == false){
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set name(String? value) {
    rawData["name"] = value;
  }


  
  String? get description {
    try {
      if (rawData["description"] is String == false){
        return null;
      }
      return rawData["description"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set description(String? value) {
    rawData["description"] = value;
  }


  
  String? get version {
    try {
      if (rawData["version"] is String == false){
        return null;
      }
      return rawData["version"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set version(String? value) {
    rawData["version"] = value;
  }


  
  String? get publish_to {
    try {
      if (rawData["publish_to"] is String == false){
        return null;
      }
      return rawData["publish_to"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set publish_to(String? value) {
    rawData["publish_to"] = value;
  }


  
  String? get homepage {
    try {
      if (rawData["homepage"] is String == false){
        return null;
      }
      return rawData["homepage"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set homepage(String? value) {
    rawData["homepage"] = value;
  }


  
  String? get repository {
    try {
      if (rawData["repository"] is String == false){
        return null;
      }
      return rawData["repository"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set repository(String? value) {
    rawData["repository"] = value;
  }


  
  String? get issue_tracker {
    try {
      if (rawData["issue_tracker"] is String == false){
        return null;
      }
      return rawData["issue_tracker"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set issue_tracker(String? value) {
    rawData["issue_tracker"] = value;
  }


  
  String? get documentation {
    try {
      if (rawData["documentation"] is String == false){
        return null;
      }
      return rawData["documentation"] as String;
    } catch (e) {
      return null;
    }
  }

  
  set documentation(String? value) {
    rawData["documentation"] = value;
  }


  
  List<String> get funding {
    try {
      if (rawData["funding"] is List == false){
        return [];
      }
      return (rawData["funding"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }


  
  set funding(List<String> value) {
    rawData["funding"] = value;
  }


  
  PubspecDevopsPlatforms get platforms {
    try {
      if (rawData["platforms"] is Map == false){
        return PubspecDevopsPlatforms({}); 
      }
      return PubspecDevopsPlatforms(rawData["platforms"] as Map);
    } catch (e) {  
      return PubspecDevopsPlatforms({}); 
    }
  }


  
  set platforms(PubspecDevopsPlatforms value) {
    rawData["platforms"] = value.toJson();
  }



  
  PubspecDevopsEnvironment get environment {
    try {
      if (rawData["environment"] is Map == false){
        return PubspecDevopsEnvironment({}); 
      }
      return PubspecDevopsEnvironment(rawData["environment"] as Map);
    } catch (e) {  
      return PubspecDevopsEnvironment({}); 
    }
  }


  
  set environment(PubspecDevopsEnvironment value) {
    rawData["environment"] = value.toJson();
  }



  
  PubspecDevopsDependencies get dependencies {
    try {
      if (rawData["dependencies"] is Map == false){
        return PubspecDevopsDependencies({}); 
      }
      return PubspecDevopsDependencies(rawData["dependencies"] as Map);
    } catch (e) {  
      return PubspecDevopsDependencies({}); 
    }
  }


  
  set dependencies(PubspecDevopsDependencies value) {
    rawData["dependencies"] = value.toJson();
  }



  
  PubspecDevopsDevDependencies get dev_dependencies {
    try {
      if (rawData["dev_dependencies"] is Map == false){
        return PubspecDevopsDevDependencies({}); 
      }
      return PubspecDevopsDevDependencies(rawData["dev_dependencies"] as Map);
    } catch (e) {  
      return PubspecDevopsDevDependencies({}); 
    }
  }


  
  set dev_dependencies(PubspecDevopsDevDependencies value) {
    rawData["dev_dependencies"] = value.toJson();
  }



  
  DevopsPubspecConfig get devops {
    try {
      if (rawData["devops"] is Map == false){
        return DevopsPubspecConfig({}); 
      }
      return DevopsPubspecConfig(rawData["devops"] as Map);
    } catch (e) {  
      return DevopsPubspecConfig({}); 
    }
  }


  
  set devops(DevopsPubspecConfig value) {
    rawData["devops"] = value.toJson();
  }



  
  static PubspecDevops create({

    String special_type = "pubspecDevops",
    String? name,
    String? description,
    String? version,
    String? publish_to,
    String? homepage,
    String? repository,
    String? issue_tracker,
    String? documentation,
      List<String>? funding,
      PubspecDevopsPlatforms? platforms,
      PubspecDevopsEnvironment? environment,
      PubspecDevopsDependencies? dependencies,
      PubspecDevopsDevDependencies? dev_dependencies,
      DevopsPubspecConfig? devops,
})  {
    // PubspecDevops pubspecDevops = PubspecDevops({
Map pubspecDevops_data_create_json = {
  
      "@type": special_type,
      "name": name,
      "description": description,
      "version": version,
      "publish_to": publish_to,
      "homepage": homepage,
      "repository": repository,
      "issue_tracker": issue_tracker,
      "documentation": documentation,
      "funding": funding,
      "platforms": (platforms != null)?platforms.toJson(): null,
      "environment": (environment != null)?environment.toJson(): null,
      "dependencies": (dependencies != null)?dependencies.toJson(): null,
      "dev_dependencies": (dev_dependencies != null)?dev_dependencies.toJson(): null,
      "devops": (devops != null)?devops.toJson(): null,


};


          pubspecDevops_data_create_json.removeWhere((key, value) => value == null);
PubspecDevops pubspecDevops_data_create = PubspecDevops(pubspecDevops_data_create_json);

return pubspecDevops_data_create;



      }
}