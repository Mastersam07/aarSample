import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'aar_platform_interface.dart';

/// An implementation of [AarPlatform] that uses method channels.
class MethodChannelAar extends AarPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('aar');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
