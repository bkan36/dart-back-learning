import 'package:heroes_dart_back_end/heroes_dart_back_end.dart';

Future main() async {
  final app = Application<HeroesDartBackEndChannel>()
    ..options.configurationFilePath = "config.yaml"
    ..options.port = 8888;

  await app.startOnCurrentIsolate();

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");
}
