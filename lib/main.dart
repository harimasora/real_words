import 'package:real_social/src/infra/start_application.dart';
import 'package:real_social/src/router/real_router.dart';

void main() async {
  await startApplication(builder: (container) => RealRouter());
}
