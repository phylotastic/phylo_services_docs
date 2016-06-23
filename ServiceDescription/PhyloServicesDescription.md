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

#### Web Service 12.

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
