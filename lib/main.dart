import 'package:real_words/src/infra/start_application.dart';
import 'package:real_words/src/router/real_router.dart';

void main() async {
  await startApplication(builder: (container) => RealRouter());
}
