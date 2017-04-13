# Phylotastic Species List Web Services (Development instance) Documentation

#### Web Service 11.

__Service Name:__  	 	Get lists of species

__Service Description:__ 	A service to get lists of species that a user of phylotastic web application has published

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/get_list>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

   Parameter1 details:
  * __Name:__ 	 	  user_id
  * __Category:__  	  mandatory/optional
  * __Data Type:__    string 
  * __Description:__  Unique id (valid gmail address) of a phylotastic web application user

> __Note__: *user_id* parameter is mandatory only if a user wants to view all the lists (public/private) owned by the *user_id*  **OR** if a user wants to view a specific private list owned by the *user_id* 

> *user_id* parameter is not needed if a user wants to view all available public lists
 
   Parameter2 details:
  * __Name:__ 	 	list_id
  * __Category:__  	mandatory/optional
  * __Data Type:__  integer
  * __Description:__  List id of a specific list

> __Note__: *list_id* parameter is mandatory only if a user wants to view a specific private list identified by *list_id* and owned by the *user_id* **OR** if a user wants to view a specific public list identified by *list_id* and owned by other user

   Parameter3 details:
  * __Name:__ 	 	access_token
  * __Category:__  	mandatory/optional
  * __Data Type:__  string
  * __Description:__  Access token for the user with *user_id* (valid gmail address)

