// ignore_for_file: unnecessary_brace_in_string_interps, empty_catches, non_constant_identifier_names, unused_local_variable

import 'dart:convert';
import "package:general_lib/general_lib.dart";
import 'package:universal_io/io.dart';
import 'package:yaml/yaml.dart';
import "package:path/path.dart" as path;

int main(List<String> args) {


final List<String> tagsdsa = [];
  File file = File(path.join(Directory.current.uri.toFilePath(), "anu", "v1.45.yaml"));
  final data = (loadYaml(file.readAsStringSync()) as Map).clone();
  for (final element in data.entries) {
    final key = element.key;
    if (key == "paths") {
      if (element.value is Map == false) {
        continue;
      }
      final value = element.value as Map;
      for (final sub_element in value.entries) {
        if (sub_element.value is Map == false) {
          continue;
        }
        final String path_url = sub_element.key;
        final Map sub_sub_value = sub_element.value;
        for (final sub_sub_element in sub_sub_value.entries) {
          if (sub_sub_element.value is Map == false) {
            continue;
          }
          // "post" "get" "head" "delete"
          final String method_url = sub_sub_element.key;
          //
          final subsusbausbaubs = sub_sub_element.value as Map;
          final List<String> tags = (subsusbausbaubs["tags"] as List).cast<String>();
          if (tags.length > 1 || tags.isEmpty) {
            print("Execption: ${tags}");
            exit(1);
          }

          /// list tags
          /// Container Image System Exec Volume Network Plugin Node Swarm Service Task Secret Config Distribution Session
          final String tag = tags.first;

          /// debug only
          // {
          //   if (tagsdsa.contains(tag)) {
          //     continue;
          //   } else {
          //     tagsdsa.add(tag);
          //   }
          //   print(tagsdsa.join(" "));
          // }
          //
          /// container

          final String summary = () {
            final res = subsusbausbaubs["summary"] as String;
            try {
              return json.decode(res);
            } catch (e) {}
            return res;
          }();
          final String to_summary_dart = () {
            return summary.replaceAll(RegExp("([.,](.*))"), "").split(" ").map((e) => e.toLowerCase().toUpperCaseFirstData()).join("").camelCaseClass().toLowerCaseFirstData();
          }();

          final String to_method_dart = "${tag.toLowerCaseFirstData()}_${to_summary_dart}";
          final String to_file_dart = to_method_dart.snakeCaseClass();
          to_file_dart.printPretty();
          // to_method_dart.printPretty();
        }
      }
    }
  }
  return 0;
}
