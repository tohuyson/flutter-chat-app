import 'package:laravel_echo/laravel_echo.dart';
import 'package:pusher_client/pusher_client.dart';

class LaravelEcho {
  static LaravelEcho? _singleton;
  static late Echo _echo;
  final String token;

  LaravelEcho._({
    required this.token,
  }) {
    _echo = createLaravelEcho(token);
  }

  factory LaravelEcho.init({
    required String token,
  }) {
    if (_singleton == null || token != _singleton?.token) {
      _singleton = LaravelEcho._(token: token);
    }
    return _singleton!;
  }

  static Echo get instance => _echo;

  static String get socketId => _echo.socketId() ?? "11111.11111111" ;
}

class PusherConfig {
  // static const String appId = "1656533";
  static const String key = "85f3ff2ea3102564aa47";
  // static const String secret = "c0e832d026112c289637";
  static const String cluster = "us3";
  static const String hostEndPoint = "https://wallaby-measured-scarcely.ngrok-free.app";
  static const String hostAuthEndpoint = "$hostEndPoint/api/broadcasting/auth";
  static const int port = 6001;
}

PusherClient createPusherClient(String token) {
  PusherOptions options = PusherOptions(
    wsPort: PusherConfig.port,
    encrypted: true,
    host: PusherConfig.hostEndPoint,
    cluster: PusherConfig.cluster,
    auth: PusherAuth(PusherConfig.hostAuthEndpoint, headers: {
      "Authorization": "Bearer $token",
      "Content_type": "application/json",
      "Accept": "application/json",
    }),
  );

  PusherClient pusherClient = PusherClient(
    PusherConfig.key,
    options,
    autoConnect: false,
    enableLogging: true,
  );

  return pusherClient;
}

Echo createLaravelEcho(String token) {
  return Echo(
    client: createPusherClient(token),
    broadcaster: EchoBroadcasterType.Pusher,
  );
}