> __Note__: [*access_token*](#accesstoken) parameter is used for authenticating the user with valid gmail address. It is mandatory only if a user wants to view all the lists (public/private) owned by the *user_id* **OR** if a user wants to view a specific private list identified by *list_id* and owned by the *user_id*

   Parameter4 details:
  * __Name:__ verbose
  * __Category:__ optional
  * __Data Type:__ boolean 
  * __Description:__  It is an optional parameter which is by default *false* and shows minimal meta-data of the list. When given *true* it will display all meta-data related to that list and species collection.

   Parameter5 details:
  * __Name:__ content 
  * __Category:__ optional
  * __Data Type:__  boolean
  * __Description:__  It is an optional parameter which is by default *true* and shows the species collection of the list. When given *false* it will not display any species collection of the list.

__Examples:__

> __Note__: [*access_token*](#accesstoken) values presented below is just used as an example. Testing the urls in the examples using these tokens may not work. The user has to provide a valid unexpired access token for his/her gmail adderss. See the part [How to get Access Token to use in Species List Web Services](#accesstoken).

* To get all the public lists available:
```
http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/get_list
```
* To get a specific public list with ID 22:
```
http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/get_list?list_id=22
```
* To get all lists of user with ID *hdail.laughinghouse@gmail.com*:
```
http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/get_list?user_id=hdail.laughinghouse@gmail.com&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```
* To get a specific private list with ID 20 and owned by hdail.laughinghouse@gmail.com:
```
http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/get_list?user_id=hdail.laughinghouse@gmail.com&list_id=20&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```
* To get a specific private list (including all metadata available) with ID 20 and owned by hdail.laughinghouse@gmail.com:
```
http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/get_list?user_id=hdail.laughinghouse@gmail.com&list_id=20&verbose=true&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```

__Citation:__

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~3s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 12.

__Service Name:__  	 	Post a new list of species

__Service Description:__ 	A service to insert a new list of species by a phylotastic web application user

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/insert_list>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter1 details:
  * __Name:__ 	 	user_id
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  Unique id (valid gmail address) of a phylotastic web application user

2. Parameter2 details:
  * __Name:__ 	 	list
  * __Category:__  	mandatory
  * __Data Type:__  complex json list object
  * __Description:__  All data and metadata related to the new list of species encapsulated in a complex json object. <a name="jsonlist">The complex json list object</a> has the following properties:--
  + Property name: __list_title__ 
    + Data type: string
    + Description: title of the new list 
  + Property name: __list_description__
    + Data type: string
    + Description: description of the new list
  + Property name: __list_author__
    + Data type: an array of strings
    + Description: names of the authors who prepared the new list
  + Property name: __list_date_published__
    + Data type: string (format: *yyyy-mm-dd*)
    + Description: date when the new list is being posted
  + Property name: __list_curator__
    + Data type: string
    + Description: name of the curator of the new list
  + Property name: __list_curation_date__
    + Data type: string (format: *yyyy-mm-dd*)
    + Description: date when the new list is being curated
  + Property name: __list_source__
    + Data type: string
    + Description: source of the new list (url, publication)
  + Property name: __list_keywords__
    + Data type: an array of strings
    + Description: keywords related to the new list
  + Property name: __list_focal_clade__
    + Data type: string
    + Description:  focal_clade of the new list
  + Property name: __list_extra_info__
    + Data type: string
    + Description:  extra information about the new list
  + Property name: __list_origin__
    + Data type: string
    + Description:  the origin from where the new list is being posted. (Permitted values: "webapp" or "mobileapp")
  + Property name: __is_list_public__
    + Data type: boolean
    + Description:  true if the new list posted can be viewed by public. Otherwise false. 
  + Property name: __list_species__
    + Data type: an array of complex json species object
    + Description:  the data about species belonging to the list

<a name="jsonspecies">The complex json species object</a> contains the actual data (species). It has the following properties:

+ Property name: __vernacular_name__ 
    + Data type: string
    + Description: vernacular name of the species 
+ Property name: __scientific_name__
    + Data type: string
    + Description: scientific name of the species
+ Property name: __scientific_name_authorship__
    + Data type: string
    + Description: authorship of the scientific name of the species
+ Property name: __family__
    + Data type: string
    + Description: the taxonomic rank family where the species belongs to
+ Property name: __order__
    + Data type: string
    + Description: the taxonomic rank order where the species belongs to
+ Property name: __class__
    + Data type: string
    + Description: the taxonomic rank class where the species belongs to
+ Property name: __phylum__
    + Data type: string
    + Description: the taxonomic rank phylum where the species belongs to
+ Property name: __nomenclature_code__
    + Data type: string
    + Description: the nomenclatural code of the species

__Examples:__ 
```
curl -X POST http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/insert_list -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "list": {"list_extra_info": "", "list_description": "A list on the bird species add their endangered, threatened or invasive status", "list_keywords": ["bird", "endangered species", "Everglades"], "list_curator": "HD Laughinghouse", "list_origin": "webapp", "list_curation_date": "02-24-2016", "list_source": "Des", "list_focal_clade": "Aves", "list_title": "Bird Species List for Everglades National Park", "list_author": ["Bass", "O. & Cunningham", "R."], "list_date_published": "01-01-2006", "is_list_public": true, "list_species": [{"family": "", "scientific_name": "Aix sponsa", "scientific_name_authorship": "", "vernacular_name": "Wood Duck", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes", "class":""}, {"family": "", "scientific_name": "Anas strepera", "scientific_name_authorship": "", "vernacular_name": "Gadwall", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes", "class":""}, {"family": "", "scientific_name": "Caprimulgus vociferus", "scientific_name_authorship": "", "vernacular_name": "Whip-poor-will", "phylum": "", "nomenclature_code": "ICZN", "order": "Caprimulgiformes", "class":""}, {"family": "", "scientific_name": "Columba livia", "scientific_name_authorship": "", "vernacular_name": "Rock Dove", "phylum": "", "nomenclature_code": "ICZN", "order": "Columbiformes", "class":""}, {"family": "", "scientific_name": "Ceryle alcyon", "scientific_name_authorship": "", "vernacular_name": "Belted Kingfisher", "phylum": "", "nomenclature_code": "ICZN", "order": "Coraciiformes", "class": ""}, {"family": "", "scientific_name": "Aramus guarauna", "scientific_name_authorship": "", "vernacular_name": "Limpkin", "phylum": "", "nomenclature_code": "ICZN", "order": "Gruiformes", "class": ""}]}}'
```
__Citation:__

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~3s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 

---
#### Web Service 13.

__Service Name:__  	 	Replace species of an existing list

__Service Description:__ 	A service to replace the existing [species objects](#jsonspecies) with new species object of an existing list.

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/replace_species>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter1 details:
  * __Name:__ 	 	user_id
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  Unique id (valid gmail address) of a phylotastic web application user

2. Parameter2 details:
  * __Name:__ 	 	access_token
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  [*access_token*](#accesstoken) for the user with *user_id* (valid gmail address)

3. Parameter3 details:
  * __Name:__ 	 	list_id
  * __Category:__  	mandatory
  * __Data Type:__  integer
  * __Description:__  Unique id of an existing list

4. Parameter4 details:
  * __Name:__ 	 	species
  * __Category:__  	mandatory
  * __Data Type:__  an array of [complex json species object](#jsonspecies)
  * __Description:__  An array of complex json species objects to replace the existing species objects.

__Examples:__ 
```
curl -X POST http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/replace_species -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "access_token": "ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA", "list_id": 2, "species":[{"family": "", "scientific_name": "Aix sponsa", "scientific_name_authorship": "", "vernacular_name": "Wood Duck", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes","class":""}, {"family": "", "scientific_name": "Anas strepera", "scientific_name_authorship": "", "vernacular_name": "Gadwall", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes", "class":""}]}'
```

__Citation:__

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~3s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 14.

__Service Name:__  	 	Remove an existing list

__Service Description:__ 	A service to remove an existing list.
 
__Resource URI:__  	<http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/remove_list>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter1 details:
  * __Name:__ 	 user_id
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  Unique id (valid email) of the registered user of web or mobile application

2. Parameter2 details:
  * __Name:__ 	 	access_token
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  [*access_token*](#accesstoken) for the user with *user_id* (valid gmail address)

3. Parameter3 details:
  * __Name:__ 	 	list_id
  * __Category:__  	mandatory
  * __Data Type:__  integer
  * __Description:__  Unique id of an existing list

__Examples:__ 
```
http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/remove_list?user_id=hdail.laughinghouse@gmail.com&list_id=2&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```

__Citation:__

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~3s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 15.

__Service Name:__  	 	Update metadata of an existing list

__Service Description:__ 	A service to update properties (metadata) of an existing list.

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/update_list>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter1 details:
  * __Name:__ 	 	user_id
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  Unique id (valid gmail address) of a phylotastic web application user

2. Parameter2 details:
  * __Name:__ 	 	access_token
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  [*access_token*](#accesstoken) for the user with *user_id* (valid gmail address)

3. Parameter3 details:
  * __Name:__ 	 	list_id
  * __Category:__  	mandatory
  * __Data Type:__  integer
  * __Description:__  Unique id of an existing list

4. Parameter4 details:
  * __Name:__ 	 	list
  * __Category:__  	mandatory
  * __Data Type:__  a [complex json list __sub-object__](#jsonlist) consisting of a subset of list properties
  * __Description:__  An object consisting of a subset of list properties (metadata) that need to be updated

__Examples:__ 

* To change the title and description of a list with ID 5:
```
curl -X POST http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/update_list -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "access_token": "ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA", "list_id": 5, "list": {"list_description": "The list contains information on the invasive plants of Virginia, with data on the Invasiveness Rank and region in which they occur", "list_title": "Virginia Invasive Plant Species List"}}'
```

* To change type of a list with ID 5 from "private" to "public":
```
curl -X POST http://phylo.cs.nmsu.edu:5007/phylotastic_ws/sls/update_list -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "access_token": "ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA", "list_id": 5, "list": {"is_list_public": true}}'
```

__Citation:__

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~3s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

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

..* OAuth flow is set to __Server-side__.
..* __Access type__ is set to __Offline__ (this ensures you get a refresh token and an access token, instead of just an access token).

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
</a>
