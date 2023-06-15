
import 'aar_platform_interface.dart';

class Aar {
  Future<String?> getPlatformVersion() {
    return AarPlatform.instance.getPlatformVersion();
  }
}
