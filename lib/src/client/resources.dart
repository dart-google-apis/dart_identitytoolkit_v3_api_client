part of identitytoolkit_v3_api;

class RelyingpartyResource_ {

  final Client _client;

  RelyingpartyResource_(Client client) :
      _client = client;

  /**
   * Creates the URI used by the IdP to authenticate the user.
   *
   * [request] - IdentitytoolkitRelyingpartyCreateAuthUriRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CreateAuthUriResponse> createAuthUri(IdentitytoolkitRelyingpartyCreateAuthUriRequest request, {core.Map optParams}) {
    var url = "createAuthUri";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CreateAuthUriResponse.fromJson(data));
  }

  /**
   * Delete user account.
   *
   * [request] - IdentitytoolkitRelyingpartyDeleteAccountRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DeleteAccountResponse> deleteAccount(IdentitytoolkitRelyingpartyDeleteAccountRequest request, {core.Map optParams}) {
    var url = "deleteAccount";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DeleteAccountResponse.fromJson(data));
  }

  /**
   * Batch download user accounts.
   *
   * [request] - IdentitytoolkitRelyingpartyDownloadAccountRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DownloadAccountResponse> downloadAccount(IdentitytoolkitRelyingpartyDownloadAccountRequest request, {core.Map optParams}) {
    var url = "downloadAccount";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DownloadAccountResponse.fromJson(data));
  }

  /**
   * Returns the account info.
   *
   * [request] - IdentitytoolkitRelyingpartyGetAccountInfoRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<GetAccountInfoResponse> getAccountInfo(IdentitytoolkitRelyingpartyGetAccountInfoRequest request, {core.Map optParams}) {
    var url = "getAccountInfo";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new GetAccountInfoResponse.fromJson(data));
  }

  /**
   * Get a code for user action confirmation.
   *
   * [request] - Relyingparty to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<GetOobConfirmationCodeResponse> getOobConfirmationCode(Relyingparty request, {core.Map optParams}) {
    var url = "getOobConfirmationCode";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new GetOobConfirmationCodeResponse.fromJson(data));
  }

  /**
   * Set account info for a user.
   *
   * [request] - IdentitytoolkitRelyingpartyResetPasswordRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ResetPasswordResponse> resetPassword(IdentitytoolkitRelyingpartyResetPasswordRequest request, {core.Map optParams}) {
    var url = "resetPassword";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ResetPasswordResponse.fromJson(data));
  }

  /**
   * Set account info for a user.
   *
   * [request] - IdentitytoolkitRelyingpartySetAccountInfoRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SetAccountInfoResponse> setAccountInfo(IdentitytoolkitRelyingpartySetAccountInfoRequest request, {core.Map optParams}) {
    var url = "setAccountInfo";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SetAccountInfoResponse.fromJson(data));
  }

  /**
   * Batch upload existing user accounts.
   *
   * [request] - IdentitytoolkitRelyingpartyUploadAccountRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UploadAccountResponse> uploadAccount(IdentitytoolkitRelyingpartyUploadAccountRequest request, {core.Map optParams}) {
    var url = "uploadAccount";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UploadAccountResponse.fromJson(data));
  }

  /**
   * Verifies the assertion returned by the IdP.
   *
   * [request] - IdentitytoolkitRelyingpartyVerifyAssertionRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VerifyAssertionResponse> verifyAssertion(IdentitytoolkitRelyingpartyVerifyAssertionRequest request, {core.Map optParams}) {
    var url = "verifyAssertion";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new VerifyAssertionResponse.fromJson(data));
  }

  /**
   * Verifies the user entered password.
   *
   * [request] - IdentitytoolkitRelyingpartyVerifyPasswordRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VerifyPasswordResponse> verifyPassword(IdentitytoolkitRelyingpartyVerifyPasswordRequest request, {core.Map optParams}) {
    var url = "verifyPassword";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new VerifyPasswordResponse.fromJson(data));
  }
}

