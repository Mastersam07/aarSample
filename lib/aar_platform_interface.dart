import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'aar_method_channel.dart';

abstract class AarPlatform extends PlatformInterface {
  /// Constructs a AarPlatform.
  AarPlatform() : super(token: _token);

  static final Object _token = Object();

  static AarPlatform _instance = MethodChannelAar();

  /// The default instance of [AarPlatform] to use.
  ///
  /// Defaults to [MethodChannelAar].
  static AarPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AarPlatform] when
  /// they register themselves.
  static set instance(AarPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
