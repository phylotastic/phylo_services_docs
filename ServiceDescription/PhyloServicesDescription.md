# Phylotastic Web Services OLD Documentation

> This document is **obsolete**. Please check out the new [documentation](https://github.com/phylotastic/phylo_services_docs/tree/master/ServiceDescription#phylotastic-web-services-documentation)


#### Web Service 1.

__Service Name:__  	 	Find Scientific Names on web pages

__Service Description:__ 	A service to find scientific names on web pages, PDFs,
  				Microsoft Office documents, images.

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_url>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	url 
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  	an encoded URL for a web page, PDF, Microsoft Office document, or image file 

* *Name:* 	 	engine 
* *Category:*  	optional
* *Data Type:*  integer 
* *Description:*  	a integer value to specify which search engine (TaxonFinder or NetiNeti) to use. By default it is 0 which means it will use both engines. Value 1 means TaxonFinder and 2 means NetiNeti   

 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_url?url=http://en.wikipedia.org/wiki/Ant
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_url?url=https://en.wikipedia.org/wiki/Plain_pigeon&engine=1
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_url?url=http://www.fws.gov/westvirginiafieldoffice/PDF/beechridgehcp/Appendix_D_Table_D-1.pdf
```

__Citation:__  	 		http://gnrd.globalnames.org/

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__5s~12s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 

---

#### Web Service 2.

__Service Name:__  	 	Find Scientific Names on free-form text

__Service Description:__ 	A service to find scientific names on free-form text.

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_text>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	text 
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  text content 

* *Name:* 	 	engine 
* *Category:*  	optional
* *Data Type:*  integer 
* *Description:*  	a integer value to specify which search engine (TaxonFinder or NetiNeti) to use. By default it is 0 which means it will use both engines. Value 1 means TaxonFinder and 2 means NetiNeti

 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_text?text=The lemon dove (Columba larvata) is a species of bird in the pigeon family Columbidae found in montane forests of sub-Saharan Africa.&engine=2
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_text?text=Formica polyctena is a species of European red wood ant in the genus Formica. The pavement ant, Tetramorium caespitum is an ant native to Europe. Pseudomyrmex is a genus of stinging, wasp-like ants. Adetomyrma venatrix is an endangered species of ants endemic to Madagascar. Carebara diversa is a species of ants in the subfamily Formicinae. It is found in many Asian countries.
```

__Citation:__  	 		http://gnrd.globalnames.org/

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__5s~12s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 3.

__Service Name:__  	 	Resolve Scientific Names with Open Tree TNRS

__Service Description:__ 	A service which resolves lists of scientific names against known sources.

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/resolve>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	names 
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  list of scientific names delimited by pipe "|"
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/resolve?names=Setophaga striata|Setophaga megnolia|Setophaga angilae|Setophaga plumbea|Setophaga virens
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/resolve?names=Formica polyctena|Formica exsectoides|Formica pecefica
```

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	scientificNames 
* *Category:*  	mandatory
* *Data Type:*  list of string
* *Description:*  list of scientific names to be resolved
 				
__Examples:__ 
```
curl -X POST "http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/ot/names" -H "content-type:application/json" -d '{"scientificNames": ["Formica exsectoides", "Formica pecefica", "Formica polyctena"]}'
```
__Citation:__  	 		https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tnrs

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__3s~10s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 4.

__Service Name:__  	 	Resolve Scientific Names with GNR TNRS

__Service Description:__ 	A service which resolves lists of scientific names against known sources.

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/gnr/resolve>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	names 
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  list of scientific names delimited by pipe "|"
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/gnr/resolve?names=Setophaga striata|Setophaga megnolia|Setophaga angilae|Setophaga plumbea|Setophaga virens
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/gnr/resolve?names=Formica polyctena|Formica exsectoides|Formica pecefica
```

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/gnr/names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	scientificNames 
* *Category:*  	mandatory
* *Data Type:*  list of string
* *Description:*  list of scientific names to be resolved
 				
__Examples:__ 
```
curl -X POST "http://phylo.cs.nmsu.edu:5004/phylotastic_ws/tnrs/gnr/names" -H "content-type:application/json" -d '{"scientificNames": ["Formica exsectoides", "Formica pecefica", "Formica polyctena"]}'
```
__Citation:__  	 		http://resolver.globalnames.org/

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__2s~10s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---
#### Web Service 5.

__Service Name:__  	 	Get Phylogenetic Trees from Open Tree of Life

__Service Description:__ 	A service to get Phylogenetic Trees from Open Tree of life.

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/ot/get_tree>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	taxa
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  list of resolved scientific names delimited by pipe "|"
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/ot/get_tree?taxa=Crabronidae|Ophiocordyceps|Megalyridae|Formica polyctena|Tetramorium caespitum|Pseudomyrmex|Carebara diversa|Formicinae
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/ot/get_tree?taxa=Setophaga striata|Setophaga magnolia|Setophaga angelae|Setophaga plumbea|Setophaga virens
```

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/ot/tree>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	resolvedNames 
* *Category:*  	mandatory
* *Data Type:*  list of string
* *Description:*  list of resolved scientific names
 				
__Examples:__ 
```
curl -X POST "http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/ot/tree" -H "content-type:application/json" -d '{"resolvedNames": [{"match_type": "Exact", "resolver_name": "OT", "matched_name": "Setophaga striata", "search_string": "setophaga strieta", "synonyms": ["Dendroica striata", "Setophaga striata"], "taxon_id": 60236}, {"match_type": "Fuzzy", "resolver_name": "OT", "matched_name": "Setophaga magnolia", "search_string": "setophaga magnolia", "synonyms": ["Dendroica magnolia", "Setophaga magnolia"], "taxon_id": 3597209}, {"match_type": "Exact", "resolver_name": "OT", "matched_name": "Setophaga angelae", "search_string": "setophaga angilae", "synonyms": ["Dendroica angelae", "Setophaga angelae"], "taxon_id": 3597191}, {"match_type": "Exact", "resolver_name": "OT", "matched_name": "Setophaga plumbea", "search_string": "setophaga plambea", "synonyms": ["Dendroica plumbea", "Setophaga plumbea"], "taxon_id": 3597205}, {"match_type": "Fuzzy", "resolver_name": "OT", "matched_name": "Setophaga virens", "search_string": "setophaga virens", "synonyms": ["Dendroica virens", "Setophaga virens"], "taxon_id": 3597195}]}'
```
__Citation:__  	 	https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tree_of_life

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__3s~10s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---
#### Web Service 6.

__Service Name:__  	 	Get all Species from a Taxon

__Service Description:__ 	A service to get all Species that belong to a particular Taxon. 

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/all_species>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
 
* *Name:* 	 	taxon
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  name of a taxon

__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/all_species?taxon=Vulpes
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/all_species?taxon=Canidae
```
__Citation:__  	 	
- https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#taxonomy

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__3s~15s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 7.

__Service Name:__  	 	Get all Species from a Taxon filtered by country

__Service Description:__ 	A service to get all Species that belong to a particular Taxon and established in a particular country.
 
__Resource URI:__  	<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/country_species>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	taxon
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  name of a taxon


* *Name:* 	 	country
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  name of a country

__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/country_species?taxon=Panthera&country=Bangladesh
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/country_species?taxon=Felidae&country=Nepal
```
__Citation:__  	 	
- https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#taxonomy
- http://www.inaturalist.org/pages/api+reference#get-places

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__3s~20s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---


#### Web Service 8.

__Service Name:__  	 	Get image urls of a list of species

__Service Description:__ 	A service to get image urls and corresponding license information of a list of species from EOL.

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/si/eol/get_images>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__
* *Name:* 	 	species
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  list of species names delimited by pipe "|"
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/si/eol/get_images?species=Panthera%20leo|Panthera%20onca|Panthera%20pardus
```

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/si/eol/images>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	species 
* *Category:*  	mandatory
* *Data Type:*  list of string
* *Description:*  list of species names
 				
__Examples:__ 
```
curl -X POST http://phylo.cs.nmsu.edu:5004/phylotastic_ws/si/eol/images -H 'content-type:application/json' -d '{"species": ["Catopuma badia","Catopuma temminckii"]}'
```
__Citation:__  	 	http://eol.org/api

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__2s~6s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 9.

__Service Name:__  	 	Get Species (of a Taxon) that have genome sequence in NCBI

__Service Description:__ 	A service to get subset of Species that belong to a particular Taxon and have genome sequence in NCBI. 

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/ncbi/genome_species>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json
 				
__Parameters:__
 
* *Name:* 	 	taxon
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  name of a taxon

__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/ncbi/genome_species?taxon=Panthera
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/ts/ncbi/genome_species?taxon=Rodentia
```
__Citation:__
- http://www.ncbi.nlm.nih.gov/books/NBK25500/#chapter1.Finding_Related_Data_Through_En

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__2s~15s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 10.

__Service Name:__  	 	Get information urls of a list of species

__Service Description:__ 	A service to get information urls of a list of species from EOL.

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/sl/eol/get_links>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__
* *Name:* 	 	species
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  list of species names delimited by pipe "|"
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/sl/eol/get_links?species=Panthera%20leo|Panthera%20onca|Panthera%20pardus
```

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/sl/eol/links>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	species 
* *Category:*  	mandatory
* *Data Type:*  list of string
* *Description:*  list of species names
 				
__Examples:__ 
```
curl -X POST http://phylo.cs.nmsu.edu:5004/phylotastic_ws/sl/eol/links -H 'content-type:application/json' -d '{"species": ["Catopuma badia","Catopuma temminckii"]}'
```
__Citation:__  	 	http://eol.org/api

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__2s~6s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 

---

#### Web Service 11.

__Service Name:__  	 	Get lists of species

__Service Description:__ 	A service to get lists of species that a user of phylotastic web application has published

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_list>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

* *Name:* 	 	__user_id__
* *Category:*  	mandatory/optional
* *Data Type:*  string 
* *Description:*  Unique id (valid gmail address) of a phylotastic web application user

> __Note__: *user_id* parameter is mandatory only if a user wants to view all the lists (public/private) owned by the *user_id*  **OR** if a user wants to view a specific private list owned by the *user_id* 

> *user_id* parameter is not needed if a user wants to view all available public lists
 
* *Name:* 	 	__list_id__
* *Category:*  	mandatory/optional
* *Data Type:*  integer
* *Description:*  List id of a specific list

> __Note__: *list_id* parameter is mandatory only if a user wants to view a specific private list identified by *list_id* and owned by the *user_id* **OR** if a user wants to view a specific public list identified by *list_id* and owned by other user

* *Name:* 	 	__access_token__
* *Category:*  	mandatory/optional
* *Data Type:*  string
* *Description:*  Access token for the user with *user_id* (valid gmail address)

> __Note__: *access_token* parameter is used for authenticating the user with valid gmail address. It is mandatory only if a user wants to view all the lists (public/private) owned by the *user_id* **OR** if a user wants to view a specific private list identified by *list_id* and owned by the *user_id*

* *Name:* __verbose__
* *Category:* optional
* *Data Type:* boolean 
* *Description:*  It is an optional parameter which is by default *false* and shows minimal meta-data of the list. When given *true* it will display all meta-data related to that list and species collection.

* *Name:* __content__ 
* *Category:* optional
* *Data Type:*  boolean
* *Description:*  It is an optional parameter which is by default *true* and shows the species collection of the list. When given *false* it will not display any species collection of the list.

__Examples:__

> __Note__: *access_token* values presented below is just used as an example. Testing the urls in the examples using these tokens may not work. The user has to provide a valid unexpired access token for his/her gmail adderss. The procedure for getting an *access_token* can be found [here](https://github.com/phylotastic/phylo_services_docs/blob/master/SpeciesListServer/AccessToken.md#how-to-get-access-token-to-use-in-species-list-web-services).

* To get all the public lists available:
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_list
```
* To get a specific public list with ID 22:
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_list?list_id=22
```
* To get all lists of user with ID *hdail.laughinghouse@gmail.com*:
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_list?user_id=hdail.laughinghouse@gmail.com&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```
* To get a specific private list with ID 20 and owned by hdail.laughinghouse@gmail.com:
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_list?user_id=hdail.laughinghouse@gmail.com&list_id=20&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```
* To get a specific private list (including all metadata available) with ID 20 and owned by hdail.laughinghouse@gmail.com:
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/get_list?user_id=hdail.laughinghouse@gmail.com&list_id=20&verbose=true&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
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

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/insert_list>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

* *Name:* 	 	__user_id__
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  Unique id (valid gmail address) of a phylotastic web application user


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
curl -X POST http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/insert_list -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "list": {"list_extra_info": "", "list_description": "A list on the bird species add their endangered, threatened or invasive status", "list_keywords": ["bird", "endangered species", "Everglades"], "list_curator": "HD Laughinghouse", "list_origin": "webapp", "list_curation_date": "02-24-2016", "list_source": "Des", "list_focal_clade": "Aves", "list_title": "Bird Species List for Everglades National Park", "list_author": ["Bass", "O. & Cunningham", "R."], "list_date_published": "01-01-2006", "is_list_public": true, "list_species": [{"family": "", "scientific_name": "Aix sponsa", "scientific_name_authorship": "", "vernacular_name": "Wood Duck", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes", "class":""}, {"family": "", "scientific_name": "Anas strepera", "scientific_name_authorship": "", "vernacular_name": "Gadwall", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes", "class":""}, {"family": "", "scientific_name": "Caprimulgus vociferus", "scientific_name_authorship": "", "vernacular_name": "Whip-poor-will", "phylum": "", "nomenclature_code": "ICZN", "order": "Caprimulgiformes", "class":""}, {"family": "", "scientific_name": "Columba livia", "scientific_name_authorship": "", "vernacular_name": "Rock Dove", "phylum": "", "nomenclature_code": "ICZN", "order": "Columbiformes", "class":""}, {"family": "", "scientific_name": "Ceryle alcyon", "scientific_name_authorship": "", "vernacular_name": "Belted Kingfisher", "phylum": "", "nomenclature_code": "ICZN", "order": "Coraciiformes", "class": ""}, {"family": "", "scientific_name": "Aramus guarauna", "scientific_name_authorship": "", "vernacular_name": "Limpkin", "phylum": "", "nomenclature_code": "ICZN", "order": "Gruiformes", "class": ""}]}}'
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

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/replace_species>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

* *Name:* 	 	__user_id__
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  Unique id (valid gmail address) of a phylotastic web application user

* *Name:* 	 	__access_token__
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  Access token for the user with *user_id* (valid gmail address)

* *Name:* 	 	__list_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of an existing list

* *Name:* 	 	__species__
* *Category:*  	mandatory
* *Data Type:*  an array of [complex json species object](#jsonspecies)
* *Description:*  An array of complex json species objects to replace the existing species objects.

__Examples:__ 
```
curl -X POST http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/replace_species -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "access_token": "ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA", "list_id": 2, "species":[{"family": "", "scientific_name": "Aix sponsa", "scientific_name_authorship": "", "vernacular_name": "Wood Duck", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes"}, {"family": "", "scientific_name": "Anas strepera", "scientific_name_authorship": "", "vernacular_name": "Gadwall", "phylum": "", "nomenclature_code": "ICZN", "order": "Anseriformes"}]}'
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
 
__Resource URI:__  	<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/remove_list>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

* *Name:* 	 	__user_id__
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  Unique id (valid email) of the registered user of web or mobile application

* *Name:* 	 	__access_token__
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  Access token for the user with *user_id* (valid gmail address)

* *Name:* 	 	__list_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of an existing list

__Examples:__ 
```
http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/remove_list?user_id=hdail.laughinghouse@gmail.com&list_id=2&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
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

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/update_list>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

* *Name:* 	 	__user_id__
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  Unique id (valid gmail address) of a phylotastic web application user

* *Name:* 	 	__access_token__
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  Access token for the user with *user_id* (valid gmail address)

* *Name:* 	 	__list_id__
* *Category:*  	mandatory
* *Data Type:*  integer
* *Description:*  Unique id of an existing list

* *Name:* 	 	__list__
* *Category:*  	mandatory
* *Data Type:*  a [complex json list __sub-object__](#jsonlist) consisting of a subset of list properties
* *Description:*  An object consisting of a subset of list properties (metadata) that need to be updated

__Examples:__ 

* To change the title and description of a list with ID 5:
```
curl -X POST http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/update_list -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "access_token": "ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA", "list_id": 5, "list": {"list_description": "The list contains information on the invasive plants of Virginia, with data on the Invasiveness Rank and region in which they occur", "list_title": "Virginia Invasive Plant Species List"}}'
```

* To change type of a list with ID 5 from "private" to "public":
```
curl -X POST http://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/update_list -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "access_token": "ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA", "list_id": 5, "list": {"is_list_public": true}}'
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

#### Web Service 16.

__Service Name:__  	 	Compare Phylogenetic Trees

__Service Description:__ 	A service to compare two Phylogenetic Trees.

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5006/phylotastic_ws/compare_trees>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__
* *Name:* 	 	tree1_nwk 
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  first tree in newick string format
 				
* *Name:* 	 	tree2_nwk 
* *Category:*  	mandatory
* *Data Type:*  string
* *Description:*  second tree in newick string format


__Examples:__ 
```
curl -X POST "http://phylo.cs.nmsu.edu:5006/phylotastic_ws/compare_trees" -H "content-type:application/json" -d '{"tree1_nwk": "(((((((EU368025_Uncult_marine_euk_FS14JA72_30Mar05_5m:0.00329,EU368020_Uncult_marine_euk_FS04GA95_01Aug05_5m:-0.00002):0.00002,EU368013_Uncult_marine_euk_FS01D014_01Aug05_65m:-0.00002):0.00010,(EU368034_Uncult_marine_euk_OC413NSS_Q007_15m:-0.00000,(EU368007_Uncult_marine_euk_FS01B026_30Mar05_5m:-0.00001,EU368004_Uncult_marine_euk_FS01AA94_01Aug05_5m:0.00328):0.00000):0.00317):0.00725,(EU368005_Uncult_marine_euk_FS01B033_30Mar05_5m:-0.00002,(EF172850_Uncult_euk_SSRPB47:-0.00003,EU368022_Uncult_marine_euk_FS04H169_01Aug05_89m:0.00166):0.00002):0.00597):0.00202,((DQ060523_Uncult_marine_euk_NOR46.29:0.01559,(HQ868826_Uncult_euk_SHAX1073:0.00155,EU368038_Uncult_marine_euk_EN351CTD040_4mN11:0.00172):0.00429):0.00017,(EU368023_Uncult_marine_euk_FS04H153_01Aug05_89m:0.00504,(DQ222879_Uncult_photo_euk_RA000907.18:0.00166,HM858468_Uncult_marine_euk_MO.011.5m.00036:-0.00003):0.00152):0.00566):0.00662):0.00941,(HQ868882_Uncult_euk_SHAX1135:0.00170,HQ868810_Uncult_euk_SHAX1056:-0.00007):0.02449):0.00648,(EU368021_Uncult_marine_euk_FS04GA46_01Aug05_5m:0.02285,(HQ869075_Uncult_euk_SHAX587:0.00000,HQ869035_Uncult_euk_SHAX540:0.00000):0.04720):0.01029,HQ156863_Uncult_marine_ciliate_170609_08:0.17059);", "tree2_nwk": "((HQ869075_Uncult_euk_SHAX587:0.00000,HQ869035_Uncult_euk_SHAX540:0.00000):0.04484,(EU368021_Uncult_marine_euk_FS04GA46_01Aug05_5m:0.02285,(((((EU368005_Uncult_marine_euk_FS01B033_30Mar05_5m:-0.00002,(EF172850_Uncult_euk_SSRPB47:-0.00003,EU368022_Uncult_marine_euk_FS04H169_01Aug05_89m:0.00166):0.00002):0.00597,(((EU368025_Uncult_marine_euk_FS14JA72_30Mar05_5m:0.00329,EU368020_Uncult_marine_euk_FS04GA95_01Aug05_5m:-0.00002):0.00002,EU368013_Uncult_marine_euk_FS01D014_01Aug05_65m:-0.00002):0.00010,(EU368034_Uncult_marine_euk_OC413NSS_Q007_15m:-0.00000,(EU368007_Uncult_marine_euk_FS01B026_30Mar05_5m:-0.00001,EU368004_Uncult_marine_euk_FS01AA94_01Aug05_5m:0.00328):0.00000):0.00317):0.00725):0.00202,((DQ060523_Uncult_marine_euk_NOR46.29:0.01559,(HQ868826_Uncult_euk_SHAX1073:0.00155,EU368038_Uncult_marine_euk_EN351CTD040_4mN11:0.00172):0.00429):0.00017,(EU368023_Uncult_marine_euk_FS04H153_01Aug05_89m:0.00504,(DQ222879_Uncult_photo_euk_RA000907.18:0.00166,HM858468_Uncult_marine_euk_MO.011.5m.00036:-0.00003):0.00152):0.00566):0.00662):0.00941,(HQ868882_Uncult_euk_SHAX1135:0.00170,HQ868810_Uncult_euk_SHAX1056:-0.00007):0.02449):0.00648,HQ156863_Uncult_marine_ciliate_170609_08:0.17059):0.01029):0.00236);"}'

```
__Citation:__  	 	http://dendropy.org/library/treecompare.html#module-dendropy.calculate.treecompare

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~3s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 17.

__Service Name:__  	 	Find supported studies of an induced tree

__Service Description:__  A service	to get supported studies of an induced tree from OpenTreeOfLife.

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5006/phylotastic_ws/md/get_studies>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	list 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  pipe ("|") delimited list of OpenTree ids of taxon names or taxon names depending on the __list_type__ parameter value
 				
2. Parameter details:
  * __Name:__ 	 	list_type 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  a string value to specify which type (taxon names or OpenTree ids of taxon names) of list is provided as input. Valid values include __ottids__ or __taxa__. __ottids__ list type denotes a list which contains OpenTree ids of taxon names and __taxa__ list type denotes a list which contains taxon names

__Example Commands:__ 
```
http://phylo.cs.nmsu.edu:5006/phylotastic_ws/md/get_studies?list=3597191|3597209|3597205|60236|3597195&list_type=ottids
```
```
http://phylo.cs.nmsu.edu:5006/phylotastic_ws/md/get_studies?list=Setophaga striata|Setophaga magnolia|Setophaga angelae|Setophaga plumbea|Setophaga virens&list_type=taxa
```
__Example Results:__
```
{"execution_time": 0.69, "status_code": 200, "message": "Success", "studies": [{"PublicationYear": 2010, "FocalCladeTaxonName": "Parulidae", "Publication": "Lovette, Irby J., Jorge L. P\u00e9rez-Em\u00e1n, John P. Sullivan, Richard C. Banks, Isabella Fiorentino, Sergio C\u00f3rdoba-C\u00f3rdoba, Mar\u00eda Echeverry-Galvis, F. Keith Barker, Kevin J. Burns, John Klicka, Scott M. Lanyon, Eldredge Bermingham. 2010. A comprehensive multilocus phylogeny for the wood-warblers and a revised classification of the Parulidae (Aves). Molecular Phylogenetics and Evolution 57 (2): 753-770.", "CandidateTreeForSynthesis": "tree6024", "PublicationDOI": "http://dx.doi.org/10.1016/j.ympev.2010.07.018", "DataRepository": "", "Curator": "Joseph W. Brown", "PublicationIdentifier": "pg_2591"}]}
```

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5006/phylotastic_ws/md/studies>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	list 
  * __Category:__  	mandatory
  * __Data Type:__  list of string or integers depending on the __list_type__ parameter value
  * __Description:__  a list of OpenTree ids of taxon names or taxon names depending on the __list_type__ parameter value
 				
2. Parameter details:
  * __Name:__ 	 	list_type 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  a string value to specify which type (taxon names or OpenTree ids of taxon names) of list is provided as input. Valid values include __ottids__ or __taxa__. __ottids__ list type denotes a list which contains OpenTree ids of taxon names and __taxa__ list type denotes a list which contains taxon names

__Example Commands:__ 
```
curl -X POST http://phylo.cs.nmsu.edu:5006/phylotastic_ws/md/studies -H "content-type:application/json" -d '{"list":[1094064,860906,257323,698438,698406,187220,336231,124230], "list_type": "ottids"}'
```
```
curl -X POST http://phylo.cs.nmsu.edu:5006/phylotastic_ws/md/studies -H "content-type:application/json" -d '{"list":["Delphinidae","Delphinus capensis","Delphinus delphis","Tursiops truncatus","Tursiops aduncus","Sotalia fluviatilis","Sousa chinensis"], "list_type": "taxa"}'
```
__Example Results:__
```
{"execution_time": 0.98, "status_code": 200, "message": "Success", "studies": [{"PublicationYear": 2009, "FocalCladeTaxonName": "Cetacea", "Publication": "McGowen, M., Spaulding M., and Gatesy J. 2009. Divergence date estimation and a comprehensive molecular tree of extant cetaceans. Molecular Phylogenetics and Evolution 53 (3): 891-906.", "CandidateTreeForSynthesis": "tree5998", "PublicationDOI": "http://dx.doi.org/10.1016/j.ympev.2009.08.018", "DataRepository": "http://purl.org/phylo/treebase/phylows/study/TB2:S10190", "Curator": "Chris Owen", "PublicationIdentifier": "pg_2587"}, {"PublicationYear": 2009, "FocalCladeTaxonName": "Cetacea", "Publication": "Steeman, M., Hebsgaard M., Fordyce R., Ho S., Rabosky D., Nielsen R., Rahbek C., Glenner H., S\u00f8rensen M., & Willerslev E. 2009. Radiation of Extant Cetaceans Driven by Restructuring of the Oceans. Systematic Biology 58 (6): 573-585.", "CandidateTreeForSynthesis": "tree6215", "PublicationDOI": "http://dx.doi.org/10.1093/sysbio/syp060", "DataRepository": "http://purl.org/phylo/treebase/phylows/study/TB2:S10124", "Curator": "Chris Owen", "PublicationIdentifier": "pg_1927"}]}
```
__Citation:__

- https://github.com/OpenTreeOfLife/germinator/wiki/Synthetic-tree-API-v3#node_info
- https://github.com/OpenTreeOfLife/germinator/wiki/TNRS-API-v3#match_names
- https://github.com/OpenTreeOfLife/germinator/wiki/Studies-API-v3#find_studies

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__1s~3s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 18.

__Service Name:__  	 	Get Phylogenetic Trees from phylomatic

__Service Description:__ 	A service to get Phylogenetic Trees from phylomatic.

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pm/get_tree>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	taxa
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  list of resolved scientific names delimited by pipe "|"
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pm/get_tree?taxa=Panthera leo|Panthera onca|Panthera tigris|Panthera uncia
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pm/get_tree?taxa=Helianthus%20annuus|Passiflora%20edulis|Rosa%20arkansana|Saccharomyces%20cerevisiae
```

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pm/tree>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	resolvedNames 
* *Category:*  	mandatory
* *Data Type:*  list of string
* *Description:*  list of resolved scientific names
 				
__Examples:__ 
```
curl -X POST "http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pm/tree" -H "content-type:application/json" -d '{"resolvedNames": ["Setophaga striata", "Setophaga magnolia", "Setophaga angelae", "Setophaga plumbea", "Setophaga virens"]}'
```
```
curl -X POST "http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pm/tree" -H "content-type:application/json" -d '{"resolvedNames": ["Helianthus annuus","Passiflora edulis", "Rosa arkansana", "Saccharomyces cerevisiae"]}'
```
__Citation:__  	 	http://phylodiversity.net/phylomatic/

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__3s~10s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 19
__Service Name:__  	 	Get Phylogenetic Trees from phyloT

__Service Description:__ 	A service to get a taxonomic tree from the NCBI taxonomy using phyloT (http://phylot.biobyte.de/).

__Resource URI:__  	<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pt/get_tree>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	taxa
* *Category:*  	mandatory
* *Data Type:*  string 
* *Description:*  list of resolved scientific names delimited by pipe "|"
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pt/get_tree?taxa=Setophaga striata|Setophaga magnolia|Setophaga angelae|Setophaga plumbea|Setophaga virens
```

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pt/tree>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__  			
* *Name:* 	 	resolvedNames 
* *Category:*  	mandatory
* *Data Type:*  list of string
* *Description:*  list of resolved scientific names
 				
__Examples:__ 
```
curl -X POST "http://phylo.cs.nmsu.edu:5004/phylotastic_ws/gt/pt/tree" -H "content-type:application/json" -d '{"resolvedNames": ["Setophaga striata", "Setophaga magnolia", "Setophaga angelae", "Setophaga plumbea", "Setophaga virens"]}'
```
__Citation:__  	 	http://phylot.biobyte.de/

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__3s~10s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 20
__Service Name:__  	 	Get Phylogenetic Trees with branch lengths

__Service Description:__ 	A service to get chronograms (trees with branch lengths proportional to time).

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5009/phylotastic_ws/sc/scale>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	newick 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  tree in newick string format
 				
2. Parameter details:
  * __Name:__ 	 	method 
  * __Category:__  	optional
  * __Data Type:__  string
  * __Description:__  a string value to specify which method should be used for scaling. Valid values include __median__ or __sdm__. __median__ is the default scaling method which uses the median of all source chronograms. __sdm__ method uses SDM supertree method (Criscuolo et al. 2006).
 				
__Example Commands:__

1. 
```
curl -X POST http://phylo.cs.nmsu.edu:5009/phylotastic_ws/sc/scale -H 'content-type:application/json' -d '{"newick": "((Zea mays,Oryza sativa),((Arabidopsis thaliana,(Glycine max,Medicago sativa)),Solanum lycopersicum)Pentapetalae);", "method": "sdm"}'
```

2. 
```
curl -X POST http://phylo.cs.nmsu.edu:5009/phylotastic_ws/sc/scale -H 'content-type:application/json' -d '{"newick": "(((((Canis lupus pallipes,Melursus ursinus)Caniformia,((Panthera tigris,Panthera pardus)Panthera,Herpestes fuscus))Carnivora,(Macaca mulatta,Homo sapiens)Catarrhini)Boreoeutheria,Elephas maximus)Eutheria,Haliastur indus)Amniota;"}'
```
__Example Results:__

1. 
```
{"method_used": "sdm", "execution_time": "2.25", "status_code": 200, "creation_time": "2017-09-17T21:20:01.653659", "scaled_tree": "(Solanum lycopersicum:141.8861801,((Zea mays:106.2589771,Oryza sativa:106.2589771):35.62720301,(Arabidopsis thaliana:117.1887019,(Glycine max:97.3424611,Medicago sativa:97.3424611):19.84624085):24.69747818):0);", "input_tree": "((Zea mays,Oryza sativa),((Arabidopsis thaliana,(Glycine max,Medicago sativa)),Solanum lycopersicum)Pentapetalae);", "message": "Success", "service_documentation": "https://github.com/phylotastic/phylo_services_docs/blob/master/ServiceDescription/PhyloServicesDescription.md#web-service-20"}
```
2. 
```
{"execution_time": "4.38", "status_code": 200, "creation_time": "2017-05-17T20:15:53.489925", "scaled_tree": "((((Homo sapiens:29.126382,Macaca mulatta:29.126382):69.773618,(((Panthera pardus:6.4,Panthera tigris:6.4):34.300001,Herpestes fuscus:40.700001):24.199999,(Canis lupus pallipes:16.775,Melursus ursinus:16.775):48.125):34):10.65,Elephas maximus:109.55):17.078571,Haliastur indus:126.628571);", "input_tree": "(((((Canis lupus pallipes,Melursus ursinus)Caniformia,((Panthera tigris,Panthera pardus)Panthera,Herpestes fuscus))Carnivora,(Macaca mulatta,Homo sapiens)Catarrhini)Boreoeutheria,Elephas maximus)Eutheria,Haliastur indus)Amniota;", "message": "Success", "service_documentation": "https://github.com/phylotastic/phylo_services_docs/blob/master/ServiceDescription/PhyloServicesDescription.md#web-service-20"}
```

__Citation:__  	 	http://datelife.org/

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__3s~10s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
 
---

#### Web Service 21
__Service Name:__  	 	Get metadata for a output chronogram 

__Service Description:__ 	A service to get metadata information (citations) for chronograms retrieved by datelife.

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5009/phylotastic_ws/sc/metadata_scale>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	newick 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  tree in newick string format
 				
 				
__Example Commands:__

1. 
```
curl -X POST http://phylo.cs.nmsu.edu:5009/phylotastic_ws/sc/metadata_scale -H 'content-type:application/json' -d '{"newick": "((Zea mays,Oryza sativa),((Arabidopsis thaliana,(Glycine max,Medicago sativa)),Solanum lycopersicum)Pentapetalae);"}'
```

__Example Results:__

1. 
```
{"metadata_tree_scaling": ["Hedges, S. Blair, Julie Marin, Michael Suleski, Madeline Paymer, Sudhir Kumar. 2015. Tree of life reveals clock-like speciation and diversification. Molecular Biology and Evolution 32 (4): 835-845", "Magall\u00f3n, Susana, Sandra G\u00f3mez-Acevedo, Luna L. S\u00e1nchez-Reyes, Tania Hern\u00e1ndez-Hern\u00e1ndez. 2015. A metacalibrated time-tree documents the early rise of flowering plant phylogenetic diversity. New Phytologist 207 (2): 437-453", "Magall\u00f3n, Susana, Sandra G\u00f3mez-Acevedo, Luna L. S\u00e1nchez-Reyes, Tania Hern\u00e1ndez-Hern\u00e1ndez. 2015. A metacalibrated time-tree documents the early rise of flowering plant phylogenetic diversity. New Phytologist 207 (2): 437-453"], "execution_time": "1.83", "status_code": 200, "creation_time": "2017-09-17T21:19:03.397009", "input_tree": "((Zea mays,Oryza sativa),((Arabidopsis thaliana,(Glycine max,Medicago sativa)),Solanum lycopersicum)Pentapetalae);", "message": "Success", "service_documentation": "https://github.com/phylotastic/phylo_services_docs/blob/master/ServiceDescription/PhyloServicesDescription.md#web-service-21"}
```

__Citation:__  	 	http://datelife.org/

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__3s~10s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
---

#### Web Service 22
__Service Name:__  	 	Get scientific name of a species from its common name 

__Service Description:__ 	A service to get scientific name of a species from its common name.

__Resource URI:__  		<http://phylo.cs.nmsu.edu:5004/phylotastic_ws/cs/ncbi/get_scientific_name>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	common 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  a common name for which to find scientific name
 				
 				
__Example Commands:__

1. 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/cs/ncbi/get_scientific_name?common=dog
```

2. 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/cs/ncbi/get_scientific_name?common=tiger
```
__Example Results:__

1. 
```
{"ncbi_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9615","scientific_name": "Canis lupus familiaris","status_code": 200,"common_name": "dog","message": "Success","extra_info": {"genbank_common_name": "dog","inherited_blast_name": " carnivores","rank": "subspecies"},"metadata": {"execution_time": "1.09","creation_time": "2017-10-12T07:04:43.459298","source_urls": ["https://www.ncbi.nlm.nih.gov/taxonomy"]}}
```

2. 
```
{"ncbi_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9694","scientific_name": "Panthera tigris","status_code": 200,
"common_name": "tiger","message": "Success","extra_info": {"genbank_common_name": "tiger","inherited_blast_name": " carnivores","rank": " species"},"metadata": {"execution_time": "1.08","creation_time": "2017-10-12T07:06:17.925418","source_urls": ["https://www.ncbi.nlm.nih.gov/taxonomy"]}}
```

__Citation:__  	 	https://www.ncbi.nlm.nih.gov/taxonomy

__Service Quality:__

 * *Restrictions on capacity:*
 * *Restrictions on scope:*
 * *Expected response time:*  	__3s~5s__
 * *Informative message:*
   * when service is down --
   * when malformed input is provided --
 * *Uptime:* 
---
