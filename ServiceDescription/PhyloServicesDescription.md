# Phylotastic Web Services Documentation

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
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_url?url=http://en.wikipedia.org/wiki/Ant
```
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_url?url=https://en.wikipedia.org/wiki/Plain_pigeon
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
 				
__Examples:__ 
```
http://phylo.cs.nmsu.edu:5004/phylotastic_ws/fn/names_text?text=The lemon dove (Columba larvata) is a species of bird in the pigeon family Columbidae found in montane forests of sub-Saharan Africa.
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
* *Name:* 	 	name 
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
* *Name:* 	 	name 
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



