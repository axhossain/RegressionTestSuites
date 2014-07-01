Feature: MFA cookies API

  Background:
    * connect to the server

  Scenario: Create cookie

    *       connect to the server
    *       delete destination
    *       delete all mfa cookies
    *       create mfa cookie
    *       read mfa cookie value, systemBrowserId, cookieSource, financial institution and id
    *       get mfa cookie
    *       validate mfa cookie value, systemBrowserId, cookieSource, financial institution and id


  Scenario: Create cookie 2

    *       connect to the server
    *       delete destination
    *       delete all mfa cookies
    *       create mfa cookie
    *       read mfa cookie value, systemBrowserId, cookieSource, financial institution and id
    *       create mfa cookie
    *       read value, systemBrowserId, cookieSource, financial institution and id for the second mfa cookie
    *       get mfa cookie
    *       validate mfa cookie values in case of nested payload
