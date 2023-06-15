import 'package:flutter_test/flutter_test.dart';
import 'package:aar/aar.dart';
import 'package:aar/aar_platform_interface.dart';
import 'package:aar/aar_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAarPlatform
    with MockPlatformInterfaceMixin
    implements AarPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AarPlatform initialPlatform = AarPlatform.instance;

  test('$MethodChannelAar is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAar>());
  });

  test('getPlatformVersion', () async {
    Aar aarPlugin = Aar();
    MockAarPlatform fakePlatform = MockAarPlatform();
    AarPlatform.instance = fakePlatform;

    expect(await aarPlugin.getPlatformVersion(), '42');
  });
}
