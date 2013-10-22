library identitytoolkit_v3_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_identitytoolkit_v3_api/src/console_client.dart';

import "package:google_identitytoolkit_v3_api/identitytoolkit_v3_api_client.dart";

/** Help the third party sites to implement federated login. */
class Identitytoolkit extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Identitytoolkit([oauth2.OAuth2Console this.auth]);
}
