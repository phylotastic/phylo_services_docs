# How to get Access Token to use in Species List Web Services:
<a name="accesstoken">

Getting an Access Token involves mainly two steps. First, users need to acquire a client ID and client secret for his/her gmail account. Second, generate the access token using the client ID and the client secret. The two steps are described in detail below.

### Get a client ID and client secret:

1. Open the [Google API Console Credentials page](https://console.developers.google.com/apis/credentials).
2. Login using your gmail account.
3. On the Credentials page, select __Create credentials__, then select __OAuth client ID__.
4. Under __Application type__, choose __Web application__.
5. Under __Authorized redirect URIs__, add a line with: ```https://developers.google.com/oauthplayground```. Leave other fields in this page empty.
6. Click __Create__.
7. On the page that appears next, take note of the __client ID__ and __client secret__. You'll need these in the next steps.

### Generate tokens:

8. Go to the [OAuth2 Playground](https://developers.google.com/oauthplayground/#step1&scopes=https%3A//www.googleapis.com/auth/adwords&url=https%3A//&content_type=application/json&http_method=GET&useDefaultOauthCred=checked&oauthEndpointSelect=Google&oauthAuthEndpointValue=https%3A//accounts.google.com/o/oauth2/auth&oauthTokenEndpointValue=https%3A//www.googleapis.com/oauth2/v3/token&includeCredentials=unchecked&accessTokenType=bearer&autoRefreshToken=unchecked&accessType=offline&forceAprovalPrompt=checked&response_type=code).

9. Click the gear icon ![gear icon](https://developers.google.com/adwords/api/images/playground-gear.png "gear icon")
in the upper right corner and check the box labeled __Use your own OAuth credentials__ (if it isn't already checked). 

![OAuth 2.0 configuration](https://developers.google.com/adwords/api/images/playground-settings.png "OAuth 2.0 configuration")

10. Make sure that:

 * __OAuth flow__ is set to __Server-side__.
 * __Access type__ is set to __Offline__ (this ensures you get a refresh token and an access token, instead of just an access token).

11. Enter the __OAuth2 client ID__ and __OAuth2 client secret__ you obtained above. 

12. In the section labeled __Step 1 - Select & authorize APIs__, enter the following URL in the text box at the bottom, if it's not already there, then click __Authorize APIs__:
```
https://www.googleapis.com/auth/userinfo.email
```
> Note that you need to use the above URL instead of using ```https://www.googleapis.com/auth/adwords``` that is shown in the picture below.

![Authorize APIs](https://developers.google.com/adwords/api/images/playground-authorize-apis.png "Authorize APIs")

13. If prompted, log in to your gmail account to grant access and authorization. Otherwise, confirm by clicking on __Allow__.

14. In the section labeled __Step 2 - Exchange authorization code for tokens__, you should now see an __Authorization code__. Click __Exchange authorization code for tokens__.

![Exchange authorization code for tokens](https://developers.google.com/adwords/api/images/playground-authcode.png " Exchange authorization code for tokens")

15. A value will appear in the __Access token__ field. This value is your desired access token for this gmail account.

> Note that your *Access Token* will expire after certain time limit. In that case you can generate a new access token by clicking on the __Refresh access token__ button. 

__Citation:__ The above procedure to get access tokens was created using [google developers help guide.](https://developers.google.com/adwords/api/docs/guides/authentication#oauth2_playground)
</a>
