library identitytoolkit_v3_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_identitytoolkit_v3_api/src/browser_client.dart';
import "package:google_identitytoolkit_v3_api/identitytoolkit_v3_api_client.dart";

/** Help the third party sites to implement federated login. */
@deprecated
class Identitytoolkit extends Client with BrowserClient {

  final oauth.OAuth2 auth;

  Identitytoolkit([oauth.OAuth2 this.auth]);
}
