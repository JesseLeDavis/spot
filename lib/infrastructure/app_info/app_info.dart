import 'package:flutter_project_template_firebase/infrastructure/device_info/device_info.dart';
import 'package:package_info_plus/package_info_plus.dart';

abstract class AppInfo {
  static late PackageInfo _info;

  static Future<void> initialize() async {
    _info = await PackageInfo.fromPlatform();
  }

  static String get packageName => _info.packageName;
  static String get version =>
      DeviceInfo.isIos ? _info.buildNumber : _info.version;
  static String get buildNumber =>
      DeviceInfo.isIos ? _info.version : _info.buildNumber;
  static String get buildAndVersion =>
      '${_info.version} (${_info.buildNumber})';
}
