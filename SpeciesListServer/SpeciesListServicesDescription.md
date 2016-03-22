# Phylotastic Species List Web Services Documentation

#### Web Service 8.

__Service Name:__  	 	Get all public lists of species available

__Service Description:__ 	A service to get all lists of species made public by registered users of phylotastic web or mobile application

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_public_lists>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	include_all
* *Category:*  	optional
* *Data Type:*  boolean 
* *Description:*  It is an optional parameter which is by default false and shows minimal information. When given true it will display all information related to public lists.  
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_public_lists
```
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_public_lists?include_all=true
```

__Citation:__  	 		

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~2s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 

---

#### Web Service 9.

__Service Name:__  	 	Get lists of species of a user

__Service Description:__ 	A service to get all lists of species that a registered user of phylotastic web or mobile application has published

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_user_lists>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	__user_id__
* *Category:*  	mandatory
* *Data Type:*  integer 
* *Description:*  User id of a user who is registered for web or mobile application

* *Name:* 	 	__include_all__ 
* *Category:*  	optional
* *Data Type:*  boolean
* *Description:*  It is an optional parameter which is by default false and shows minimal information. When given true it will display all information related to lists of a particular user.

__Examples:__ 
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_user_lists?user_id=2
```
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_user_lists?user_id=2&include_all=true
```

__Citation:__  	 		

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~2s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 10.

__Service Name:__  	 	Get all species of a list

__Service Description:__ 	A service to get all species of a particular list that a registered user of web or mobile application has published

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_species>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	list_id 
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  List id of a list published by a registered user of phylotastic web or mobile application
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_species?list_id=2
```
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_species?list_id=2&include_all=true
```

---

#### Web Service 11.

__Service Name:__  	 	Post a new list of species

__Service Description:__ 	A service to insert a new list of species by a registered user of web or mobile application

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/insert_list>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	__user_name__
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  Name/email of the registered user of web or mobile application

* *Name:* 	 	__user_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of the registered user of web or mobile application

* *Name:* 	 	__list__
* *Category:*  	mandatory
* *Data Type:*  complex json list object
* *Description:*  All data and metadata related to the new list of species encapsulated in a complex json object. The complex json list object has the following properties:--
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
    + Data type: string (format: *mm-dd-yyyy*)
    + Description: date when the new list is being posted
  + Property name: __list_curator__
    + Data type: string
    + Description: name of the curator of the new list
  + Property name: __list_curation_date__
    + Data type: string (format: *mm-dd-yyyy*)
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
    + Description:  true if the new list posted can be viewed by public. Otherwise false.

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
+ Property name: __phylum__
    + Data type: string
    + Description: the taxonomic rank phylum where the species belongs to  
+ Property name: __nomenclature_code__
    + Data type: string
    + Description: the nomenclature code of the species

__Examples:__ 
```
curl -X POST http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/insert_list -H 'content-type:application/json' -d '{"user_name": "hdail.laughinghouse@gmail.com", "list": {"list_extra_info": "", "list_description": "A list on the bird species add their endangered, threatened or invasive status", "list_keywords": ["bird", "endangered species", "Everglades"], "list_curator": "HD Laughinghouse", "list_origin": "webapp", "list_curation_date": "2-24-2016", "list_source": "Des", "list_focal_clade": "Aves", "list_title": "Bird Species List for Everglades National Park", "list_author": ["Bass", "O. & Cunningham", "R."], "list_date_published": "1-1-2006", "is_list_public": true, "list_species": [{"family": "", "scientific_name": "Aix sponsa", "scientific_name_authorship": "", "vernacular_name": "Wood Duck", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes"}, {"family": "", "scientific_name": "Anas strepera", "scientific_name_authorship": "", "vernacular_name": "Gadwall", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes"}, {"family": "", "scientific_name": "Caprimulgus vociferus", "scientific_name_authorship": "", "vernacular_name": "Whip-poor-will", "phylum": "", "nomenclature_code": "ICZN", "order": "Caprimulgiformes"}, {"family": "", "scientific_name": "Columba livia", "scientific_name_authorship": "", "vernacular_name": "Rock Dove", "phylum": "", "nomenclature_code": "ICZN", "order": "Columbiformes"}, {"family": "", "scientific_name": "Ceryle alcyon", "scientific_name_authorship": "", "vernacular_name": "Belted Kingfisher", "phylum": "", "nomenclature_code": "ICZN", "order": "Coraciiformes"}, {"family": "", "scientific_name": "Aramus guarauna", "scientific_name_authorship": "", "vernacular_name": "Limpkin", "phylum": "", "nomenclature_code": "ICZN", "order": "Gruiformes"}]}, "user_id": 2}'
```
__Citation:__  	 		

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~2s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---
#### Web Service 12.

__Service Name:__  	 	Add species to an existing list

__Service Description:__ 	A service to add more species to an existing list of species.

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/insert_species>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	__user_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of the registered user of web or mobile application

* *Name:* 	 	__list_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of an existing list

* *Name:* 	 	__species__
* *Category:*  	mandatory
* *Data Type:*  an array of [complex json species object](#jsonspecies)
* *Description:*  All data related to the new species encapsulated in a complex json object.
 				
__Examples:__ 
```
curl -X POST http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/insert_species -H 'content-type:application/json' -d '{"user_id": 3, "list_id": 2, "species":[{"family": "", "scientific_name": "Aix sponsa", "scientific_name_authorship": "", "vernacular_name": "Wood Duck", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes"}, {"family": "", "scientific_name": "Anas strepera", "scientific_name_authorship": "", "vernacular_name": "Gadwall", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes"}]}'
```

__Citation:__  	 	

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~2s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---
#### Web Service 13.

__Service Name:__  	 	Remove species from an existing list

__Service Description:__ 	A service to remove species from an existing list of species.

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/remove_species>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	__user_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of the registered user of web or mobile application

* *Name:* 	 	__list_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of an existing list

* *Name:* 	 	__species__
* *Category:*  	mandatory
* *Data Type:*  an array of strings
* *Description:*  An array of species names to be removed from an existing list.

__Examples:__ 
```
curl -X POST http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/remove_species -H 'content-type:application/json' -d '{"user_id": 3, "list_id": 2, "species":["Aix sponsa", "Anas strepera"]}'
```

__Citation:__  	 	

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~2s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 14.

__Service Name:__  	 	Remove an existing list

__Service Description:__ 	A service to remove an existing list.
 
__Resource URI:__  	<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/remove_list>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	__user_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of the registered user of web or mobile application

* *Name:* 	 	__list_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of an existing list
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/remove_list?user_id=2&list_id=2
```

__Citation:__  	 	

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~2s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---



