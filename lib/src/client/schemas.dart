part of identitytoolkit_v3_api;

/** Response of creating the IDP authentication URL. */
class CreateAuthUriResponse {

  /** The URI used by the IDP to authenticate the user. */
  core.String authUri;

  /** The fixed string identitytoolkit#CreateAuthUriResponse". */
  core.String kind;

  /** The provider ID of the auth URI. */
  core.String providerId;

  /** Existing IDP's for the user. */
  core.List<core.String> providers;

  /** Whether the user is registered if the identifier is an email. */
  core.bool registered;

  /** Create new CreateAuthUriResponse from JSON data */
  CreateAuthUriResponse.fromJson(core.Map json) {
    if (json.containsKey("authUri")) {
      authUri = json["authUri"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("providerId")) {
      providerId = json["providerId"];
    }
    if (json.containsKey("providers")) {
      providers = json["providers"].toList();
    }
    if (json.containsKey("registered")) {
      registered = json["registered"];
    }
  }

  /** Create JSON Object for CreateAuthUriResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (authUri != null) {
      output["authUri"] = authUri;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (providerId != null) {
      output["providerId"] = providerId;
    }
    if (providers != null) {
      output["providers"] = providers.toList();
    }
    if (registered != null) {
      output["registered"] = registered;
    }

    return output;
  }

  /** Return String representation of CreateAuthUriResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Respone of deleting account. */
class DeleteAccountResponse {

  /** The fixed string "identitytoolkit#DeleteAccountResponse". */
  core.String kind;

  /** Create new DeleteAccountResponse from JSON data */
  DeleteAccountResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for DeleteAccountResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of DeleteAccountResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Respone of downloading accounts in batch. */
class DownloadAccountResponse {

  /** The user accounts data. */
  core.List<core.Object> accounts;

  /** The fixed string "identitytoolkit#DownloadAccountResponse". */
  core.String kind;

  /** The next page token. To be used in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** Create new DownloadAccountResponse from JSON data */
  DownloadAccountResponse.fromJson(core.Map json) {
    if (json.containsKey("accounts")) {
      accounts = json["accounts"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for DownloadAccountResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (accounts != null) {
      output["accounts"] = accounts.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of DownloadAccountResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Response of getting account information. */
class GetAccountInfoResponse {

  /** The fixed string "identitytoolkit#GetAccountInfoResponse". */
  core.String kind;

  /** The info of the users. */
  core.List<GetAccountInfoResponseUsers> users;

  /** Create new GetAccountInfoResponse from JSON data */
  GetAccountInfoResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("users")) {
      users = json["users"].map((usersItem) => new GetAccountInfoResponseUsers.fromJson(usersItem)).toList();
    }
  }

  /** Create JSON Object for GetAccountInfoResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (users != null) {
      output["users"] = users.map((usersItem) => usersItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of GetAccountInfoResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class GetAccountInfoResponseUsers {

  /** The user's date of birth. */
  core.String dateOfBirth;

  /** The name of the user. */
  core.String displayName;

  /** The email returned by the IdP. NOTE: The federated login user may not own the email. */
  core.String email;

  /** The language of the user. */
  core.String language;

  /** The local ID of the user. */
  core.String localId;

  /** The user's hashed password. */
  core.String password;

  /** The timestamp when the password was last updated. */
  core.num passwordUpdatedAt;

  /** The URL of the user profile photo. */
  core.String photoUrl;

  /** The IDP of the user. */
  core.List<GetAccountInfoResponseUsersProviderUserInfo> providerUserInfo;

  /** The user's password salt. */
  core.String salt;

  /** The time zone of the user. */
  core.String timeZone;

  /** Version of the user's password. */
  core.int version;

  /** Create new GetAccountInfoResponseUsers from JSON data */
  GetAccountInfoResponseUsers.fromJson(core.Map json) {
    if (json.containsKey("dateOfBirth")) {
      dateOfBirth = json["dateOfBirth"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("localId")) {
      localId = json["localId"];
    }
    if (json.containsKey("password")) {
      password = json["password"];
    }
    if (json.containsKey("passwordUpdatedAt")) {
      passwordUpdatedAt = json["passwordUpdatedAt"];
    }
    if (json.containsKey("photoUrl")) {
      photoUrl = json["photoUrl"];
    }
    if (json.containsKey("providerUserInfo")) {
      providerUserInfo = json["providerUserInfo"].map((providerUserInfoItem) => new GetAccountInfoResponseUsersProviderUserInfo.fromJson(providerUserInfoItem)).toList();
    }
    if (json.containsKey("salt")) {
      salt = json["salt"];
    }
    if (json.containsKey("timeZone")) {
      timeZone = json["timeZone"];
    }
    if (json.containsKey("version")) {
      version = json["version"];
    }
  }

  /** Create JSON Object for GetAccountInfoResponseUsers */
  core.Map toJson() {
    var output = new core.Map();

    if (dateOfBirth != null) {
      output["dateOfBirth"] = dateOfBirth;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (language != null) {
      output["language"] = language;
    }
    if (localId != null) {
      output["localId"] = localId;
    }
    if (password != null) {
      output["password"] = password;
    }
    if (passwordUpdatedAt != null) {
      output["passwordUpdatedAt"] = passwordUpdatedAt;
    }
    if (photoUrl != null) {
      output["photoUrl"] = photoUrl;
    }
    if (providerUserInfo != null) {
      output["providerUserInfo"] = providerUserInfo.map((providerUserInfoItem) => providerUserInfoItem.toJson()).toList();
    }
    if (salt != null) {
      output["salt"] = salt;
    }
    if (timeZone != null) {
      output["timeZone"] = timeZone;
    }
    if (version != null) {
      output["version"] = version;
    }

    return output;
  }

  /** Return String representation of GetAccountInfoResponseUsers */
  core.String toString() => JSON.encode(this.toJson());

}

class GetAccountInfoResponseUsersProviderUserInfo {

  /** The user's display name at the IDP. */
  core.String displayName;

  /** The user's photo url at the IDP. */
  core.String photoUrl;

  /** The IdP ID. For white listed IdPs it's a short domain name, e.g., google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier. */
  core.String providerId;

  /** Create new GetAccountInfoResponseUsersProviderUserInfo from JSON data */
  GetAccountInfoResponseUsersProviderUserInfo.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("photoUrl")) {
      photoUrl = json["photoUrl"];
    }
    if (json.containsKey("providerId")) {
      providerId = json["providerId"];
    }
  }

  /** Create JSON Object for GetAccountInfoResponseUsersProviderUserInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (photoUrl != null) {
      output["photoUrl"] = photoUrl;
    }
    if (providerId != null) {
      output["providerId"] = providerId;
    }

    return output;
  }

  /** Return String representation of GetAccountInfoResponseUsersProviderUserInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** Response of getting a code for user confirmation (reset password, change email etc.). */
class GetOobConfirmationCodeResponse {

  /** The fixed string "identitytoolkit#GetOobConfirmationCodeResponse". */
  core.String kind;

  /** The code to be send to the user. */
  core.String oobCode;

  /** Create new GetOobConfirmationCodeResponse from JSON data */
  GetOobConfirmationCodeResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("oobCode")) {
      oobCode = json["oobCode"];
    }
  }

  /** Create JSON Object for GetOobConfirmationCodeResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (oobCode != null) {
      output["oobCode"] = oobCode;
    }

    return output;
  }

  /** Return String representation of GetOobConfirmationCodeResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to get the IDP authentication URL. */
class IdentitytoolkitRelyingpartyCreateAuthUriRequest {

  /** The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for Android, BUNDLE_ID for iOS. */
  core.String appId;

  /** The relying party OAuth client ID. */
  core.String clientId;

  /** The opaque value used by the client to maintain context info between the authentication request and the IDP callback. */
  core.String context;

  /** The URI to which the IDP redirects the user after the federated login flow. */
  core.String continueUri;

  /** The email or federated ID of the user. */
  core.String identifier;

  /** Optional realm for OpenID protocol. The sub string "scheme://domain:port" of the param "continueUri" is used if this is not set. */
  core.String openidRealm;

  /** The native app package for OTA installation. */
  core.String otaApp;

  /** The IdP ID. For white listed IdPs it's a short domain name e.g. google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier. */
  core.String providerId;

  /** Create new IdentitytoolkitRelyingpartyCreateAuthUriRequest from JSON data */
  IdentitytoolkitRelyingpartyCreateAuthUriRequest.fromJson(core.Map json) {
    if (json.containsKey("appId")) {
      appId = json["appId"];
    }
    if (json.containsKey("clientId")) {
      clientId = json["clientId"];
    }
    if (json.containsKey("context")) {
      context = json["context"];
    }
    if (json.containsKey("continueUri")) {
      continueUri = json["continueUri"];
    }
    if (json.containsKey("identifier")) {
      identifier = json["identifier"];
    }
    if (json.containsKey("openidRealm")) {
      openidRealm = json["openidRealm"];
    }
    if (json.containsKey("otaApp")) {
      otaApp = json["otaApp"];
    }
    if (json.containsKey("providerId")) {
      providerId = json["providerId"];
    }
  }

  /** Create JSON Object for IdentitytoolkitRelyingpartyCreateAuthUriRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (appId != null) {
      output["appId"] = appId;
    }
    if (clientId != null) {
      output["clientId"] = clientId;
    }
    if (context != null) {
      output["context"] = context;
    }
    if (continueUri != null) {
      output["continueUri"] = continueUri;
    }
    if (identifier != null) {
      output["identifier"] = identifier;
    }
    if (openidRealm != null) {
      output["openidRealm"] = openidRealm;
    }
    if (otaApp != null) {
      output["otaApp"] = otaApp;
    }
    if (providerId != null) {
      output["providerId"] = providerId;
    }

    return output;
  }

  /** Return String representation of IdentitytoolkitRelyingpartyCreateAuthUriRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to delete account. */
class IdentitytoolkitRelyingpartyDeleteAccountRequest {

  /** The local ID of the user. */
  core.String localId;

  /** Create new IdentitytoolkitRelyingpartyDeleteAccountRequest from JSON data */
  IdentitytoolkitRelyingpartyDeleteAccountRequest.fromJson(core.Map json) {
    if (json.containsKey("localId")) {
      localId = json["localId"];
    }
  }

  /** Create JSON Object for IdentitytoolkitRelyingpartyDeleteAccountRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (localId != null) {
      output["localId"] = localId;
    }

    return output;
  }

  /** Return String representation of IdentitytoolkitRelyingpartyDeleteAccountRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to download user account in batch. */
class IdentitytoolkitRelyingpartyDownloadAccountRequest {

  /** The max number of results to return in the response. */
  core.int maxResults;

  /** The token for the next page. This should be taken from the previous response. */
  core.String nextPageToken;

  /** Create new IdentitytoolkitRelyingpartyDownloadAccountRequest from JSON data */
  IdentitytoolkitRelyingpartyDownloadAccountRequest.fromJson(core.Map json) {
    if (json.containsKey("maxResults")) {
      maxResults = json["maxResults"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for IdentitytoolkitRelyingpartyDownloadAccountRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (maxResults != null) {
      output["maxResults"] = maxResults;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of IdentitytoolkitRelyingpartyDownloadAccountRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to get the account information. */
class IdentitytoolkitRelyingpartyGetAccountInfoRequest {

  /** The list of emails of the users to inquiry. */
  core.List<core.String> email;

  /** The GITKit token of the authenticated user. */
  core.String idToken;

  /** The list of local ID's of the users to inquiry. */
  core.List<core.String> localId;

  /** Create new IdentitytoolkitRelyingpartyGetAccountInfoRequest from JSON data */
  IdentitytoolkitRelyingpartyGetAccountInfoRequest.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"].toList();
    }
    if (json.containsKey("idToken")) {
      idToken = json["idToken"];
    }
    if (json.containsKey("localId")) {
      localId = json["localId"].toList();
    }
  }

  /** Create JSON Object for IdentitytoolkitRelyingpartyGetAccountInfoRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email.toList();
    }
    if (idToken != null) {
      output["idToken"] = idToken;
    }
    if (localId != null) {
      output["localId"] = localId.toList();
    }

    return output;
  }

  /** Return String representation of IdentitytoolkitRelyingpartyGetAccountInfoRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to reset the password. */
class IdentitytoolkitRelyingpartyResetPasswordRequest {

  /** The email address of the user. */
  core.String email;

  /** The new password inputted by the user. */
  core.String newPassword;

  /** The old password inputted by the user. */
  core.String oldPassword;

  /** The confirmation code. */
  core.String oobCode;

  /** Create new IdentitytoolkitRelyingpartyResetPasswordRequest from JSON data */
  IdentitytoolkitRelyingpartyResetPasswordRequest.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("newPassword")) {
      newPassword = json["newPassword"];
    }
    if (json.containsKey("oldPassword")) {
      oldPassword = json["oldPassword"];
    }
    if (json.containsKey("oobCode")) {
      oobCode = json["oobCode"];
    }
  }

  /** Create JSON Object for IdentitytoolkitRelyingpartyResetPasswordRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email;
    }
    if (newPassword != null) {
      output["newPassword"] = newPassword;
    }
    if (oldPassword != null) {
      output["oldPassword"] = oldPassword;
    }
    if (oobCode != null) {
      output["oobCode"] = oobCode;
    }

    return output;
  }

  /** Return String representation of IdentitytoolkitRelyingpartyResetPasswordRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to set the account information. */
class IdentitytoolkitRelyingpartySetAccountInfoRequest {

  /** The name of the user. */
  core.String displayName;

  /** The email of the user. */
  core.String email;

  /** Mark the email as verified or not. */
  core.bool emailVerified;

  /** The GITKit token of the authenticated user. */
  core.String idToken;

  /** The local ID of the user. */
  core.String localId;

  /** The out-of-band code of the change email request. */
  core.String oobCode;

  /** The new password of the user. */
  core.String password;

  /** The associated IDPs of the user. */
  core.List<core.String> provider;

  /** Mark the user to upgrade to federated login. */
  core.bool upgradeToFederatedLogin;

  /** Create new IdentitytoolkitRelyingpartySetAccountInfoRequest from JSON data */
  IdentitytoolkitRelyingpartySetAccountInfoRequest.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("emailVerified")) {
      emailVerified = json["emailVerified"];
    }
    if (json.containsKey("idToken")) {
      idToken = json["idToken"];
    }
    if (json.containsKey("localId")) {
      localId = json["localId"];
    }
    if (json.containsKey("oobCode")) {
      oobCode = json["oobCode"];
    }
    if (json.containsKey("password")) {
      password = json["password"];
    }
    if (json.containsKey("provider")) {
      provider = json["provider"].toList();
    }
    if (json.containsKey("upgradeToFederatedLogin")) {
      upgradeToFederatedLogin = json["upgradeToFederatedLogin"];
    }
  }

  /** Create JSON Object for IdentitytoolkitRelyingpartySetAccountInfoRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (emailVerified != null) {
      output["emailVerified"] = emailVerified;
    }
    if (idToken != null) {
      output["idToken"] = idToken;
    }
    if (localId != null) {
      output["localId"] = localId;
    }
    if (oobCode != null) {
      output["oobCode"] = oobCode;
    }
    if (password != null) {
      output["password"] = password;
    }
    if (provider != null) {
      output["provider"] = provider.toList();
    }
    if (upgradeToFederatedLogin != null) {
      output["upgradeToFederatedLogin"] = upgradeToFederatedLogin;
    }

    return output;
  }

  /** Return String representation of IdentitytoolkitRelyingpartySetAccountInfoRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to upload user account in batch. */
class IdentitytoolkitRelyingpartyUploadAccountRequest {

  core.String hashAlgorithm;

  core.int memoryCost;

  core.int rounds;

  core.String saltSeparator;

  core.String signerKey;

  /** The account info to be stored. */
  core.List<Userinfo> userAccount;

  /** Create new IdentitytoolkitRelyingpartyUploadAccountRequest from JSON data */
  IdentitytoolkitRelyingpartyUploadAccountRequest.fromJson(core.Map json) {
    if (json.containsKey("hashAlgorithm")) {
      hashAlgorithm = json["hashAlgorithm"];
    }
    if (json.containsKey("memoryCost")) {
      memoryCost = json["memoryCost"];
    }
    if (json.containsKey("rounds")) {
      rounds = json["rounds"];
    }
    if (json.containsKey("saltSeparator")) {
      saltSeparator = json["saltSeparator"];
    }
    if (json.containsKey("signerKey")) {
      signerKey = json["signerKey"];
    }
    if (json.containsKey("userAccount")) {
      userAccount = json["userAccount"].map((userAccountItem) => new Userinfo.fromJson(userAccountItem)).toList();
    }
  }

  /** Create JSON Object for IdentitytoolkitRelyingpartyUploadAccountRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (hashAlgorithm != null) {
      output["hashAlgorithm"] = hashAlgorithm;
    }
    if (memoryCost != null) {
      output["memoryCost"] = memoryCost;
    }
    if (rounds != null) {
      output["rounds"] = rounds;
    }
    if (saltSeparator != null) {
      output["saltSeparator"] = saltSeparator;
    }
    if (signerKey != null) {
      output["signerKey"] = signerKey;
    }
    if (userAccount != null) {
      output["userAccount"] = userAccount.map((userAccountItem) => userAccountItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of IdentitytoolkitRelyingpartyUploadAccountRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to verify the IDP assertion. */
class IdentitytoolkitRelyingpartyVerifyAssertionRequest {

  /** The GITKit token for the non-trusted IDP pending to be confirmed by the user. */
  core.String pendingIdToken;

  /** The post body if the request is a HTTP POST. */
  core.String postBody;

  /** The URI to which the IDP redirects the user back. It may contain federated login result params added by the IDP. */
  core.String requestUri;

  /** Create new IdentitytoolkitRelyingpartyVerifyAssertionRequest from JSON data */
  IdentitytoolkitRelyingpartyVerifyAssertionRequest.fromJson(core.Map json) {
    if (json.containsKey("pendingIdToken")) {
      pendingIdToken = json["pendingIdToken"];
    }
    if (json.containsKey("postBody")) {
      postBody = json["postBody"];
    }
    if (json.containsKey("requestUri")) {
      requestUri = json["requestUri"];
    }
  }

  /** Create JSON Object for IdentitytoolkitRelyingpartyVerifyAssertionRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (pendingIdToken != null) {
      output["pendingIdToken"] = pendingIdToken;
    }
    if (postBody != null) {
      output["postBody"] = postBody;
    }
    if (requestUri != null) {
      output["requestUri"] = requestUri;
    }

    return output;
  }

  /** Return String representation of IdentitytoolkitRelyingpartyVerifyAssertionRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request to verify the password. */
class IdentitytoolkitRelyingpartyVerifyPasswordRequest {

  /** The email of the user. */
  core.String email;

  /** The password inputed by the user. */
  core.String password;

  /** The GITKit token for the non-trusted IDP, which is to be confirmed by the user. */
  core.String pendingIdToken;

  /** Create new IdentitytoolkitRelyingpartyVerifyPasswordRequest from JSON data */
  IdentitytoolkitRelyingpartyVerifyPasswordRequest.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("password")) {
      password = json["password"];
    }
    if (json.containsKey("pendingIdToken")) {
      pendingIdToken = json["pendingIdToken"];
    }
  }

  /** Create JSON Object for IdentitytoolkitRelyingpartyVerifyPasswordRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email;
    }
    if (password != null) {
      output["password"] = password;
    }
    if (pendingIdToken != null) {
      output["pendingIdToken"] = pendingIdToken;
    }

    return output;
  }

  /** Return String representation of IdentitytoolkitRelyingpartyVerifyPasswordRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request of getting a code for user confirmation (reset password, change email etc.) */
class Relyingparty {

  /** The recaptcha response from the user. */
  core.String captchaResp;

  /** The recaptcha challenge presented to the user. */
  core.String challenge;

  /** The email of the user. */
  core.String email;

  /** The user's Gitkit login token for email change. */
  core.String idToken;

  /** The fixed string "identitytoolkit#relyingparty". */
  core.String kind;

  /** The new email if the code is for email change. */
  core.String newEmail;

  /** The request type. */
  core.String requestType;

  /** The IP address of the user. */
  core.String userIp;

  /** Create new Relyingparty from JSON data */
  Relyingparty.fromJson(core.Map json) {
    if (json.containsKey("captchaResp")) {
      captchaResp = json["captchaResp"];
    }
    if (json.containsKey("challenge")) {
      challenge = json["challenge"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("idToken")) {
      idToken = json["idToken"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("newEmail")) {
      newEmail = json["newEmail"];
    }
    if (json.containsKey("requestType")) {
      requestType = json["requestType"];
    }
    if (json.containsKey("userIp")) {
      userIp = json["userIp"];
    }
  }

  /** Create JSON Object for Relyingparty */
  core.Map toJson() {
    var output = new core.Map();

    if (captchaResp != null) {
      output["captchaResp"] = captchaResp;
    }
    if (challenge != null) {
      output["challenge"] = challenge;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (idToken != null) {
      output["idToken"] = idToken;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (newEmail != null) {
      output["newEmail"] = newEmail;
    }
    if (requestType != null) {
      output["requestType"] = requestType;
    }
    if (userIp != null) {
      output["userIp"] = userIp;
    }

    return output;
  }

  /** Return String representation of Relyingparty */
  core.String toString() => JSON.encode(this.toJson());

}

/** Response of resetting the password. */
class ResetPasswordResponse {

  /** The user's email. */
  core.String email;

  /** The fixed string "identitytoolkit#ResetPasswordResponse". */
  core.String kind;

  /** Create new ResetPasswordResponse from JSON data */
  ResetPasswordResponse.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for ResetPasswordResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of ResetPasswordResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Respone of setting the account information. */
class SetAccountInfoResponse {

  /** The name of the user. */
  core.String displayName;

  /** The email of the user. */
  core.String email;

  /** The Gitkit id token to login the newly sign up user. */
  core.String idToken;

  /** The fixed string "identitytoolkit#SetAccountInfoResponse". */
  core.String kind;

  /** The user's profiles at the associated IdPs. */
  core.List<SetAccountInfoResponseProviderUserInfo> providerUserInfo;

  /** Create new SetAccountInfoResponse from JSON data */
  SetAccountInfoResponse.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("idToken")) {
      idToken = json["idToken"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("providerUserInfo")) {
      providerUserInfo = json["providerUserInfo"].map((providerUserInfoItem) => new SetAccountInfoResponseProviderUserInfo.fromJson(providerUserInfoItem)).toList();
    }
  }

  /** Create JSON Object for SetAccountInfoResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (idToken != null) {
      output["idToken"] = idToken;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (providerUserInfo != null) {
      output["providerUserInfo"] = providerUserInfo.map((providerUserInfoItem) => providerUserInfoItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of SetAccountInfoResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class SetAccountInfoResponseProviderUserInfo {

  /** The user's display name at the IDP. */
  core.String displayName;

  /** The user's photo url at the IDP. */
  core.String photoUrl;

  /** The IdP ID. For whitelisted IdPs it's a short domain name, e.g., google.com, aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier. */
  core.String providerId;

  /** Create new SetAccountInfoResponseProviderUserInfo from JSON data */
  SetAccountInfoResponseProviderUserInfo.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("photoUrl")) {
      photoUrl = json["photoUrl"];
    }
    if (json.containsKey("providerId")) {
      providerId = json["providerId"];
    }
  }

  /** Create JSON Object for SetAccountInfoResponseProviderUserInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (photoUrl != null) {
      output["photoUrl"] = photoUrl;
    }
    if (providerId != null) {
      output["providerId"] = providerId;
    }

    return output;
  }

  /** Return String representation of SetAccountInfoResponseProviderUserInfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** Respone of uploading accounts in batch. */
class UploadAccountResponse {

  /** The error encountered while processing the account info. */
  core.List<UploadAccountResponseError> error;

  /** The fixed string "identitytoolkit#UploadAccountResponse". */
  core.String kind;

  /** Create new UploadAccountResponse from JSON data */
  UploadAccountResponse.fromJson(core.Map json) {
    if (json.containsKey("error")) {
      error = json["error"].map((errorItem) => new UploadAccountResponseError.fromJson(errorItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for UploadAccountResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (error != null) {
      output["error"] = error.map((errorItem) => errorItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of UploadAccountResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class UploadAccountResponseError {

  /** The index of the malformed account, starting from 0. */
  core.int index;

  /** Detailed error message for the account info. */
  core.String message;

  /** Create new UploadAccountResponseError from JSON data */
  UploadAccountResponseError.fromJson(core.Map json) {
    if (json.containsKey("index")) {
      index = json["index"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
  }

  /** Create JSON Object for UploadAccountResponseError */
  core.Map toJson() {
    var output = new core.Map();

    if (index != null) {
      output["index"] = index;
    }
    if (message != null) {
      output["message"] = message;
    }

    return output;
  }

  /** Return String representation of UploadAccountResponseError */
  core.String toString() => JSON.encode(this.toJson());

}

/** Template for an individual account info. */
class Userinfo {

  /** email */
  core.String email;

  /** Identifies this object as a user info. */
  core.String kind;

  /** user's id at the site */
  core.String localId;

  /** password */
  core.String password;

  /** salt */
  core.String salt;

  /** Create new Userinfo from JSON data */
  Userinfo.fromJson(core.Map json) {
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("localId")) {
      localId = json["localId"];
    }
    if (json.containsKey("password")) {
      password = json["password"];
    }
    if (json.containsKey("salt")) {
      salt = json["salt"];
    }
  }

  /** Create JSON Object for Userinfo */
  core.Map toJson() {
    var output = new core.Map();

    if (email != null) {
      output["email"] = email;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (localId != null) {
      output["localId"] = localId;
    }
    if (password != null) {
      output["password"] = password;
    }
    if (salt != null) {
      output["salt"] = salt;
    }

    return output;
  }

  /** Return String representation of Userinfo */
  core.String toString() => JSON.encode(this.toJson());

}

/** Response of verifying the IDP assertion. */
class VerifyAssertionResponse {

  /** The action code. */
  core.String action;

  /** URL for OTA app installation. */
  core.String appInstallationUrl;

  /** The custom scheme used by mobile app. */
  core.String appScheme;

  /** The opaque value used by the client to maintain context info between the authentication request and the IDP callback. */
  core.String context;

  /** The birth date of the IdP account. */
  core.String dateOfBirth;

  /** The display name of the user. */
  core.String displayName;

  /** The email returned by the IdP. NOTE: The federated login user may not own the email. */
  core.String email;

  /** It's true if the email is recycled. */
  core.bool emailRecycled;

  /** The value is true if the IDP is also the email provider. It means the user owns the email. */
  core.bool emailVerified;

  /** The unique ID identifies the IdP account. */
  core.String federatedId;

  /** The first name of the user. */
  core.String firstName;

  /** The full name of the user. */
  core.String fullName;

  /** The ID token. */
  core.String idToken;

  /** It's the identifier param in the createAuthUri request if the identifier is an email. It can be used to check whether the user input email is different from the asserted email. */
  core.String inputEmail;

  /** The fixed string "identitytoolkit#VerifyAssertionResponse". */
  core.String kind;

  /** The language preference of the user. */
  core.String language;

  /** The last name of the user. */
  core.String lastName;

  /** The RP local ID if it's already been mapped to the IdP account identified by the federated ID. */
  core.String localId;

  /** Whether the assertion is from a non-trusted IDP and need account linking confirmation. */
  core.bool needConfirmation;

  /** The nick name of the user. */
  core.String nickName;

  /** The user approved request token for the OpenID OAuth extension. */
  core.String oauthRequestToken;

  /** The scope for the OpenID OAuth extension. */
  core.String oauthScope;

  /** The original email stored in the mapping storage. It's returned when the federated ID is associated to a different email. */
  core.String originalEmail;

  /** The URI of the public accessible profiel picture. */
  core.String photoUrl;

  /** The IdP ID. For white listed IdPs it's a short domain name e.g. google.com, aol.com, live.net and yahoo.com. If the "providerId" param is set to OpenID OP identifer other than the whilte listed IdPs the OP identifier is returned. If the "identifier" param is federated ID in the createAuthUri request. The domain part of the federated ID is returned. */
  core.String providerId;

  /** The timezone of the user. */
  core.String timeZone;

  /** When action is 'map', contains the idps which can be used for confirmation. */
  core.List<core.String> verifiedProvider;

  /** Create new VerifyAssertionResponse from JSON data */
  VerifyAssertionResponse.fromJson(core.Map json) {
    if (json.containsKey("action")) {
      action = json["action"];
    }
    if (json.containsKey("appInstallationUrl")) {
      appInstallationUrl = json["appInstallationUrl"];
    }
    if (json.containsKey("appScheme")) {
      appScheme = json["appScheme"];
    }
    if (json.containsKey("context")) {
      context = json["context"];
    }
    if (json.containsKey("dateOfBirth")) {
      dateOfBirth = json["dateOfBirth"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("emailRecycled")) {
      emailRecycled = json["emailRecycled"];
    }
    if (json.containsKey("emailVerified")) {
      emailVerified = json["emailVerified"];
    }
    if (json.containsKey("federatedId")) {
      federatedId = json["federatedId"];
    }
    if (json.containsKey("firstName")) {
      firstName = json["firstName"];
    }
    if (json.containsKey("fullName")) {
      fullName = json["fullName"];
    }
    if (json.containsKey("idToken")) {
      idToken = json["idToken"];
    }
    if (json.containsKey("inputEmail")) {
      inputEmail = json["inputEmail"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("lastName")) {
      lastName = json["lastName"];
    }
    if (json.containsKey("localId")) {
      localId = json["localId"];
    }
    if (json.containsKey("needConfirmation")) {
      needConfirmation = json["needConfirmation"];
    }
    if (json.containsKey("nickName")) {
      nickName = json["nickName"];
    }
    if (json.containsKey("oauthRequestToken")) {
      oauthRequestToken = json["oauthRequestToken"];
    }
    if (json.containsKey("oauthScope")) {
      oauthScope = json["oauthScope"];
    }
    if (json.containsKey("originalEmail")) {
      originalEmail = json["originalEmail"];
    }
    if (json.containsKey("photoUrl")) {
      photoUrl = json["photoUrl"];
    }
    if (json.containsKey("providerId")) {
      providerId = json["providerId"];
    }
    if (json.containsKey("timeZone")) {
      timeZone = json["timeZone"];
    }
    if (json.containsKey("verifiedProvider")) {
      verifiedProvider = json["verifiedProvider"].toList();
    }
  }

  /** Create JSON Object for VerifyAssertionResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (action != null) {
      output["action"] = action;
    }
    if (appInstallationUrl != null) {
      output["appInstallationUrl"] = appInstallationUrl;
    }
    if (appScheme != null) {
      output["appScheme"] = appScheme;
    }
    if (context != null) {
      output["context"] = context;
    }
    if (dateOfBirth != null) {
      output["dateOfBirth"] = dateOfBirth;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (emailRecycled != null) {
      output["emailRecycled"] = emailRecycled;
    }
    if (emailVerified != null) {
      output["emailVerified"] = emailVerified;
    }
    if (federatedId != null) {
      output["federatedId"] = federatedId;
    }
    if (firstName != null) {
      output["firstName"] = firstName;
    }
    if (fullName != null) {
      output["fullName"] = fullName;
    }
    if (idToken != null) {
      output["idToken"] = idToken;
    }
    if (inputEmail != null) {
      output["inputEmail"] = inputEmail;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (language != null) {
      output["language"] = language;
    }
    if (lastName != null) {
      output["lastName"] = lastName;
    }
    if (localId != null) {
      output["localId"] = localId;
    }
    if (needConfirmation != null) {
      output["needConfirmation"] = needConfirmation;
    }
    if (nickName != null) {
      output["nickName"] = nickName;
    }
    if (oauthRequestToken != null) {
      output["oauthRequestToken"] = oauthRequestToken;
    }
    if (oauthScope != null) {
      output["oauthScope"] = oauthScope;
    }
    if (originalEmail != null) {
      output["originalEmail"] = originalEmail;
    }
    if (photoUrl != null) {
      output["photoUrl"] = photoUrl;
    }
    if (providerId != null) {
      output["providerId"] = providerId;
    }
    if (timeZone != null) {
      output["timeZone"] = timeZone;
    }
    if (verifiedProvider != null) {
      output["verifiedProvider"] = verifiedProvider.toList();
    }

    return output;
  }

  /** Return String representation of VerifyAssertionResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Request of verifying the password. */
class VerifyPasswordResponse {

  /** The name of the user. */
  core.String displayName;

  /** The email returned by the IdP. NOTE: The federated login user may not own the email. */
  core.String email;

  /** The GITKit token for authenticated user. */
  core.String idToken;

  /** The fixed string "identitytoolkit#VerifyPasswordResponse". */
  core.String kind;

  /** The RP local ID if it's already been mapped to the IdP account identified by the federated ID. */
  core.String localId;

  /** Whether the email is registered. */
  core.bool registered;

  /** Create new VerifyPasswordResponse from JSON data */
  VerifyPasswordResponse.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("idToken")) {
      idToken = json["idToken"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("localId")) {
      localId = json["localId"];
    }
    if (json.containsKey("registered")) {
      registered = json["registered"];
    }
  }

  /** Create JSON Object for VerifyPasswordResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (idToken != null) {
      output["idToken"] = idToken;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (localId != null) {
      output["localId"] = localId;
    }
    if (registered != null) {
      output["registered"] = registered;
    }

    return output;
  }

  /** Return String representation of VerifyPasswordResponse */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
