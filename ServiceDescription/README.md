# <a name='servicesdocumentation'>Phylotastic Web Services Documentation</a>
 
If you have a suggestion to improve this documentation or have found any errors in any of the web services, please submit an issue on the
[repo](https://github.com/phylotastic/phylo_webservices).

__Phylotastic Web Services__ are grouped into the following categories:

**[Scientific Name Extraction services](#nameextraction)** : services to extract scientific names on web pages, PDFs, Microsoft Office documents, images.

**[Taxonomic Name Resolution services](#tnrs)** : services for resolving taxonomic names to different data source identifiers.

**[Phylogenetic Tree Retrieval services](#treeretrieval)** : services to retrieve Phylogenetic trees.

**[Taxon to Species services](#taxonspecies)** : services to fetch a set of species belonging to a particular Taxon.

**[Image/Infromation URL Retrieval services](#imageinforetrieval)** :  services for obtaining Image/Infromation URLs related to a set of species.

**[Common Name to Sceintific Name services](#commonname)** :  services to find scientific names from common names.

**[Sceintific Name to Common Name services](#scientificname)** :  services to find common names from scientific names.

**[Species List services](#specieslist)** :  services to publish/remove/update/access lists of species owned by a phylotastic web application/services user.

**[Tree scaling services](#treescaling)** :  services for getting chronograms (trees with branch lengths proportional to time).

**[Miscellaneous services](#misc)** :  services for different use cases.

**[Phylogenetic Tree Retrieval with Common Names](#compoundservice)**: service to get a tree with common names

---

## <a name='nameextraction'></a>Scientific Name Extraction

   | Service Name |  Summary | 
   | :----------- | ---------: | 
   | [GNRD_wrapper_URL](#gnrdurl) | Extract scientific names from URL of a web page using Global Names Recognition and Discovery (GNRD) services. | 
   | [GNRD_wrapper_text](#gnrdtext) | Extract scientific names on free-form text using Global Names Recognition and Discovery (GNRD) services. |
   | [GNRD_wrapper_file](#gnrdfile) | Extract scientific names from a file(e.g. text, PDF, Microsoft Office documents, images) using Global Names Recognition and Discovery (GNRD) services. |
   | [TaxonFinder_wrapper_URL](#taxonfindurl) | Extract scientific names from URL of a web page using TaxonFinder API. |
   | [TaxonFinder_wrapper_text](#taxonfindtext) | A service to extract scientific names on free-form text using TaxonFinder API. |



__Service Name:__  	 	<a name="gnrdurl"></a>GNRD_wrapper_URL

__Service Description:__ 	A service to extract scientific names from URL of a web page using Global Names Recognition and Discovery (GNRD) services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/fn/names_url>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">url</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  an encoded URL for a web page, PDF, Microsoft Office document, or image file from which scientific names need to be extracted.
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">engine</span> 
  * __Category:__  	optional
  * __Data Type:__  integer
  * __Description:__  a integer value to specify which search engine (_TaxonFinder_ or _NetiNeti_) to use. By default it is `0` which means it will use both engines. Value `1` means TaxonFinder and value `2` means NetiNeti.
 				
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/fn/names_url?url=https://en.wikipedia.org/wiki/Plain_pigeon&engine=1
```

2. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/fn/names_url?url=https://www.fws.gov/westvirginiafieldoffice/PDF/beechridgehcp/Appendix_D_Table_D-1.pdf
```

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"input_url": "https://en.wikipedia.org/wiki/Plain_pigeon",
	"meta_data": {
		"execution_time": 1.33,
		"creation_time": "2017-10-18T15:01:40.552183",
		"source_urls": [
			"https://gnrd.globalnames.org/"
		]
	},
	"total_names": 9,
	"scientificNames": [
		"Patagioenas inornata wetmorei",
		"Animalia",
		"Chordata",
		"Aves",
		"Columbiformes",
		"Columbidae",
		"Patagioenas",
		"Patagioenas inornata",
		"Columba inornata"
	],
	"message": "Success",
	"gnrd_parameters": {
		"engine": 1,
		"best_match_only": false,
		"data_source_ids": [],
		"detect_language": true,
		"preferred_data_sources": [],
		"all_data_sources": false,
		"return_content": false
	}
}
```
2. 
```json
{
	"status_code": 200,
	"input_url": "https://www.fws.gov/westvirginiafieldoffice/PDF/beechridgehcp/Appendix_D_Table_D-1.pdf",
	"meta_data": {
		"execution_time": 1.95,
		"creation_time": "2017-10-18T15:03:58.433858",
		"source_urls": [
			"https://gnrd.globalnames.org/"
		]
	},
	"total_names": 153,
	"scientificNames": [
		"Menziesia pilosa",
		"Fagus grandifolia",
		"Sorbus americana",
		"Lolium multiflorum",
		"Elaeagnus umbellata",
		"Prunus serotina",
		"Robinia pseudoacacia",
		"Rubus",
		"Lespedeza",
		"Prunus",
		"Trifolium",
		"Magnolia acuminata",
		"Tsuga canadensis",
		"Sambucus",
		"Schedonorus phoenix",
		"Alliaria petiolata",
		"Solidago",
		"Smilax",
		"Microstegium vimineum",
		"Impatiens capensis",
		"Pueraria montana var. lobata",
		"Multiflora",
		"Tulip poplar",
		"Trifolium pratense",
		"Lonicera morrowii",
		"Kalmia latifolia",
		"Acer spicatum",
		"Rosa multiflora",
		"Quercus",
		"Lolium perenne",
		"Pinus",
		"Festuca rubra",
		"Quercus rubra",
		"Picea rubens",
		"Betula alleghaniensis",
		"Arabis serotina",
		"Isotria medeoloides",
		"Urtica dioica",
		"Acer pensylvanicum",
		"Acer saccharum",
		"Ailanthus altissima",
		"Liriodendron tulipifera",
		"Micropterus",
		"Salvelinus fontinalis",
		"Etheostoma osburni",
		"Etheostoma",
		"Ambloplites rupestris",
		"Cottus",
		"Plethodon nettingi",
		"Empidonax alnorum",
		"Vermivora chrysoptera",
		"Corvus brachyrhynchos",
		"Dumetella carolinensis",
		"Falco sparverius",
		"Catharus minimus",
		"Setophaga ruticilla",
		"Setophaga citrina",
		"Turdus migratorius",
		"Passerina cyanea",
		"Scolopax minor",
		"Geothlypis formosa",
		"Haliaeetus leucocephalus",
		"Anas platyrhynchos",
		"Strix vari",
		"Oreothlypis ruficapilla",
		"Setophaga castanea",
		"Accipiter gentilis",
		"Coragyps atratus",
		"Circus cyaneus",
		"Mniotilta varia",
		"Pandion haliaetus",
		"Coccyzus erythropthalmus",
		"Seiurus aurocapilla",
		"Setophaga fusca",
		"Setophaga discolor",
		"Setophaga caerulescens",
		"Loxia curvirostra",
		"Setophaga virens",
		"Vireo olivaceus",
		"Cyanocitta cristata",
		"Vermivora cyanoptera",
		"Melanerpes erythrocephalus",
		"Buteo lineatus",
		"Buteo platypterus",
		"Buteo jamaicensis",
		"Toxostoma rufum",
		"Buteo lagopus",
		"Molothrus ater",
		"Bonasa umbellus",
		"Cardellina canadensis",
		"Accipiter striatus",
		"Bombycilla cedrorum",
		"Melospiza melodia",
		"Setophaga cerulea",
		"Cyanocitta stelleri",
		"Setophaga pensylvanica",
		"Catharus ustulatus",
		"Spizella passerina",
		"Limnothlypis swainsonii",
		"Quiscalus quiscula",
		"Cathartes aura",
		"Chordeiles minor",
		"Catharus fuscescens",
		"Accipiter cooperii",
		"Pooecetes gramineus",
		"Junco hyemalis",
		"Aphelocoma californica",
		"Tyrannus tyrannus",
		"Caprimulgus vociferus",
		"Megascops asio",
		"Aix sponsa",
		"Pipilo erythrophthalmus",
		"Hylocichla mustelina",
		"Sturnus vulgaris",
		"Empidonax flaviventris",
		"Spizella pusilla",
		"Icteria virens",
		"Aquila chrysaetos",
		"Setophaga coronata",
		"Eptesicus fuscus",
		"Myotis lucifugus",
		"Ursus americanus",
		"Zapus hudsonius",
		"Lynx rufus",
		"Eptesicus nilssonii",
		"Tadarida brasiliensis",
		"Myotis septentrionalis",
		"Otospermophilus beecheyi",
		"Sorex palustris albibarbis",
		"Canis latrans",
		"Procyon lotor",
		"Peromyscus maniculatus",
		"Corynorhinus rafinesquii",
		"Cervus canadensis canadiensis",
		"Lasiurus borealis",
		"Lasiurus seminolus",
		"Myotis leibii",
		"Lasionycteris noctivagans",
		"Nycticeius humeralis",
		"Lepus americanus",
		"Glaucomys",
		"Sciurus niger",
		"Myotis grisescens",
		"Sciurus carolinensis",
		"Lasiurus cinereus",
		"Pipistrellus subflavus",
		"Corynorhinus townsendii virginianus",
		"Mustela",
		"Glaucomys sabrinus fuscus",
		"Odocoileus virginianus",
		"Myotis sodalis",
		"Bison bison athabascae",
		"Sciurus vulgaris"
	],
	"message": "Success",
	"gnrd_parameters": {
		"engine": 0,
		"best_match_only": false,
		"data_source_ids": [],
		"detect_language": true,
		"preferred_data_sources": [],
		"all_data_sources": false,
		"return_content": false
	}
}
```

__Citation/Source:__  	 		https://gnrd.globalnames.org/

__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source web service_)
 * *Restrictions on scope:*     __accepts only valid URL inputs__ 
 * *Expected response time:*  	__1s~10s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. ulr)       | 400   | Error: Missing parameter '_parameter name_'        | 
   | Invalid method name in resource URI (e.g. /nme_url)       | 404   | Error: Could not find the requested resource URI        | 
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientificNames_) will be an empty list.

Go to [__Scientific Name Extraction__](#nameextraction).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	<a name="gnrdtext"></a>GNRD_wrapper_text

__Service Description:__ 	A service to extract scientific names on free-form text using Global Names Recognition and Discovery (GNRD) services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/fn/names_text>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">text</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  text from which scientific names need to be extracted.
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">engine</span> 
  * __Category:__  	optional
  * __Data Type:__  integer
  * __Description:__  a integer value to specify which search engine (_TaxonFinder_ or _NetiNeti_) to use. By default it is `0` which means it will use both engines. Value `1` means TaxonFinder and value `2` means NetiNeti.
 				
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/fn/names_text?text=The lemon dove (Columba larvata) is a species of bird in the pigeon family Columbidae found in montane forests of sub-Saharan Africa.&engine=2
```
2. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/fn/names_text?text=Formica polyctena is a species of European red wood ant in the genus Formica. The pavement ant, Tetramorium caespitum is an ant native to Europe. Pseudomyrmex is a genus of stinging, wasp-like ants. Adetomyrma venatrix is an endangered species of ants endemic to Madagascar. Carebara diversa is a species of ants in the subfamily Formicinae. It is found in many Asian countries.
```

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"meta_data": {
		"execution_time": 1.05,
		"creation_time": "2017-10-18T17:48:09.949718",
		"source_urls": [
			"https://gnrd.globalnames.org/"
		]
	},
	"total_names": 2,
	"scientificNames": [
		"Columba larvata",
		"Columbidae"
	],
	"message": "Success",
	"gnrd_parameters": {
		"engine": 2,
		"best_match_only": false,
		"data_source_ids": [],
		"detect_language": true,
		"preferred_data_sources": [],
		"all_data_sources": false,
		"return_content": false
	},
	"input_text": "The lemon dove (Columba larvata) is a species of bird in the pigeon family Columbidae found in montane forests of sub-Saharan Africa."
}
``` 

2. 
```json
{
	"status_code": 200,
	"meta_data": {
		"execution_time": 0.93,
		"creation_time": "2017-10-18T17:49:32.614705",
		"source_urls": [
			"https://gnrd.globalnames.org/"
		]
	},
	"total_names": 6,
	"scientificNames": [
		"Formica polyctena",
		"Tetramorium caespitum",
		"Pseudomyrmex",
		"Adetomyrma venatrix",
		"Carebara diversa",
		"Formicinae"
	],
	"message": "Success",
	"gnrd_parameters": {
		"engine": 0,
		"best_match_only": false,
		"data_source_ids": [],
		"detect_language": true,
		"preferred_data_sources": [],
		"all_data_sources": false,
		"return_content": false
	},
	"input_text": "Formica polyctena is a species of European red wood ant in the genus Formica. The pavement ant, Tetramorium caespitum is an ant native to Europe. Pseudomyrmex is a genus of stinging, wasp-like ants. Adetomyrma venatrix is an endangered species of ants endemic to Madagascar. Carebara diversa is a species of ants in the subfamily Formicinae. It is found in many Asian countries."
}
```

__Citation/Source:__  	 		https://gnrd.globalnames.org/

__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source web service_)
 * *Restrictions on scope:*     __accepts english text content as input__ 
 * *Expected response time:*  	__0.5s~10s__
 * *Informative message/status:*
  
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. txt)       | 400   | Error: Missing parameter '_parameter name_'        | 
   | Invalid method name in resource URI (e.g. /nme_txt)       | 404   | Error: Could not find the requested resource URI        | 
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientificNames_) will be an empty list.

Go to [__Scientific Name Extraction__](#nameextraction).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	<a name="gnrdfile"></a>GNRD_wrapper_file

__Service Description:__ 	A service to extract scientific names from a file(e.g. text, PDF, Microsoft Office documents, images) using Global Names Recognition and Discovery (GNRD) services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/fn/names_file>

__HTTP Method:__ 		POST

__Input Format:__ 		Content-Encoding: "multipart/form-data"

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">inputFile</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  path to the location of the file (e.g. @/to/local/file.txt)
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">engine</span> 
  * __Category:__  	optional
  * __Data Type:__  integer
  * __Description:__  a integer value to specify which search engine (_TaxonFinder_ or _NetiNeti_) to use. By default it is `0` which means it will use both engines. Value `1` means TaxonFinder and value `2` means NetiNeti.
 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/fn/names_file -F 'inputFile=@scnames.txt' -F 'engine=2'
```

2. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/fn/names_file -F 'inputFile=@hipmctn12481.pdf' -F 'engine=1'
```

__Example Results:__

1. 
```json
{
	"status_code": 200, 
	"input_url": "https://phylo.cs.nmsu.edu:8080/upload/scnames.txt", 
	"scientificNames": [
		"Formicidae", 
		"Solenopsis invicta", 
		"Apoidea", 
		"Sphecomyrma", 
		"Sphecomyrminae", 
		"Leptanillinae", 
		"Martialinae"
		], 	 	 
	"meta_data": {
		"execution_time": 0.57, 
		"creation_time": "2017-12-07T09:55:35.779422", 
		"source_urls": ["https://gnrd.globalnames.org/"]
	}, 
	"total_names": 7, 
	"message": "Success", 
	"gnrd_parameters": {
		"engine": 2, 
		"best_match_only": false, 
		"data_source_ids": [], 
		"detect_language": true, 
		"preferred_data_sources": [], 
		"all_data_sources": false, 
		"return_content": false
	}
}
``` 

2. 
```json
{"status_code": 200, "input_url": "https://phylo.cs.nmsu.edu:8080/upload/hipmctn12481.pdf", "scientificNames": ["Acacia koa", "Acacia koaia", "Acacia mangium", "Acalypha", "Ajuga reptans", "Aleurites moluccana", "Alpinia zerumbet", "Arachis glabrata", "Arachis pintoi", "Araucaria columnaris", "Araucaria heterophylla", "Artocarpus altilis", "Artocarpus", "Atriplex semibaccata", "Avena sativa", "Axonopus affinis", "Axonopus fissifolius", "Axonopus compressus", "Azadirachta indica", "Bambusa", "Bougainvillea spectabilis", "Bromus inermis", "Bromus wildenowii", "Cajanus cajan", "Callitris", "Calophyllum inophyllum", "Canthium odoratum", "Psydrax odorata", "Caryota mitis", "Casuarina cunninghamiana", "Casuarina equisetifolia", "Cenchrus ciliaris", "Pennisetum ciliare", "Chenopodium oahuense", "Chloris gayana", "Chrysalidocarpus", "Chrysopogon zizanioides", "Vetiveria zizanioides", "Cibotium menziesii", "Citrus", "Cocos nucifera", "Codium variegatum", "Coix lachryma", "Cordia subcordata", "Cordyline fruticosa", "Crotalaria juncea", "Croton reflexifolius", "Cunninghamia lanceolata", "Cupressus lusitanica", "Cupressus macrocarpa", "Cupressus", "Cymbopogon citratus", "Cynodon dactylon", "Cynodon nlemfuensis", "Cyperus javanicus", "Cyperus polystachyos", "Dactylis glomerata", "Desmodium heterophyllum", "Desmodium intortum", "Desmodium aparines", "Desmodium triflorum", "Dichondra repens", "Digitaria eriantha", "Dimorphotheca sinuata", "Dodonaea viscosa", "Dracaena fragans", "Echinochloa colona", "Echinochloa crus-galli", "Eleocharis geniculata", "Eragrostis variabilis", "Eremochloa ophiuroides", "Erythrina sandwicensis", "Erythrina variegata", "Eucalyptus camaldulensis", "Eucalyptus dunnii", "Eucalyptus robusta", "Eucalyptus", "Fagopyrum esculentum", "Filicium decipiens", "Fimbristylis littoralis", "Flueggea flexuosa", "Fragaria chiloensis", "Gliricidia sepium", "Glycine max", "Gossypium tomentosum", "Hemarthria altissima", "Hemerocallis aurantiaca", "Hibiscus arnottianus", "Hibiscus rosa-sinensis", "Intsia bijuga", "Ipomea pes-caprae", "Ischaemum polystachyum", "Ischaemum digitatum", "Jacquemontia ovalifolia subsp. sandwicensis", "Juncus effusus", "Lablab purpureus", "Lippia nodiflora", "Lolium multiflorum", "Lolium perenne", "Lophostemon confertus", "Tristania conferta", "Lotus pedunculatus", "Lycium sandwicense", "Medicago sativa", "Metrosideros polymorpha", "Morinda citrifolia", "Myoporum sandwicense", "Nerium oleander", "Opuntia ficus-indica", "Oryza sativa", "Osteomeles anthyllidifolia", "Osteospermum fruticosum", "Pandanus tectorius", "Paspalum hieronymii", "Paspalum orbiculare", "Paspalum vaginatum", "Pennisetum purpureum", "Pennisetum glaucum", "Persea americana", "Piper methysticum", "Plumeria obtusa", "Podocarpus", "Polygonum minus var. procerum", "Polyscias guilfoylei", "Nothopanax guilfoylei", "Portulaca grandiflora", "Pouteria sandwicensis", "Premna obtusifolia", "Premna serratifolia", "Pritchardia", "Ptychosperma macarthurii", "Rumex acetosella", "Saccharum", "Samanea saman", "Albizia saman", "Sapindus saponaria", "Scaevola sericea", "Scirpus maritimus var. paludosus", "Scleria", "Secale cereale", "Senna guadichaudii", "Sesbania tomentosa", "Sesbania tomentosa f. arborea", "Setaria verticillata", "Sida fallax", "Sophora chrysophylla", "Sorghum bicolor", "Sporobolus virginicus", "Stenotaphrum", "Stylosanthes scabra", "Styphelia tameiameiae", "Swietenia macrophylla", "Swietenia mahagoni", "Syzygium paniculatum", "Eugenia myrtifolia", "Tabebuia heterophylla", "Tamarindus indica", "Terminalia catappa", "Thespesia populnea", "Tournefortia argentea", "Tradescantia spathacea", "Trifolium repens", "Triticum aestivum", "Urochloa brizantha", "Brachiaria brizantha", "Urochloa maxima", "Panicum maximum var. trichoglume", "Panicum maximum", "Vaccinium reticulatum", "Vicia villosa ssp. varia", "Vigna marina", "Vigna unguiculata", "Vitex rotundifolia", "Vitex ovata", "Vitex trifolia var. variegata", "Waltheria indica", "Wikstroemia uva-ursi", "Zea mays", "Zoysia japonica", "Canthium", "Aleurites molucana", "Artocarpus heterophyllum", "Casuarina", "Cibotium", "Coccoloba uvifera", "Dracaena fragrans", "Heteropogon contortus", "Hibiscus", "Melilotus", "Hala", "Scirpus maritimus var. paludosus makai", "S. bicolor", "Vigna"], "meta_data": {"execution_time": 2.79, "creation_time": "2017-12-07T09:54:33.876151", "source_urls": ["https://gnrd.globalnames.org/"]}, "total_names": 193, "message": "Success", "gnrd_parameters": {"engine": 1, "best_match_only": false, "data_source_ids": [], "detect_language": true, "preferred_data_sources": [], "all_data_sources": false, "return_content": false}}
```

__Citation/Source:__  	 		https://gnrd.globalnames.org/

__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source web service_)
 * *Restrictions on scope:*     __accepts files (text, pdf, images, doc) as input__ 
 * *Expected response time:*  	__0.5s~10s__
 * *Informative message/status:*
  
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. txt)       | 400   | Error: Missing parameter '_parameter name_'        | 
   | Invalid method name in resource URI (e.g. /nme_txt)       | 404   | Error: Could not find the requested resource URI        | 
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientificNames_) will be an empty list.

Go to [__Scientific Name Extraction__](#nameextraction).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	<a name="taxonfindurl"></a>TaxonFinder_wrapper_URL

__Service Description:__ 	A service to extract scientific names from URL of a web page using TaxonFinder API.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/fn/tf/names_url>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">url</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  an encoded URL for a web page from which scientific names need to be extracted.
 				
 				
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/fn/tf/names_url?url=https://en.wikipedia.org/wiki/Monkey
```


__Example Results:__

1. 
```json
{
	"status_code": 200,
	"input_url": "https://en.wikipedia.org/wiki/Monkey",
	"meta_data": {
		"execution_time": 0.54,
		"creation_time": "2018-01-15T18:10:22.052341",
		"source_urls": [
			"https://taxonfinder.org/"
		]
	},
	"total_names": 53,
	"scientificNames": [
		"Macaca sinica",
		"Animalia",
		"Chordata",
		"Mammalia",
		"Haplorhini",
		"Simiiformes",
		"Callitrichidae",
		"Cebidae",
		"Aotidae",
		"Pitheciidae",
		"Atelidae",
		"Cercopithecidae",
		"Hominoidea",
		"Cercopithecoidea",
		"Aegyptopithecus",
		"Parapithecus",
		"Strepsirrhini",
		"Tarsiiformes",
		"Tarsiidae",
		"Platyrrhini",
		"Catarrhini",
		"Hylobatidae",
		"Hominidae",
		"Amphipithecidae",
		"Proteopithecus sylviae",
		"Parapithecoidea",
		"Chilecebus",
		"Tremacebus",
		"Dolichocebus",
		"Oligopithecidae",
		"Propliopithecoidea",
		"Pliopithecoidea",
		"Dendropithecidae",
		"Proconsulidae",
		"Equatorius",
		"Morotopithecus",
		"Afropithecus",
		"Nyanzapithecinae",
		"Macaca radiata",
		"Callimico goeldii",
		"Saimiri sciureus",
		"Macaca fascicularis",
		"Macaca fuscata",
		"Simia",
		"Anthropoidea",
		"Gorilla",
		"Colobus",
		"Octopus",
		"Pitar dione",
		"Archaeopteryx",
		"Amanita muscaria",
		"Agaricus bisporus",
		"Baso"
	],
	"message": "Success"
}
```

__Citation/Source:__  	 		http://taxonfinder.org/

__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source web service_)
 * *Restrictions on scope:*     __accepts only valid URL inputs__ 
 * *Expected response time:*  	__1s~10s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. ulr)       | 400   | Error: Missing parameter '_parameter name_'        | 
   | Invalid method name in resource URI (e.g. /nme_url)       | 404   | Error: Could not find the requested resource URI        | 
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientificNames_) will be an empty list.

Go to [__Scientific Name Extraction__](#nameextraction).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	<a name="taxonfindtext"></a>TaxonFinder_wrapper_text

__Service Description:__ 	A service to extract scientific names on free-form text using TaxonFinder API.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/fn/tf/names_text>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">text</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  text from which scientific names need to be extracted.
 				
 				
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/fn/tf/names_text?text=Acanthodians are often referred to as spiny sharks,though they are not part of Chondrichthyes proper, they are a paraphyletic assemblage leading to cartilaginous fish as a whole. Since then, sharks have diversified into over 500 species. They range in size from the small dwarf lanternshark (Etmopterus perryi), a deep sea species of only 17 centimetres in length, to the whale shark Rhincodon typus, the largest fish in the world, which reaches approximately 12 metres in length. 
```

__Example Results:__

1. 
```json
{
    "status_code":200,
    "message":"Success",
    "meta_data":{
        "execution_time":0.13,
        "creation_time":"2018-01-15T18:25:00.506087",
        "source_urls":[
            "https://taxonfinder.org/"
        ]
    },
    "total_names":3,
    "scientificNames":[
        "Chondrichthyes",
        "Etmopterus perryi",
        "Rhincodon"
    ]
} 
```

__Citation/Source:__  	 		http://taxonfinder.org/

__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source web service_)
 * *Restrictions on scope:*     __accepts english text content as input__ 
 * *Expected response time:*  	__0.5s~10s__
 * *Informative message/status:*
  
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. txt)       | 400   | Error: Missing parameter '_parameter name_'        | 
   | Invalid method name in resource URI (e.g. /nme_txt)       | 404   | Error: Could not find the requested resource URI        | 
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientificNames_) will be an empty list.

Go to [__Top__](#servicesdocumentation).

Go to [__Scientific Name Extraction__](#nameextraction).

---

## <a name="tnrs"></a>Taxonomic Name Resolution


   | Service Name |  Summary | 
   | :----------- | ---------: | 
   | [OToL_TNRS_wrapper](#tnrsot) | Resolves scientific names using Open Tree of Life Taxonomic name resolution services. | 
   | [GNR_TNRS_wrapper](#tnrsgnr) | Resolves scientific names against known taxonomy sources using Global Names Resolution services. |
   | [iPlant_TNRS_wrapper](#tnrsip) | Resolves scientific names (of plants) using iPlant Collaborative services. |




__Service Name:__  	 		<a name="tnrsot"></a>OToL_TNRS_wrapper

__Service Description:__ 	A service which resolves scientific names using Open Tree of Life Taxonomic name resolution services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/ot/resolve>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json

__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">names</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  one or more scientific names to be resolved delimited by pipe "|".
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">fuzzy_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to perform approximate string (a.k.a. "fuzzy") matching. By default, it is `false`. To turn on "fuzzy" matching `true` must be used. 

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results when fuzzy matching is turned on. By default it is `false`. If fuzzy matching is turned on and _multiple_match_ is enabled (`true`), then the service will return results of matches with score more than `0.75`.
 				
__Example Commands/Requests:__

1. 

```
https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/ot/resolve?names=Formica polyctena|Formica exsectoides|Formica pecefica
```
2. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/ot/resolve?names=Pinus resionosa|Meli officinalis&fuzzy_match=true&multiple_match=true
```

__Example Results:__

1. 
```json
{
	"input_names": [
		"Formica polyctena",
		"Formica exsectoides",
		"Formica pecefica"
	],
	"status_code": 200,
	"resolvedNames": [
		{
			"matched_results": [
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Exact",
					"match_score": 1.0,
					"matched_name": "Formica polyctena",
					"search_string": "formica polyctena",
					"synonyms": [
						"Formica polyctenum",
						"Formica polyctena"
					],
					"taxon_id": 815730
				}
			],
			"input_name": "Formica polyctena"
		},
		{
			"matched_results": [
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Exact",
					"match_score": 1.0,
					"matched_name": "Formica exsectoides",
					"search_string": "formica exsectoides",
					"synonyms": [
						"Formica exsectoides"
					],
					"taxon_id": 3261265
				}
			],
			"input_name": "Formica exsectoides"
		}
	],
	"meta_data": {
		"execution_time": 0.79,
		"creation_time": "2017-10-18T18:56:40.441870",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tnrs"
		]
	},
	"total_names": 2,
	"message": "Success"
}
```
2. 
```json
{
	"input_names": [
		"Pinus resionosa",
		"Meli officinalis"
	],
	"status_code": 200,
	"resolvedNames": [
		{
			"matched_results": [
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Melissa officinalis",
					"search_string": "meli officinalis",
					"synonyms": [
						"Faucibarba officinalis",
						"Mutelia officinalis",
						"Thymus melissa",
						"Melissa officinalis"
					],
					"taxon_id": 355945
				},
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.8125,
					"matched_name": "Sepia officinalis",
					"search_string": "meli officinalis",
					"synonyms": [
						"Sepia zebrina",
						"Sepia mediterranea",
						"Sepia fischeri",
						"Sepia filliouxi",
						"Sepia officinalis",
						"Sepia vicellius",
						"Sepia rugosa",
						"Sepia officinalis subsp. mediterranea"
					],
					"taxon_id": 528817
				},
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Malva officinalis",
					"search_string": "meli officinalis",
					"synonyms": [
						"Althaea officinalis subsp. micrantha",
						"Althaea pulchra",
						"Althaea sublobata",
						"Althaea taurinensis",
						"Althaea officinalis var. pseudoarmeniaca",
						"Malva althaea",
						"Althaea officinalis subsp. pseudoarmeniaca",
						"Althaea officinalis",
						"Althaea villosa",
						"Althaea villosoides",
						"Althaea balearica",
						"Malva maritima",
						"Althaea micrantha",
						"Malva officinalis"
					],
					"taxon_id": 643492
				},
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Mutelia officinalis",
					"search_string": "meli officinalis",
					"synonyms": [
						"Faucibarba officinalis",
						"Mutelia officinalis",
						"Thymus melissa",
						"Melissa officinalis"
					],
					"taxon_id": 355945
				}
			],
			"input_name": "Meli officinalis"
		},
		{
			"matched_results": [
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.8571428571428571,
					"matched_name": "Pinus resinosa",
					"search_string": "pinus resionosa",
					"synonyms": [
						"Pinus resinosa",
						"Pinus rubra"
					],
					"taxon_id": 81207
				},
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.8571428571428571,
					"matched_name": "Pinus resinosa",
					"search_string": "pinus resionosa",
					"synonyms": [
						"Pinus hartwegii",
						"Pinus donnell-smithii",
						"Pinus frondosa",
						"Pinus tlamacaensis",
						"Pinus krelagii",
						"Pinus suffruticosa",
						"Pinus atrovirens",
						"Pinus corrugata",
						"Pinus montezumae var. hartwegii",
						"Pinus standishii",
						"Pinus roezlii",
						"Pinus lowii",
						"Pinus decaisneana var. wilsonii",
						"Pinus hartwegii var. rudis",
						"Pinus resinosa",
						"Pinus aculcensis",
						"Pinus wilsonii",
						"Pinus endlicheriana",
						"Pinus northumberlandiana",
						"Pinus robusta",
						"Pinus amecaensis",
						"Pinus lindleyana",
						"Pinus iztacihuatlii",
						"Pinus montezumae var. lindleyana",
						"Pinus papeleuii",
						"Pinus montezumae var. rudis",
						"Pinus ehrenbergii",
						"Pinus rudis",
						"Pinus scoparia",
						"Pinus decandolleana var. ehrenbergii",
						"Pinus montezumae subsp. hartwegii"
					],
					"taxon_id": 212471
				}
			],
			"input_name": "Pinus resionosa"
		}
	],
	"meta_data": {
		"execution_time": 5.41,
		"creation_time": "2017-10-18T19:49:25.143588",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tnrs"
		]
	},
	"total_names": 2,
	"message": "Success"
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/ot/names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">scientificNames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of scientific names to be resolved.
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">fuzzy_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to perform approximate string (a.k.a. "fuzzy") matching. By default, it is `false`. To turn on "fuzzy" matching `true` must be used. 

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results when fuzzy matching is turned on. By default it is `false`. If fuzzy matching is turned on and _multiple_match_ is enabled (`true`), then the service will return results of matches with score more than `0.75`.
 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/ot/names" -H "content-type:application/json" -d '{"scientificNames": ["Setophaga striata","Setophaga megnolia","Setophaga angilae","Setophaga plumbea","Setophaga virens"],"fuzzy_match":true}'
``` 

__Example Results:__

1. 
```json
{
	"input_names": [
		"Setophaga striata",
		"Setophaga megnolia",
		"Setophaga angilae",
		"Setophaga plumbea",
		"Setophaga virens"
	],
	"status_code": 200,
	"resolvedNames": [
		{
			"matched_results": [
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.8888888888888888,
					"matched_name": "Setophaga magnolia",
					"search_string": "setophaga megnolia",
					"synonyms": [
						"Setophaga magnolia",
						"Dendroica magnolia",
						"? magnolia"
					],
					"taxon_id": 532751
				}
			],
			"input_name": "Setophaga megnolia"
		},
		{
			"matched_results": [
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Exact",
					"match_score": 1.0,
					"matched_name": "Setophaga plumbea",
					"search_string": "setophaga plumbea",
					"synonyms": [
						"Setophaga plumbea",
						"Dendroica plumbea"
					],
					"taxon_id": 45750
				}
			],
			"input_name": "Setophaga plumbea"
		},
		{
			"matched_results": [
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.8823529411764706,
					"matched_name": "Setophaga angelae",
					"search_string": "setophaga angilae",
					"synonyms": [
						"Dendroica angelae",
						"Setophaga angelae"
					],
					"taxon_id": 381849
				}
			],
			"input_name": "Setophaga angilae"
		},
		{
			"matched_results": [
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Exact",
					"match_score": 1.0,
					"matched_name": "Setophaga striata",
					"search_string": "setophaga striata",
					"synonyms": [
						"Dendroica striata",
						"? striata",
						"Setophaga striata"
					],
					"taxon_id": 60236
				}
			],
			"input_name": "Setophaga striata"
		},
		{
			"matched_results": [
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Exact",
					"match_score": 1.0,
					"matched_name": "Setophaga virens",
					"search_string": "setophaga virens",
					"synonyms": [
						"Dendroica virens subsp. virens",
						"? virens",
						"Dendroica virens",
						"Dendroica virens subsp. waynei",
						"Setophaga virens"
					],
					"taxon_id": 1014098
				}
			],
			"input_name": "Setophaga virens"
		}
	],
	"meta_data": {
		"execution_time": 6.00,
		"creation_time": "2017-10-18T20:12:15.171086",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tnrs"
		]
	},
	"total_names": 5,
	"message": "Success"
}
```

__Citation/Source:__  	 		https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tnrs

__Service Quality:__

 * *Restrictions on capacity:*  __maximum `1000` names allowed__ 
 * *Expected response time:*  	__1s~30s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. sc_name)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently more than 1000 names is not supported        |
   | Invalid method name in resource URI (e.g. /name)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |


  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_resolvedNames_) will be an empty list.

Go to [__Top__](#servicesdocumentation).

Go to [__Taxonomic Name Resolution__](#tnrs).

---

__Service Name:__  	 		<a name="tnrsgnr"></a>GNR_TNRS_wrapper

__Service Description:__ 	A service which resolves scientific names against known taxonomy sources using Global Names Resolution services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/gnr/resolve>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json

__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">names</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  one or more scientific names to be resolved delimited by pipe "|".
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">fuzzy_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to perform approximate string (a.k.a. "fuzzy") matching. By default, it is `false`. To turn on "fuzzy" matching `true` must be used. 

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results when fuzzy matching is turned on. By default it is `false`. If fuzzy matching is turned on and _multiple_match_ is enabled (`true`), then the service will return results of matches with score more than `0.75`.
 				
__Example Commands/Requests:__

1. 

```
https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/gnr/resolve?names=Formica%20pecefica&fuzzy_match=true&multiple_match=true
```

__Example Results:__

1. 

```json
{
	"input_names": [
		"Formica pecefica"
	],
	"status_code": 200,
	"resolvedNames": [
		{
			"matched_results": [
				{
					"data_source": "Catalogue of Life",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "2f41fe085d8ff5d5bb75e520d0a692de"
				},
				{
					"data_source": "ITIS",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "576854"
				},
				{
					"data_source": "NCBI",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "609847"
				},
				{
					"data_source": "Interim Register of Marine and Nonmarine Genera",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "10920253"
				},
				{
					"data_source": "GBIF Backbone Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "1315056"
				},
				{
					"data_source": "EOL",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "33847491"
				},
				{
					"data_source": "EOL",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "20639408"
				},
				{
					"data_source": "EOL",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "28015733"
				},
				{
					"data_source": "AntWeb",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "105695350"
				},
				{
					"data_source": "nlbif",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "131429640"
				},
				{
					"data_source": "Index to Organism Names",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "126834498"
				},
				{
					"data_source": "Index to Organism Names",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "127538181"
				},
				{
					"data_source": "uBio NameBank",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "94022877"
				},
				{
					"data_source": "uBio NameBank",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "95837151"
				},
				{
					"data_source": "uBio NameBank",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "102401655"
				},
				{
					"data_source": "Arctos",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "1951521"
				},
				{
					"data_source": "Open Tree of Life Reference Taxonomy",
					"match_type": "Fuzzy",
					"match_score": 0.75,
					"matched_name": "Formica pacifica",
					"search_string": "Formica pecefica",
					"synonyms": [],
					"taxon_id": "3261024"
				}
			],
			"input_name": "Formica pecefica"
		}
	],
	"meta_data": {
		"execution_time": 0.54,
		"creation_time": "2017-10-18T21:25:32.366358",
		"source_urls": [
			"https://resolver.globalnames.org/"
		]
	},
	"total_names": 1,
	"gnr_parameters": {
		"with_vernaculars": false,
		"best_match_only": false,
		"data_sources": [],
		"with_context": false,
		"header_only": false,
		"resolve_once": false,
		"preferred_data_sources": [],
		"with_canonical_ranks": false
	},
	"message": "Success"
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/gnr/names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">scientificNames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of scientific names to be resolved.
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">fuzzy_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to perform approximate string (a.k.a. "fuzzy") matching. By default, it is `false`. To turn on "fuzzy" matching `true` must be used. 

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results when fuzzy matching is turned on. By default it is `false`. If fuzzy matching is turned on and _multiple_match_ is enabled (`true`), then the service will return results of matches with score more than `0.75`.
 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/gnr/names" -H "content-type:application/json" -d '{"scientificNames": ["Rana Temporaria"],"fuzzy_match":true, "multiple_match":false}'
``` 

__Example Results:__

1. 
```json
{
	"input_names": [
		"Rana Temporaria"
	],
	"status_code": 200,
	"resolvedNames": [
		{
			"matched_results": [
				{
					"data_source": "NCBI",
					"match_type": "Exact",
					"match_score": 0.988,
					"matched_name": "Rana temporaria",
					"search_string": "Rana Temporaria",
					"synonyms": [],
					"taxon_id": "8407"
				}
			],
			"input_name": "Rana Temporaria"
		}
	],
	"meta_data": {
		"execution_time": 0.74,
		"creation_time": "2017-10-18T21:51:58.633393",
		"source_urls": [
			"https://resolver.globalnames.org/"
		]
	},
	"total_names": 1,
	"gnr_parameters": {
		"with_vernaculars": false,
		"best_match_only": false,
		"data_sources": [],
		"with_context": false,
		"header_only": false,
		"resolve_once": false,
		"preferred_data_sources": [],
		"with_canonical_ranks": false
	},
	"message": "Success"
}
```

__Citation/Source:__		https://resolver.globalnames.org/

__Service Quality:__

 * *Restrictions on capacity:*  __maximum `1000` names allowed__
 * *Expected response time:*  	__1s~30s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. sc_name)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently more than 1000 names is not supported        |
   | Invalid method name in resource URI (e.g. /name)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_resolvedNames_) will be an empty list.

Go to [__Taxonomic Name Resolution__](#tnrs).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 		<a name="tnrsip"></a>iPlant_TNRS_wrapper

__Service Description:__ 	A service which resolves scientific names (of plants) using iPlant Collaborative services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/ip/resolve>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json

__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">names</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  one or more scientific names to be resolved delimited by pipe "|".
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">fuzzy_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to perform approximate string (a.k.a. "fuzzy") matching. By default, it is `false`. To turn on "fuzzy" matching `true` must be used. 

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results when fuzzy matching is turned on. By default it is `false`. If fuzzy matching is turned on and _multiple_match_ is enabled (`true`), then the service will return results of matches with score more than `0.50`.
 				
__Example Commands/Requests:__

1. 

```
https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/ip/resolve?names=Acanthophyllum albidum|Acanthostachys pitcairnioides|Acanthostyles buniifolius&fuzzy_match=true&multiple_match=false
```

__Example Results:__

1. 

```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 0.39,
		"creation_time": "2018-01-24T18:36:14.819772",
		"source_urls": [
			"https://tnrs.iplantcollaborative.org"
		]
	},
	"total_names": 3,
	"resolvedNames": [
		{
			"matched_results": [
				{
					"data_source": "Tropicos - Missouri Botanical Garden",
					"match_type": "Exact",
					"match_score": 1.0,
					"matched_name": "Acanthophyllum albidum",
					"search_string": "Acanthophyllum albidum",
					"synonyms": [],
					"taxon_id": "6302165"
				}
			],
			"input_name": "Acanthophyllum albidum"
		},
		{
			"matched_results": [
				{
					"data_source": "Tropicos - Missouri Botanical Garden",
					"match_type": "Exact",
					"match_score": 1.0,
					"matched_name": "Acanthostachys pitcairnioides",
					"search_string": "Acanthostachys pitcairnioides",
					"synonyms": [],
					"taxon_id": "50038733"
				}
			],
			"input_name": "Acanthostachys pitcairnioides"
		},
		{
			"matched_results": [
				{
					"data_source": "Tropicos - Missouri Botanical Garden",
					"match_type": "Exact",
					"match_score": 1.0,
					"matched_name": "Acanthostyles buniifolius",
					"search_string": "Acanthostyles buniifolius",
					"synonyms": [],
					"taxon_id": "2712077"
				}
			],
			"input_name": "Acanthostyles buniifolius"
		}
	]
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/ip/names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">scientificNames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of scientific names to be resolved.
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">fuzzy_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to perform approximate string (a.k.a. "fuzzy") matching. By default, it is `false`. To turn on "fuzzy" matching `true` must be used. 

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results when fuzzy matching is turned on. By default it is `false`. If fuzzy matching is turned on and _multiple_match_ is enabled (`true`), then the service will return results of matches with score more than `0.50`.
 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/tnrs/ip/names" -H "content-type:application/json" -d '{"scientificNames": ["Acianthera angusti","Acidoton lanceolatus"],"fuzzy_match":true, "multiple_match":true}'
``` 

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 1.04,
		"creation_time": "2018-01-24T18:38:32.764067",
		"source_urls": [
			"https://tnrs.iplantcollaborative.org"
		]
	},
	"total_names": 2,
	"resolvedNames": [
		{
			"matched_results": [
				{
					"data_source": "Tropicos - Missouri Botanical Garden",
					"match_type": "Fuzzy",
					"match_score": 0.5,
					"matched_name": "Acianthera",
					"search_string": "Acianthera angusti",
					"synonyms": [],
					"taxon_id": "40030723"
				},
				{
					"data_source": "Tropicos - Missouri Botanical Garden",
					"match_type": "Fuzzy",
					"match_score": 0.5,
					"matched_name": "Acianthera",
					"search_string": "Acianthera angusti",
					"synonyms": [],
					"taxon_id": "40030730"
				}
			],
			"input_name": "Acianthera angusti"
		},
		{
			"matched_results": [
				{
					"data_source": "Tropicos - Missouri Botanical Garden",
					"match_type": "Exact",
					"match_score": 1.0,
					"matched_name": "Acidoton lanceolatus",
					"search_string": "Acidoton lanceolatus",
					"synonyms": [],
					"taxon_id": "50168852"
				}
			],
			"input_name": "Acidoton lanceolatus"
		}
	]
}
```

__Citation/Source:__		https://tnrs.iplantcollaborative.org

__Service Quality:__

 * *Restrictions on capacity:*  __maximum `500` names allowed__
 * *Expected response time:*  	__1s~30s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. sc_name)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently more than 500 names is not supported        |
   | Invalid method name in resource URI (e.g. /name)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_resolvedNames_) will be an empty list.

Go to [__Taxonomic Name Resolution__](#tnrs).

Go to [__Top__](#servicesdocumentation).

---


## <a name="treeretrieval"></a>Phylogenetic Tree Retrieval

   | Service Name |  Summary | 
   | :----------- | ---------: | 
   | [OToL_wrapper_Tree](#ot) | Get Phylogenetic Trees from a list of taxa using Open Tree of Life's induced_subtree method.    | 
   | [Phylomatic_wrapper_Tree](#pm)      | Get Phylogenetic Trees from a list of taxa using Phylomatic service.         |
   | [Treebase_Tree](#tb)  | Get Phylogenetic Trees from a list of taxa by constructung super-trees using source trees of TreeBase.      |
   | [Supersmart_wrapper_Tree](#smrt)      | Get Phylogenetic Trees using SUPERSMART tool        |
   


__Service Name:__  	 		<a name="ot"></a>OToL_wrapper_Tree

__Service Description:__ 	A service to get Phylogenetic Trees from a list of taxa using Open Tree of Life's induced_subtree method.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/gt/ot/get_tree>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json

__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxa</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  one or more scientific names delimited by pipe "|".
 				
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">metadata</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean (default: `false`)
  * __Description:__  a boolean value to specify whether to include tree metadata with the result.

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">ottid</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean (default: `true`)
  * __Description:__  a boolean value to specify whether to keep ott ids in the tree or not.


__Example Commands/Requests:__

1. 

```
https://phylo.cs.nmsu.edu/phylotastic_ws/gt/ot/get_tree?taxa=Panthera%20pardus|Taxidea%20taxus|Lutra%20lutra|Canis%20lupus|Mustela%20altaica&metadata=true
```

__Example Results:__

1. 
```json
{
    "status_code":200,
    "message":"Success",
    "meta_data":{
        "execution_time":2.95,
        "creation_time":"2018-04-08T21:30:28.236850",
        "source_urls":[
            "https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tree_of_life"
        ]
    },
    "tree_metadata":{
        "alignment_method":"NA",
        "character_matrix":"NA",
        "rooted":true,
        "supporting_studies":[
            {
                "PublicationYear":2013,
                "FocalCladeTaxonName":"Mammalia",
                "Publication":"O'Leary, M. A., J. I. Bloch, J. J. Flynn, T. J. Gaudin, A. Giallombardo, N. P. Giannini, S. L. Goldberg, B. P. Kraatz, Z.-X. Luo, J. Meng, X. Ni, M. J. Novacek, F. A. Perini, Z. S. Randall, G. W. Rougier, E. J. Sargis, M. T. Silcox, N. B. Simmons, M. Spaulding, P. M. Velazco, M. Weksler, J. R. Wible, A. L. Cirranello. 2013. The placental mammal ancestor and the post-K-Pg radiation of placentals. Science 339 (6120): 662-667.",
                "CandidateTreeForSynthesis":"tree6169",
                "PublicationDOI":"https://dx.doi.org/10.1126/science.1229237",
                "DataRepository":"",
                "Curator":"Joseph W. Brown",
                "PublicationIdentifier":"pg_2647"
            },
            {
                "PublicationYear":2012,
                "FocalCladeTaxonName":"Mammalia",
                "Publication":"Lartillot, Nicolas, Frédéric Delsuc. 2012. Joint reconstruction of divergence times and life-history evolution in placental mammals using a phylogenetic covariance model. Evolution 66 (6): 1773-1787.",
                "CandidateTreeForSynthesis":"tree6545",
                "PublicationDOI":"https://dx.doi.org/10.1111/j.1558-5646.2011.01558.x",
                "DataRepository":"",
                "Curator":"Joseph W. Brown",
                "PublicationIdentifier":"pg_2812"
            },
            {
                "PublicationYear":2008,
                "FocalCladeTaxonName":"Mustelidae",
                "Publication":"Koepfli, Klaus-Peter, Kerry A Deere, Graham J Slater, Colleen Begg, Keith Begg, Lon Grassman, Mauro Lucherini, Geraldine Veron, Robert K Wayne. 2008. Multigene phylogeny of the Mustelidae: Resolving relationships, tempo and biogeographic history of a mammalian adaptive radiation. BMC Biology 6 (1): 10.",
                "CandidateTreeForSynthesis":"tree6235",
                "PublicationDOI":"https://dx.doi.org/10.1186/1741-7007-6-10",
                "DataRepository":"",
                "Curator":"Joseph Brown",
                "PublicationIdentifier":"pg_2685"
            },
            {
                "PublicationYear":2011,
                "FocalCladeTaxonName":"Mammalia",
                "Publication":"Meredith, R.W., Janecka J., Gatesy J., Ryder O.A., Fisher C., Teeling E., Goodbla A., Eizirik E., Simao T., Stadler T., Rabosky D., Honeycutt R., Flynn J., Ingram C., Steiner C., Williams T., Robinson T., Herrick A., Westerman M., Ayoub N., Springer M., & Murphy W. 2011. Impacts of the Cretaceous Terrestrial Revolution and KPg Extinction on Mammal Diversification. Science 334 (6055): 521-524.",
                "CandidateTreeForSynthesis":"tree2855",
                "PublicationDOI":"https://dx.doi.org/10.1126/science.1211028",
                "DataRepository":"https://purl.org/phylo/treebase/phylows/study/TB2:S11872",
                "Curator":"Chris Owen",
                "PublicationIdentifier":"pg_1428"
            }
        ],
        "anastomosing":false,
        "branch_lengths_type":null,
        "consensus_type":"NA",
        "inference_method":"induced_subtree from synthetic tree with ID opentree9.1",
        "branch_support_type":null,
        "num_tips":5,
        "gene_or_species":"species",
        "topology_id":"NA",
        "synthetic_tree_id":"opentree9.1"
    },
    "newick":"((((Mustela_altaica_ott69264,Lutra_lutra_ott348036),Taxidea_taxus_ott754612)Mustelidae_ott348043,Canis_lupus_ott247341)Caniformia_ott827263,Panthera_pardus_ott42324)Carnivora_ott44565;"
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/gt/ot/tree>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxa</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__ list of scientific names.
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">metadata</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean (default: `false`)
  * __Description:__  a boolean value to specify whether to include tree metadata with the result.

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">ottid</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean (default: `true`)
  * __Description:__  a boolean value to specify whether to keep ott ids in the tree or not.
 		
		
__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/gt/ot/tree" -H "content-type:application/json" -d '{"taxa": ["Setophaga striata","Setophaga magnolia","Setophaga angelae","Setophaga plumbea","Setophaga virens"]}'
``` 

__Example Results:__

1. 

```
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 1.54,
		"creation_time": "2017-10-24T22:47:06.721292",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tree_of_life"
		]
	},
	"tree_metadata": {
		"alignment_method": "NA",
		"character_matrix": "NA",
		"rooted": true,
		"supporting_studies": [
			{
				"PublicationYear": 2010,
				"FocalCladeTaxonName": "Parulidae",
				"Publication": "Lovette, Irby J., Jorge L. Pérez-Emán, John P. Sullivan, Richard C. Banks, Isabella Fiorentino, Sergio Córdoba-Córdoba, María Echeverry-Galvis, F. Keith Barker, Kevin J. Burns, John Klicka, Scott M. Lanyon, Eldredge Bermingham. 2010. A comprehensive multilocus phylogeny for the wood-warblers and a revised classification of the Parulidae (Aves). Molecular Phylogenetics and Evolution 57 (2): 753-770.",
				"CandidateTreeForSynthesis": "tree6024",
				"PublicationDOI": "https://dx.doi.org/10.1016/j.ympev.2010.07.018",
				"DataRepository": "",
				"Curator": "Joseph W. Brown",
				"PublicationIdentifier": "pg_2591"
			},
			{
				"PublicationYear": 2015,
				"FocalCladeTaxonName": "Passeriformes",
				"Publication": "Barker, F. Keith, Kevin J. Burns, John Klicka, Scott M. Lanyon, Irby J. Lovette. 2015. New insights into New World biogeography: An integrated view from the phylogeny of blackbirds, cardinals, sparrows, tanagers, warblers, and allies. The Auk 132 (2): 333-348.",
				"CandidateTreeForSynthesis": "tree1",
				"PublicationDOI": "https://dx.doi.org/10.1642/auk-14-110.1",
				"DataRepository": "https://datadryad.org/resource/doi:10.5061/dryad.pb787",
				"Curator": "Joseph W. Brown",
				"PublicationIdentifier": "ot_770"
			}
		],
		"anastomosing": false,
		"branch_lengths_type": null,
		"consensus_type": "NA",
		"inference_method": "induced_subtree from synthetic tree with ID opentree9.1",
		"branch_support_type": null,
		"num_tips": 5,
		"gene_or_species": "species",
		"topology_id": "NA",
		"synthetic_tree_id": "opentree9.1"
	},
	"newick": "(Setophaga_magnolia_ott532751,Setophaga_striata_ott60236,Setophaga_plumbea_ott45750,Setophaga_angelae_ott381849,Setophaga_virens_ott1014098)Setophaga_ott285198;"
}
```

__Citation/Source:__		https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#tree_of_life

__Service Quality:__

 * *Restrictions on capacity:*  __maximum `1000` taxa allowed__ 
 * *Expected response time:*  	__1s~30s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. tax)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently more than 1000 names is not supported        |
   | Invalid method name in resource URI (e.g. /get_tre)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_newick_) will be an empty string.

Go to [__Phylogenetic Tree Retrieval__](#treeretrieval).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 		<a name="pm"></a>Phylomatic_wrapper_Tree

__Service Description:__ 	A service to get Phylogenetic Trees from a list of taxa using Phylomatic service.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/gt/pm/get_tree>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json

__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxa</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  one or more scientific names delimited by pipe "|".
 				
 				
__Example Commands/Requests:__

1. 

```
https://phylo.cs.nmsu.edu/phylotastic_ws/gt/pm/get_tree?taxa=Panthera leo|Panthera onca|Panthera tigris|Panthera uncia
```

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 4.81,
		"creation_time": "2017-10-18T23:27:24.903835",
		"source_urls": [
			"https://phylodiversity.net/phylomatic/"
		]
	},
	"input_taxa": [
		"Panthera leo",
		"Panthera onca",
		"Panthera tigris",
		"Panthera uncia"
	],
	"newick": "((Panthera_leo:6.3,Panthera_onca:6.3):0.1,Panthera_tigris:6.4):159.8;"
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/gt/pm/tree>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxa</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__ list of scientific names.
 				
 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/gt/pm/tree" -H "content-type:application/json" -d '{"taxa": ["Helianthus annuus","Passiflora edulis", "Rosa arkansana", "Saccharomyces cerevisiae"]}'
``` 

__Example Results:__

1. 

```
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 3.59,
		"creation_time": "2017-10-18T23:29:51.576322",
		"source_urls": [
			"https://phylodiversity.net/phylomatic/"
		]
	},
	"input_taxa": [
		"Helianthus annuus",
		"Passiflora edulis",
		"Rosa arkansana",
		"Saccharomyces cerevisiae"
	],
	"newick": "(Helianthus_annuus,(Rosa_arkansana,Passiflora_edulis));"
}
```

__Citation/Source:__		

- https://phylodiversity.net/phylomatic/
- https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#taxonomy

__Service Quality:__

 * *Restrictions on capacity:*  __maximum `1000` taxa allowed__
 * *Expected response time:*  	__1s~30s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. tax)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently more than 1000 names is not supported        |
   | Invalid method name in resource URI (e.g. /get_tre)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_newick_) will be an empty string.

Go to [__Phylogenetic Tree Retrieval__](#treeretrieval).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 		<a name="tb"></a>Treebase_Tree

__Service Description:__ 	A service to get Phylogenetic Trees from a list of taxa by constructung super-trees using source trees of TreeBase.


__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/gt/tb/tree>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxa</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__ list of scientific names.
 				
 				
__Example Commands/Requests:__

1. 
```bash
$ curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/gt/tb/tree" -H "content-type:application/json" -d '{"taxa":["Panthera pardus", "Taxidea taxus", "Enhydra lutris", "Lutra lutra", "Canis latrans", "Canis lupus", "Mustela altaica", "Mustela eversmanni", "Martes americana", "Ictonyx striatus", "Canis anthus", "Lycalopex vetulus", "Lycalopex culpaeus", "Puma concolor", "Felis catus","Leopardus jacobita"]}'
```

2. 

```bash
$ curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/gt/tb/tree" -H "content-type:application/json" -d '{"taxa":["Physcomitrella patens", "Solanum tuberosum", "Lactuca sativa","Vitis vinifera", "Glycine max", "Carica papaya", "Oryza sativa"]}'
```

__Example Results:__

1. 

```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 0.0,
		"creation_time": "2018-02-28T21:13:44.868532",
		"source_urls": [
			"https://github.com/TreeBASE/treebase/wiki/API"
		]
	},
	"newick": "((((((Mustela_altaica,(Lutra_lutra,Enhydra_lutris),Ictonyx_striatus),Martes_americana),Taxidea_taxus),Felis_catus),Canis_latrans),(Canis_lupus,(Puma_concolor,Panthera_pardus)));"
}
```

2. 

```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 281.02,
		"creation_time": "2018-02-28T21:41:38.831829",
		"source_urls": [
			"https://github.com/TreeBASE/treebase/wiki/API"
		]
	},
	"newick": "(((((Glycine_max,Carica_papaya),Vitis_vinifera),(Solanum_tuberosum,Lactuca_sativa)),Physcomitrella_patens),Oryza_sativa);"
}
```


__Citation/Source:__		https://github.com/TreeBASE/treebase/wiki/API

__Service Quality:__

 * *Restrictions on capacity:*  __maximum `30` taxa allowed__ 
 * *Expected response time:*  	__1s~300s__ (*might take longer depending on the number of matching source trees*)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. tax)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently more than 30 names is not supported        |
   | Invalid method name in resource URI (e.g. /get_tre)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_newick_) will be an empty string.


Go to [__Phylogenetic Tree Retrieval__](#treeretrieval).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 		<a name="smrt"></a>Supersmart_wrapper_Tree

__Service Description:__ 	A service to get Phylogenetic Trees using SUPERSMART tool. SUPERSMART is a self-contained analytical environment for large-scale phylogenetic data mining, taxonomic name resolution, tree inference and fossil-based tree calibration. The SUPERSMART pipeline consists of a number of different steps that can be chained together to infer a phylogenetic tree. This service runs the supersmart commands (taxize, align, orthologize, bbmerge, bbinfer, bbreroot, consense) in a pipeline to get a phylogenetic tree from an input species list.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/gt/smrt/tree>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json

__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">species</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__ list of scientific names.
 			
 > __Note__: Because of the computationally expensive operations of SUPERSMART tool, this service has been designed as an Asynchronous web service. Upon request, the service API will trigger a long running job in the background and respond to the client immediately with a `202` status code indicating that the request has been accepted for processing, but the processing has not been completed. The response body will provide a __job_status_url__ for the client so that status of the job can be tracked. When the processing is done, the server will create the original tree resource. As soon as the client wants to fetch the status again, the server will return a `303` status code and redirect the user to the location of the actual tree resource.
 				
__Example Commands/Requests:__

1. 

```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/gt/smrt/tree" -H "content-type:application/json" -d '{"species": ["Dendrocygna autumanlis", "Dendrocygna bicolor", "Anser brachyrhynchus", "Chen caerulescens", "Branta bernicula", "Branta leucopsis"]}'
```

__Example Results:__

1. 
```json
{"status_code": 202, "job_status_url": "https://phylo.cs.nmsu.edu/phylotastic_ws/gt/smrt/status?job_id=4fc6140e-833e-4530-bb1a-54e912ab48d1", "job_id": "4fc6140e-833e-4530-bb1a-54e912ab48d1", "job_submission_time": "2017-11-29T20:34:41.838873"}
```

__Status URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/gt/smrt/status>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json

__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">job_id</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__ ID of the job submitted.


__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/gt/smrt/status?job_id=4fc6140e-833e-4530-bb1a-54e912ab48d1
```

__Example Results:__

1. 
```json
{
	"job_status": "ran smrt align command",
	"total_steps": 12,
	"status_code": 200,
	"job_state": "PROGRESS",
	"tree_id": "4fc61-11292017203441",
	"current_step": 5,
	"message": "Success"
}
```

> __Note__: Once the actual tree resource is created, it will be permanently stored in the server and can be accessed using the following URI. The `{tree_id}` in the URI must be replaced by a valid __tree_id__. 


__Tree Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/gt/smrt/trees/{tree_id}>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 


 				
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/gt/smrt/trees/4fc61-11292017203441
``` 

__Example Results:__

1. 

```json
{
	"input_species": [
		"Dendrocygna autumanlis",
		"Dendrocygna bicolor",
		"Anser brachyrhynchus",
		"Chen caerulescens",
		"Branta bernicula",
		"Branta leucopsis"
	],
	"job_id": "4fc6140e-833e-4530-bb1a-54e912ab48d1",
	"execution_time": 2565.4749999,
	"status_code": 200,
	"newick_tree": "((Branta_leucopsis:0.04455,Dendrocygna_bicolor:0.37180):0.00000,(Anser_brachyrhynchus:0.02982,Anser_caerulescens:0.00604):0.04768):0.00000;",
	"tree_id": "4fc61-11292017203441",
	"message": "Success"
}
```

__Citation/Source:__		https://www.supersmart-project.org/

__Service Quality:__

 * *Restrictions on capacity:*  __maximum `30` taxa allowed__ 
 * *Expected response time:*  	__10m~30m__ (*might take longer depending on the job queue scheduling*)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. tax)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently more than 30 names is not supported        |
   | Invalid method name in resource URI (e.g. /get_tre)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in the supersmart tool, no specific HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_newick_tree_) will be an empty string.

Go to [__Phylogenetic Tree Retrieval__](#treeretrieval).

Go to [__Top__](#servicesdocumentation).

---

## <a name='taxonspecies'></a>Taxon to Species


   | Service Name |  Summary | 
   | :----------- | ---------: | 
   | [Taxon_all_species](#taxonallsp) | Get all Species that belong to a particular Taxon using OToL API. | 
   | [Taxon_country_species](#taxoncntysp) | Get a set of Species that belong to a particular Taxon and established in a particular country using INaturalist services. |
   | [Taxon_genome_species](#taxongnmsp) | Get a set of Species that belong to a particular Taxon and have genome sequence in NCBI database. |
   | [Taxon_popular_species](#taxonpopsp) | Get a set of Species that belong to a particular Taxon and ordered by popularity using OneZoom API |
   

__Service Name:__  	 	<a name="taxonallsp"></a>Taxon_all_species

__Service Description:__ 	A service to get all Species that belong to a particular Taxon.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ot/all_species>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxon</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  name of a taxon.
 				
 				
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ot/all_species?taxon=Vulpes
```

2. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ot/all_species?taxon=Canidae
```

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"input_taxon": "Vulpes",
	"meta_data": {
		"execution_time": 1.16,
		"creation_time": "2017-10-19T07:25:03.918115",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-Taxonomy"
		]
	},
	"total_names": 15,
	"message": "Success",
	"species": [
		"Vulpes environmental sample",
		"Vulpes stenognathus",
		"Vulpes bengalensis",
		"Vulpes pallida",
		"Vulpes cana",
		"Vulpes chama",
		"Vulpes vulpes",
		"Vulpes lagopus",
		"Vulpes corsac",
		"Vulpes rueppellii",
		"Vulpes zerda",
		"Vulpes velox",
		"Vulpes macrotis",
		"Vulpes sp.",
		"Vulpes ferrilata"
	]
}
```
2. 
```json
{
	"status_code": 200,
	"input_taxon": "Canidae",
	"meta_data": {
		"execution_time": 5.87,
		"creation_time": "2017-10-19T07:25:50.754427",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-Taxonomy"
		]
	},
	"total_names": 166,
	"message": "Success",
	"species": [
		"Aelurodon taxoides",
		"Aelurodon asthenostylus",
		"Aelurodon ferox",
		"Aelurodon montanensis",
		"Aelurodon mcgrewi",
		"Aelurodon stirtoni",
		"Cynotherium sardous",
		"Rhizocyon oregonensis",
		"Paratomarctus temerarius",
		"Paratomarctus euthos",
		"Archaeocyon pavidus",
		"Archaeocyon leptodus",
		"Archaeocyon falkenbachi",
		"Metatomarctus canavus",
		"Psalidocyon marianae",
		"Protomarctus optatus",
		"Neocynodesmus delicatus",
		"Protepicyon raki",
		"Desmocyon matthewi",
		"Desmocyon thomsoni",
		"Paracynarctus kelloggi",
		"Paracynarctus sinclairi",
		"Microtomarctus conferta",
		"Otarocyon cooki",
		"Otarocyon macdonaldi",
		"Paraenhydrocyon robustus",
		"Paraenhydrocyon josephi",
		"Sunkahetanka geringensis",
		"Procynodictis vulpiceps",
		"Procynodictis progressus",
		"Hesperocyon gregorious",
		"Hesperocyon coloradensis",
		"Hesperocyon gregarius",
		"Euoplocyon spissidens",
		"Euoplocyon brachygnathus",
		"Philotrox condoni",
		"Leptocyon vulpinus",
		"Leptocyon gregorii",
		"Leptocyon vafer",
		"Carpocyon limosus",
		"Carpocyon robustus",
		"Carpocyon webbi",
		"Carpocyon compressus",
		"Ectopocynus intermedius",
		"Ectopocynus simplicidens",
		"Ectopocynus antiquus",
		"Osbornodon iamonensis",
		"Osbornodon brachypus",
		"Osbornodon scitulus",
		"Osbornodon renjiei",
		"Osbornodon wangi",
		"Osbornodon sesnoni",
		"Osbornodon fricki",
		"Epicyon haydeni",
		"Epicyon aelurodontoides",
		"Epicyon saevus",
		"Eucyon davisi",
		"Cormocyon copei",
		"Cormocyon haydeni",
		"Cerdocyon thous",
		"Borophagus pugnator",
		"Borophagus hilli",
		"Borophagus littoralis",
		"Borophagus diversidens",
		"Borophagus secundus",
		"Borophagus orc",
		"Borophagus dudleyi",
		"Borophagus parvus",
		"Cynarctoides harlowi",
		"Cynarctoides roii",
		"Cynarctoides acridens",
		"Cynarctoides gawnae",
		"Cynarctoides lemur",
		"Cynarctoides luskensis",
		"Cynarctoides emryi",
		"Prohesperocyon wilsoni",
		"Tomartus euthos",
		"Tomarctus brevirostris",
		"Tomarctus hippophaga",
		"Phlaocyon achoros",
		"Phlaocyon minor",
		"Phlaocyon leucosteus",
		"Phlaocyon latidens",
		"Phlaocyon marslandensis",
		"Phlaocyon yatkolai",
		"Phlaocyon multicuspus",
		"Phlaocyon mariae",
		"Phlaocyon annectens",
		"Phlaocyon taylori",
		"Mesocyon temnodon",
		"Mesocyon coryphaeus",
		"Mesocyon brachyops",
		"Cynodesmus thooides",
		"Cynodesmus martini",
		"Oxetocyon cuspidatus",
		"Enhydrocyon pahinsintewakpa",
		"Enhydrocyon basilatus",
		"Enhydrocyon crassidens",
		"Enhydrocyon stenocephalus",
		"Caedocyon tedfordi",
		"Cynarctus voorhiesi",
		"Cynarctus marylandica",
		"Cynarctus crucidens",
		"Cynarctus galushai",
		"Cynarctus saxatilis",
		"Lycalopex sp. Fuegian dog",
		"Lycalopex fulvipes",
		"Lycalopex gymnocercus",
		"Lycalopex griseus",
		"Lycalopex culpaeus",
		"Lycalopex vetulus",
		"Lycalopex sechurae",
		"Cuon texanus",
		"Cuon alpinus",
		"Vulpes environmental sample",
		"Vulpes stenognathus",
		"Vulpes bengalensis",
		"Vulpes pallida",
		"Vulpes cana",
		"Vulpes chama",
		"Vulpes vulpes",
		"Vulpes lagopus",
		"Vulpes corsac",
		"Vulpes rueppellii",
		"Vulpes zerda",
		"Vulpes velox",
		"Vulpes macrotis",
		"Vulpes sp.",
		"Vulpes ferrilata",
		"Otocyon megalotis",
		"Lycaon pictus",
		"Speothos venaticus",
		"Atelocynus microtis",
		"Chrysocyon brachyurus",
		"Nyctereutes abdeslami",
		"Nyctereutes procyonoides",
		"Canis anthus",
		"Canis sp. Russia/33,500",
		"Canis sp. Belgium/36,000",
		"Canis environmental sample",
		"Canis spelaeus",
		"Canis hyaena",
		"Canis primigenius",
		"Canis cedazoensis",
		"Canis apolloniensis",
		"Canis edwardii",
		"Canis alopex",
		"Canis dirus",
		"Canis ferox",
		"Canis armbrusteri",
		"Canis lepophagus",
		"Canis lycaon",
		"Canis simensis",
		"Canis mesomelas",
		"Canis aureus",
		"Canis adustus",
		"Canis sp. CANInt1",
		"Canis lupus",
		"Canis latrans",
		"Canis sp.",
		"Canis rufus",
		"Urocyon progressus",
		"Urocyon cinereoargenteus",
		"Urocyon littoralis",
		"Dusicyon avus",
		"Dusicyon australis"
	]
}
```

__Citation/Source:__  	 	
- https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#taxonomy

__Service Quality:__

 * *Restrictions on capacity:*  __maximum taxonomic rank allowed: `family`__
 * *Expected response time:*  	__1s~20s__ (_might be longer depending on the rank of input taxon_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. taxa)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently input taxon with '_rank name_' rank is not supported        |
   | Invalid method name in resource URI (e.g. /all_sp)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_species_) will be an empty list.

Go to [__Taxon to Species__](#taxonspecies).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	<a name="taxoncntysp"></a>Taxon_country_species

__Service Description:__ 	A service to get a set of Species that belong to a particular Taxon and established in a particular country using INaturalist services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ot/country_species>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxon</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  name of a taxon.
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxon</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  name of a country.

 				
__Example Commands/Requests:__

1. 
```json
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ot/country_species?taxon=Panthera&country=Bangladesh
```
2. 
```json
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ot/country_species?taxon=Vulpes&country=Nepal
```

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"input_country": "Bangladesh",
	"meta_data": {
		"execution_time": 0.97,
		"creation_time": "2017-10-19T07:53:43.968268",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-Taxonomy",
			"https://www.inaturalist.org"
		]
	},
	"total_names": 1,
	"message": "Success",
	"species": [
		"Panthera tigris"
	],
	"input_taxon": "Panthera"
}
```

2. 
```json
{
	"status_code": 200,
	"input_country": "Nepal",
	"meta_data": {
		"execution_time": 0.49,
		"creation_time": "2017-10-19T07:56:17.137755",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-Taxonomy",
			"https://www.inaturalist.org"
		]
	},
	"total_names": 2,
	"message": "Success",
	"species": [
		"Vulpes bengalensis",
		"Vulpes ferrilata"
	],
	"input_taxon": "Vulpes"
}
```

__Citation/Source:__  	 	

- https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#taxonomy
- https://www.inaturalist.org/pages/api+reference#get-places


__Service Quality:__

 * *Restrictions on capacity:*  __maximum taxonomic rank allowed: `family`__ 
 * *Expected response time:*  	__1s~30s__ (_might be longer depending on the rank of input taxon_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. taxa)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently input taxon with '_rank name_' rank is not supported        |
   | Invalid method name in resource URI (e.g. /coun_sp)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_species_) will be an empty list.

Go to [__Taxon to Species__](#taxonspecies).

Go to [__Top__](#servicesdocumentation).

---


__Service Name:__  	 	<a name="taxongnmsp"></a>Taxon_genome_species

__Service Description:__ 	A service to get a set of Species that belong to a particular Taxon and have genome sequence in NCBI database.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ncbi/genome_species>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxon</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  name of a taxon.
 				
 				
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ncbi/genome_species?taxon=Rodentia
```
2. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ncbi/genome_species?taxon=Columbidae
```
3. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/ncbi/genome_species?taxon=Aves
```

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"meta_data": {
		"execution_time": 3.46,
		"creation_time": "2017-10-19T10:13:05.479535",
		"source_urls": [
			"https://www.ncbi.nlm.nih.gov/taxonomy",
			"https://www.ncbi.nlm.nih.gov/genome"
		]
	},
	"total_names": 38,
	"message": "Success",
	"species": [
		"Nannospalax galili",
		"Fukomys damarensis",
		"Myodes glareolus",
		"Ellobius talpinus",
		"Peromyscus maniculatus bairdii",
		"Apodemus speciosus",
		"Spermophilus dauricus",
		"Microtus ochrogaster",
		"Mus musculus molossinus",
		"Neotoma lepida",
		"Castor canadensis",
		"Jaculus jaculus",
		"Psammomys obesus",
		"Ictidomys tridecemlineatus",
		"Mus musculus musculus",
		"Ellobius lutescens",
		"Cavia aperea",
		"Chinchilla lanigera",
		"Microtus agrestis",
		"Heterocephalus glaber",
		"Octodon degus",
		"Cavia porcellus",
		"Apodemus sylvaticus",
		"Rattus norvegicus",
		"Mus spretus",
		"Mus pahari",
		"Mus musculus domesticus",
		"Mus musculus castaneus",
		"Mus musculus",
		"Mus caroli",
		"Meriones unguiculatus",
		"Phodopus sungorus",
		"Peromyscus maniculatus",
		"Mesocricetus auratus",
		"Cricetulus griseus",
		"Dipodomys ordii",
		"Marmota marmota marmota",
		"Marmota marmota"
	],
	"input_taxon": "Rodentia"
}
```

2. 
```json
{
	"status_code": 200,
	"meta_data": {
		"execution_time": 3.17,
		"creation_time": "2017-10-19T10:11:00.465616",
		"source_urls": [
			"https://www.ncbi.nlm.nih.gov/taxonomy",
			"https://www.ncbi.nlm.nih.gov/genome"
		]
	},
	"total_names": 3,
	"message": "Success",
	"species": [
		"Patagioenas fasciata monilis",
		"Patagioenas fasciata",
		"Columba livia"
	],
	"input_taxon": "Columbidae"
}
```

3. 
```json
{
	"status_code": 200,
	"meta_data": {
		"execution_time": 3.96,
		"creation_time": "2017-10-19T11:02:14.958038",
		"source_urls": [
			"https://www.ncbi.nlm.nih.gov/taxonomy",
			"https://www.ncbi.nlm.nih.gov/genome"
		]
	},
	"total_names": 105,
	"message": "Success",
	"species": [
		"Lyrurus tetrix",
		"Zosterops lateralis melanops",
		"Setophaga coronata coronata",
		"Corvus cornix cornix",
		"Balearica regulorum",
		"Gallirallus okinawae",
		"Nannopterum harrisi",
		"Struthio camelus australis",
		"Anser cygnoides domesticus",
		"Patagioenas fasciata monilis",
		"Patagioenas fasciata",
		"Podiceps cristatus",
		"Falco cherrug",
		"Manacus vitellinus",
		"Lepidothrix coronata",
		"Lonchura striata domestica",
		"Antrostomus carolinensis",
		"Sporophila hypoxantha",
		"Amazona vittata",
		"Pterocles gutturalis",
		"Aquila chrysaetos canadensis",
		"Tympanuchus cupido pinnatus",
		"Phylloscopus trochilus acredula",
		"Apteryx australis mantelli",
		"Calidris pugnax",
		"Egretta garzetta",
		"Leptosomus discolor",
		"Chlamydotis macqueenii",
		"Pseudopodoces humilis",
		"Corvus cornix",
		"Nestor notabilis",
		"Ara macao",
		"Buceros rhinoceros silvestris",
		"Buceros rhinoceros",
		"Lyrurus tetrix tetrix",
		"Phylloscopus trochiloides viridanus",
		"Phylloscopus trochiloides trochiloides",
		"Nipponia nippon",
		"Tauraco erythrolophus",
		"Picoides pubescens",
		"Setophaga coronata",
		"Balearica regulorum gibbericeps",
		"Phaethon lepturus",
		"Tinamus guttatus",
		"Coturnix japonica",
		"Corvus brachyrhynchos",
		"Anas zonorhyncha",
		"Ficedula albicollis",
		"Taeniopygia guttata",
		"Merops nubicus",
		"Colius striatus",
		"Apaloderma vittatum",
		"Acanthisitta chloris",
		"Phylloscopus plumbeitarsus",
		"Tyto alba",
		"Urile pelagicus",
		"Nannopterum auritus",
		"Cuculus canorus",
		"Eurypyga helias",
		"Cariama cristata",
		"Mesitornis unicolor",
		"Ciconia boyciana",
		"Haliaeetus leucocephalus",
		"Charadrius vociferus",
		"Geospiza fortis",
		"Passer domesticus",
		"Phylloscopus trochiloides",
		"Zonotrichia albicollis",
		"Zosterops lateralis",
		"Cathartes aura",
		"Lonchura striata",
		"Nannopterum brasilianus",
		"Gavia stellata",
		"Pelecanus crispus",
		"Fulmarus glacialis",
		"Opisthocomus hoazin",
		"Grus japonensis",
		"Uria lomvia",
		"Melopsittacus undulatus",
		"Amazona aestiva",
		"Calypte anna",
		"Pygoscelis adeliae",
		"Aptenodytes forsteri",
		"Phoenicopterus ruber ruber",
		"Phoenicopterus ruber",
		"Phalacrocorax carbo",
		"Phylloscopus trochilus",
		"Sturnus vulgaris",
		"Parus major",
		"Serinus canaria",
		"Meleagris gallopavo",
		"Gallus gallus",
		"Colinus virginianus",
		"Callipepla squamata",
		"Tympanuchus cupido",
		"Numida meleagris",
		"Haliaeetus albicilla",
		"Aquila chrysaetos",
		"Falco peregrinus",
		"Columba livia",
		"Chaetura pelagica",
		"Anser cygnoides",
		"Anas platyrhynchos",
		"Apteryx australis",
		"Struthio camelus"
	],
	"input_taxon": "Aves"
}
```

__Citation/Source:__  	

- https://www.ncbi.nlm.nih.gov/taxonomy
- https://www.ncbi.nlm.nih.gov/genome
- https://www.ncbi.nlm.nih.gov/books/NBK25500/#chapter1.Finding_Related_Data_Through_En


__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source web service. Tested upto __class__ ranked taxon as input_) 
 * *Expected response time:*  	__1s~20s__ (_might be longer depending on the rank of taxon_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. taxa)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid method name in resource URI (e.g. /gene_sp)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_species_) will be an empty list.

Go to [__Taxon to Species__](#taxonspecies).

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	<a name="taxonpopsp"></a>Taxon_popular_species

__Service Description:__ 	A service to retrieve a set of Species that belong to a particular Taxon and ordered by popularity using OneZoom API.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/ts/oz/popular_species>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">taxon</span> 
  * __Category:__  	optional
  * __Data Type:__  string
  * __Description:__  name of a taxon. If no *taxon* parameter is provided, by default the service assumes ``biota`` and returns the top 20 popular species of __all life__. 
 				
1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">num_species</span> 
  * __Category:__  	optional
  * __Data Type:__  int
  * __Description:__  number of species to be returned in the result. If *num_species* parameter is not provided, by default the service will return top 20 species belonging to the particular input taxon. Maximum value allowed for this parameter is ``100``.


 				
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/oz/popular_species
```

2. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/oz/popular_species?taxon=Felidae&num_species=10
```

3. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ts/oz/popular_species?taxon=Anura&num_species=5
```

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 2.1,
		"creation_time": "2018-06-28T08:41:01.118528",
		"source_urls": [
			"https://beta.onezoom.org"
		]
	},
	"result": [
		{
			"popular_species": [
				{
					"score": 196374.30608726584,
					"name": "Canis lupus",
					"rank": 1,
					"ott_id": 247341
				},
				{
					"score": 178828.2085712895,
					"name": "Pan paniscus",
					"rank": 2,
					"ott_id": 158484
				},
				{
					"score": 178826.2342051032,
					"name": "Ursus arctos",
					"rank": 3,
					"ott_id": 872567
				},
				{
					"score": 171011.49558080095,
					"name": "Pan troglodytes",
					"rank": 4,
					"ott_id": 417950
				},
				{
					"score": 168271.1617403349,
					"name": "Pongo pygmaeus",
					"rank": 5,
					"ott_id": 770302
				},
				{
					"score": 167801.62340542427,
					"name": "Pongo abelii",
					"rank": 6,
					"ott_id": 770295
				},
				{
					"score": 167668.23973771726,
					"name": "Gorilla gorilla",
					"rank": 7,
					"ott_id": 417965
				},
				{
					"score": 167079.01855934266,
					"name": "Gorilla beringei",
					"rank": 8,
					"ott_id": 351685
				},
				{
					"score": 165843.45355376587,
					"name": "Felis catus",
					"rank": 9,
					"ott_id": 563166
				},
				{
					"score": 163219.74333495292,
					"name": "Homo sapiens",
					"rank": 10,
					"ott_id": 770315
				},
				{
					"score": 161614.6969089356,
					"name": "Ailuropoda melanoleuca",
					"rank": 11,
					"ott_id": 872573
				},
				{
					"score": 160763.53132654927,
					"name": "Ursus maritimus",
					"rank": 12,
					"ott_id": 10732
				},
				{
					"score": 159953.18179004636,
					"name": "Panthera tigris",
					"rank": 13,
					"ott_id": 42314
				},
				{
					"score": 159511.64281662516,
					"name": "Panthera leo",
					"rank": 14,
					"ott_id": 563151
				},
				{
					"score": 157440.2275277912,
					"name": "Acinonyx jubatus",
					"rank": 15,
					"ott_id": 752759
				},
				{
					"score": 155708.9418435346,
					"name": "Canis latrans",
					"rank": 16,
					"ott_id": 247331
				},
				{
					"score": 152781.90699956715,
					"name": "Puma concolor",
					"rank": 17,
					"ott_id": 42307
				},
				{
					"score": 152361.9993384306,
					"name": "Ursus americanus",
					"rank": 18,
					"ott_id": 872577
				},
				{
					"score": 152332.36939194548,
					"name": "Balaenoptera musculus",
					"rank": 19,
					"ott_id": 226190
				},
				{
					"score": 150934.27258940678,
					"name": "Vulpes vulpes",
					"rank": 20,
					"ott_id": 821964
				}
			],
			"matched_taxon": "cellular organisms",
			"ott_id": 93302
		}
	],
	"input_taxon": "biota"
}
```
2. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 1.0,
		"creation_time": "2018-06-28T08:39:07.212249",
		"source_urls": [
			"https://beta.onezoom.org"
		]
	},
	"result": [
		{
			"popular_species": [
				{
					"score": 165843.45355376587,
					"name": "Felis catus",
					"rank": 9,
					"ott_id": 563166
				},
				{
					"score": 159953.18179004636,
					"name": "Panthera tigris",
					"rank": 13,
					"ott_id": 42314
				},
				{
					"score": 159511.64281662516,
					"name": "Panthera leo",
					"rank": 14,
					"ott_id": 563151
				},
				{
					"score": 157440.2275277912,
					"name": "Acinonyx jubatus",
					"rank": 15,
					"ott_id": 752759
				},
				{
					"score": 152781.90699956715,
					"name": "Puma concolor",
					"rank": 17,
					"ott_id": 42307
				},
				{
					"score": 149880.2715078593,
					"name": "Panthera onca",
					"rank": 22,
					"ott_id": 42322
				},
				{
					"score": 148158.462947006,
					"name": "Lynx rufus",
					"rank": 27,
					"ott_id": 507545
				},
				{
					"score": 146006.27444194877,
					"name": "Panthera pardus",
					"rank": 38,
					"ott_id": 42324
				},
				{
					"score": 141159.69265771235,
					"name": "Lynx lynx",
					"rank": 85,
					"ott_id": 886829
				},
				{
					"score": 140886.87771628448,
					"name": "Lynx pardinus",
					"rank": 91,
					"ott_id": 442049
				}
			],
			"matched_taxon": "Felidae",
			"ott_id": 563159
		}
	],
	"input_taxon": "Felidae"
}
```

3. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 3.31,
		"creation_time": "2018-06-28T08:39:55.319491",
		"source_urls": [
			"https://beta.onezoom.org"
		]
	},
	"result": [
		{
			"popular_species": [],
			"matched_taxon": "Anura (genus in kingdom Archaeplastida)",
			"ott_id": 4728082
		},
		{
			"popular_species": [
				{
					"score": 120126.871261261,
					"name": "Bombina pachypus",
					"rank": 4969,
					"ott_id": 558313
				},
				{
					"score": 119544.16658687402,
					"name": "Ascaphus truei",
					"rank": 5232,
					"ott_id": 485827
				},
				{
					"score": 119544.16658687402,
					"name": "Ascaphus montanus",
					"rank": 5232,
					"ott_id": 809935
				},
				{
					"score": 119533.46173383704,
					"name": "Barbourula kalimantanensis",
					"rank": 5236,
					"ott_id": 95656
				},
				{
					"score": 119523.8761594891,
					"name": "Barbourula busuangensis",
					"rank": 5239,
					"ott_id": 95643
				}
			],
			"matched_taxon": "Anura (order in Opisthokonta)",
			"ott_id": 991547
		},
		{
			"popular_species": [
				{
					"score": 40754.49695426256,
					"name": "Cousinia platylepis",
					"rank": 1450303,
					"ott_id": 167185
				},
				{
					"score": 40754.49695426256,
					"name": "Cousinia turcomanica",
					"rank": 1450303,
					"ott_id": 193795
				},
				{
					"score": 40591.795731046244,
					"name": "Cousinia longifolia",
					"rank": 1454424,
					"ott_id": 100314
				},
				{
					"score": 40591.795731046244,
					"name": "Cousinia scariosa",
					"rank": 1454424,
					"ott_id": 244924
				},
				{
					"score": 40591.795731046244,
					"name": "Cousinia tenella",
					"rank": 1454424,
					"ott_id": 741656
				}
			],
			"matched_taxon": "Cousinia",
			"ott_id": 597720
		},
		{
			"popular_species": [],
			"matched_taxon": "Pisanianura",
			"ott_id": 2916683
		},
		{
			"popular_species": [
				{
					"score": 127458.40045718732,
					"name": "Anoura geoffroyi",
					"rank": 1704,
					"ott_id": 688667
				},
				{
					"score": 126994.34046910117,
					"name": "Anoura caudifer",
					"rank": 1838,
					"ott_id": 351792
				},
				{
					"score": 126264.81032663805,
					"name": "Anoura latidens",
					"rank": 2110,
					"ott_id": 130223
				},
				{
					"score": 126223.51628932233,
					"name": "Anoura cultrata",
					"rank": 2130,
					"ott_id": 485774
				}
			],
			"matched_taxon": "Anoura",
			"ott_id": 351791
		},
		{
			"popular_species": [
				{
					"score": 60354.346699178095,
					"name": "Neanura ambigua",
					"rank": 1113002,
					"ott_id": 5010759
				},
				{
					"score": 60166.7057372178,
					"name": "Neanura coronifera",
					"rank": 1117340,
					"ott_id": 5010767
				},
				{
					"score": 59982.69032973983,
					"name": "Neanura growae",
					"rank": 1121515,
					"ott_id": 5010746
				},
				{
					"score": 59982.69032973983,
					"name": "Neanura ili",
					"rank": 1121515,
					"ott_id": 5010747
				},
				{
					"score": 59982.69032973983,
					"name": "Neanura giselae",
					"rank": 1121515,
					"ott_id": 5010748
				}
			],
			"matched_taxon": "Neanura",
			"ott_id": 99848
		}
	],
	"input_taxon": "Anura"
}
```

__Citation/Source:__  	 	https://beta.onezoom.org


__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (depends on the source service)
 * *Expected response time:*  	__1s~15s__ (_might be longer depending on the rank of input taxon_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. taxa)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit       | 403   | Error: Currently input taxon with '_rank name_' rank is not supported        |
   | Invalid method name in resource URI (e.g. /pop_sp)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  
Go to [__Taxon to Species__](#taxonspecies).

Go to [__Top__](#servicesdocumentation).


---

## <a name='imageinforetrieval'></a>Image/Information URL Retrieval

__Service Name:__  	 	Image_url_species

__Service Description:__ 	A service to get image urls and corresponding license information of a list of species using EOL services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/si/eol/get_images>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">species</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  list of species names delimited by pipe "|".
 				
  > __Note__: The service expects already resolved species names as input to provide the correct output.

__Example Commands/Requests:__

1. 

```
https://phylo.cs.nmsu.edu/phylotastic_ws/si/eol/get_images?species=Panthera%20leo|Panthera%20onca|Panthera%20pardus
```


__Example Results:__

1. 
```json
{
	"input_species": [
		"Panthera leo",
		"Panthera onca",
		"Panthera pardus"
	],
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 3.12,
		"creation_time": "2017-10-21T08:58:51.049382",
		"source_urls": [
			"https://eol.org"
		]
	},
	"species": [
		{
			"images": [
				{
					"license": "https://creativecommons.org/licenses/by-sa/2.0/",
					"mediaURL": "https://upload.wikimedia.org/wikipedia/commons/e/ec/Lion_cub_with_mother.jpg",
					"eolMediaURL": "https://media.eol.org/content/2015/11/13/05/46343_orig.jpg",
					"rightsHolder": "",
					"vettedStatus": "Trusted",
					"source": "https://commons.wikimedia.org/wiki/File:Lion_cub_with_mother.jpg",
					"eolThumbnailURL": "https://media.eol.org/content/2015/11/13/05/46343_98_68.jpg",
					"dataRating": 4.83333
				},
				{
					"license": "https://creativecommons.org/publicdomain/mark/1.0/",
					"mediaURL": "https://upload.wikimedia.org/wikipedia/commons/a/ae/Lion_Yawning.jpg",
					"eolMediaURL": "https://media.eol.org/content/2016/04/26/05/84896_orig.jpg",
					"rightsHolder": "",
					"vettedStatus": "Trusted",
					"source": "https://commons.wikimedia.org/wiki/File:Lion_Yawning.jpg",
					"eolThumbnailURL": "https://media.eol.org/content/2016/04/26/05/84896_98_68.jpg",
					"dataRating": 4.5
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc-sa/2.0/",
					"mediaURL": "https://farm5.staticflickr.com/4093/4888050484_fba7e481cd_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2015/04/30/12/90034_orig.jpg",
					"rightsHolder": "David d'O",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/david_o/4888050484/",
					"eolThumbnailURL": "https://media.eol.org/content/2015/04/30/12/90034_98_68.jpg",
					"dataRating": 4.44444
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc-sa/2.0/",
					"mediaURL": "https://farm5.staticflickr.com/4093/4888050484_fba7e481cd_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2013/03/03/00/50308_orig.jpg",
					"rightsHolder": "David d'O",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/david_o/4888050484/",
					"eolThumbnailURL": "https://media.eol.org/content/2013/03/03/00/50308_98_68.jpg",
					"dataRating": 4.44444
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc-sa/2.0/",
					"mediaURL": "https://farm5.staticflickr.com/4093/4887455027_dae2d6ce69_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2015/04/30/12/35649_orig.jpg",
					"rightsHolder": "David d'O",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/david_o/4887455027/",
					"eolThumbnailURL": "https://media.eol.org/content/2015/04/30/12/35649_98_68.jpg",
					"dataRating": 4.375
				}
			],
			"searched_name": "Panthera leo",
			"total_images": 5,
			"eol_id": 328672,
			"matched_name": "Panthera leo (Linnaeus, 1758)"
		},
		{
			"images": [
				{
					"license": "https://creativecommons.org/licenses/by-nc-sa/2.0/",
					"mediaURL": "https://farm5.staticflickr.com/4085/5177235312_9f03063e0d_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2015/04/30/02/29576_orig.jpg",
					"rightsHolder": "Smithsonian Wild",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/smithsonianwild/5177235312/",
					"eolThumbnailURL": "https://media.eol.org/content/2015/04/30/02/29576_98_68.jpg",
					"dataRating": 4.30769
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc-sa/2.0/",
					"mediaURL": "https://farm5.staticflickr.com/4085/5177235312_9f03063e0d_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2013/07/05/09/54909_orig.jpg",
					"rightsHolder": "Smithsonian Wild",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/smithsonianwild/5177235312/",
					"eolThumbnailURL": "https://media.eol.org/content/2013/07/05/09/54909_98_68.jpg",
					"dataRating": 4.30769
				},
				{
					"license": "https://creativecommons.org/licenses/by/3.0/",
					"mediaURL": "https://calphotos.berkeley.edu/imgs/512x768/0000_0000/0115/1280.jpeg",
					"eolMediaURL": "https://media.eol.org/content/2015/01/12/16/02016_orig.jpg",
					"rightsHolder": "2015 Carlos Henrique Luz Nunes de Almeida",
					"vettedStatus": "Trusted",
					"source": "https://calphotos.berkeley.edu/cgi/img_query?seq_num=628370&one=T",
					"eolThumbnailURL": "https://media.eol.org/content/2015/01/12/16/02016_98_68.jpg",
					"dataRating": 4.0
				},
				{
					"license": "https://creativecommons.org/publicdomain/mark/1.0/",
					"mediaURL": "https://upload.wikimedia.org/wikipedia/commons/2/2c/Obscured_jaguar.jpg",
					"eolMediaURL": "https://media.eol.org/content/2012/06/13/03/77074_orig.jpg",
					"rightsHolder": "",
					"vettedStatus": "Trusted",
					"source": "https://commons.wikimedia.org/wiki/File:Obscured_jaguar.jpg",
					"eolThumbnailURL": "https://media.eol.org/content/2012/06/13/03/77074_98_68.jpg",
					"dataRating": 3.8
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc/3.0/",
					"mediaURL": "https://www.planetscott.com/img/6355/large/jaguar-(panthera-onca).jpg",
					"eolMediaURL": "https://media.eol.org/content/2012/05/18/10/43723_orig.jpg",
					"rightsHolder": "Scott Bowers",
					"vettedStatus": "Trusted",
					"source": "https://www.planetscott.com/speciesdetail/10063/jaguar-(panthera-onca)-",
					"eolThumbnailURL": "https://media.eol.org/content/2012/05/18/10/43723_98_68.jpg",
					"dataRating": 3.0
				}
			],
			"searched_name": "Panthera onca",
			"total_images": 5,
			"eol_id": 328606,
			"matched_name": "Panthera onca (Linnaeus, 1758)"
		},
		{
			"images": [
				{
					"license": "https://creativecommons.org/licenses/by-sa/2.0/",
					"mediaURL": "https://farm7.staticflickr.com/6011/6001436301_ff45749a74_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2017/03/03/16/37289_orig.jpg",
					"rightsHolder": "Bernard DUPONT",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/berniedup/6001436301/",
					"eolThumbnailURL": "https://media.eol.org/content/2017/03/03/16/37289_98_68.jpg",
					"dataRating": 4.375
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc-sa/2.0/",
					"mediaURL": "https://farm7.staticflickr.com/6011/6001436301_ff45749a74_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2014/10/11/05/59143_orig.jpg",
					"rightsHolder": "Bernard DUPONT",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/berniedup/6001436301/",
					"eolThumbnailURL": "https://media.eol.org/content/2014/10/11/05/59143_98_68.jpg",
					"dataRating": 4.375
				},
				{
					"license": "https://creativecommons.org/licenses/by-sa/3.0/",
					"mediaURL": "https://upload.wikimedia.org/wikipedia/commons/5/5f/Great_male_Leopard_in_South_Afrika.JPG",
					"eolMediaURL": "https://media.eol.org/content/2012/06/15/10/36939_orig.jpg",
					"rightsHolder": "",
					"vettedStatus": "Trusted",
					"source": "https://commons.wikimedia.org/wiki/File:Great_male_Leopard_in_South_Afrika.JPG",
					"eolThumbnailURL": "https://media.eol.org/content/2012/06/15/10/36939_98_68.jpg",
					"dataRating": 4.16667
				},
				{
					"license": "https://creativecommons.org/licenses/by-sa/2.0/",
					"mediaURL": "https://farm8.staticflickr.com/7197/6861336273_4e231b57df_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2015/03/11/01/76782_orig.jpg",
					"rightsHolder": "Bernard DUPONT",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/berniedup/6861336273/",
					"eolThumbnailURL": "https://media.eol.org/content/2015/03/11/01/76782_98_68.jpg",
					"dataRating": 4.0
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc-sa/2.0/",
					"mediaURL": "https://farm8.staticflickr.com/7197/6861336273_4e231b57df_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2015/03/11/01/76782_orig.jpg",
					"rightsHolder": "Bernard DUPONT",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/berniedup/6861336273/",
					"eolThumbnailURL": "https://media.eol.org/content/2015/03/11/01/76782_98_68.jpg",
					"dataRating": 4.0
				}
			],
			"searched_name": "Panthera pardus",
			"total_images": 5,
			"eol_id": 328673,
			"matched_name": "Panthera pardus (Linnaeus, 1758)"
		}
	]
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/si/eol/images>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 

__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">species</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__ list of species names.
 				
  > __Note__: The service expects already resolved species names as input to provide the correct output.

__Example Commands/Requests:__

1. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/si/eol/images -H 'content-type:application/json' -d '{"species": ["Catopuma badia","Catopuma temminckii"]}'
```

__Example Results:__

1. 
```json
{
	"input_species": [
		"Catopuma badia",
		"Catopuma temminckii"
	],
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 4.93,
		"creation_time": "2017-10-21T09:03:00.978899",
		"source_urls": [
			"https://eol.org"
		]
	},
	"species": [
		{
			"images": [
				{
					"license": "https://creativecommons.org/publicdomain/mark/1.0/",
					"mediaURL": "https://upload.wikimedia.org/wikipedia/commons/b/b7/Chat_Bai_1874.jpg",
					"eolMediaURL": "https://media.eol.org/content/2014/01/04/04/58116_orig.jpg",
					"rightsHolder": "",
					"vettedStatus": "Trusted",
					"source": "https://commons.wikimedia.org/wiki/File:Chat_Bai_1874.jpg",
					"eolThumbnailURL": "https://media.eol.org/content/2014/01/04/04/58116_98_68.jpg",
					"dataRating": 2.0
				},
				{
					"license": "https://creativecommons.org/licenses/by-sa/3.0/",
					"mediaURL": "https://upload.wikimedia.org/wikipedia/commons/1/1e/Bay_cat_1_Jim_Sanderson.jpg",
					"eolMediaURL": "https://media.eol.org/content/2013/11/25/12/14465_orig.jpg",
					"rightsHolder": "",
					"vettedStatus": "Unreviewed",
					"source": "https://commons.wikimedia.org/wiki/File:Bay_cat_1_Jim_Sanderson.jpg",
					"eolThumbnailURL": "https://media.eol.org/content/2013/11/25/12/14465_98_68.jpg",
					"dataRating": 2.5
				},
				{
					"license": "https://creativecommons.org/licenses/by-sa/3.0/",
					"mediaURL": "https://upload.wikimedia.org/wikipedia/commons/b/ba/Bay_cat_1_Jim_Sanderson-cropped.jpg",
					"eolMediaURL": "https://media.eol.org/content/2013/11/25/18/76434_orig.jpg",
					"rightsHolder": "",
					"vettedStatus": "Unreviewed",
					"source": "https://commons.wikimedia.org/wiki/File:Bay_cat_1_Jim_Sanderson-cropped.jpg",
					"eolThumbnailURL": "https://media.eol.org/content/2013/11/25/18/76434_98_68.jpg",
					"dataRating": 2.5
				},
				{
					"license": "https://creativecommons.org/licenses/by-sa/3.0/",
					"mediaURL": "https://upload.wikimedia.org/wikipedia/commons/a/aa/Catopuma_badia_John_Gray.jpg",
					"eolMediaURL": "https://media.eol.org/content/2013/11/15/02/44565_orig.jpg",
					"rightsHolder": "",
					"vettedStatus": "Unreviewed",
					"source": "https://commons.wikimedia.org/wiki/File:Catopuma_badia_John_Gray.jpg",
					"eolThumbnailURL": "https://media.eol.org/content/2013/11/15/02/44565_98_68.jpg",
					"dataRating": 2.5
				}
			],
			"searched_name": "Catopuma badia",
			"total_images": 4,
			"eol_id": 311552,
			"matched_name": "Catopuma badia (Gray, 1874)"
		},
		{
			"images": [
				{
					"license": "https://creativecommons.org/licenses/by-sa/3.0/",
					"mediaURL": "https://upload.wikimedia.org/wikipedia/commons/0/0f/Asiatische-Goldkatze-Catopuma-temminckii-tier-katze-0001_2.JPG",
					"eolMediaURL": "https://media.eol.org/content/2012/06/15/04/63856_orig.jpg",
					"rightsHolder": "",
					"vettedStatus": "Trusted",
					"source": "https://commons.wikimedia.org/wiki/File:Asiatische-Goldkatze-Catopuma-temminckii-tier-katze-0001_2.JPG",
					"eolThumbnailURL": "https://media.eol.org/content/2012/06/15/04/63856_98_68.jpg",
					"dataRating": 2.71429
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc-sa/3.0/",
					"mediaURL": "https://csdb.ioz.ac.cn/images/Upload_images/Animalia/Chordata/Mammalia/CARNIVORA/Felidae/Catopuma/temminckii/7FCF470A-A4CF-4258-B673-8E0CD67DC607.jpg",
					"eolMediaURL": "https://media.eol.org/content/2012/06/27/23/19948_orig.jpg",
					"rightsHolder": "上海科学技术出版社",
					"vettedStatus": "Trusted",
					"source": null,
					"eolThumbnailURL": "https://media.eol.org/content/2012/06/27/23/19948_98_68.jpg",
					"dataRating": 2.5
				},
				{
					"license": "https://creativecommons.org/licenses/by/3.0/",
					"mediaURL": "https://calphotos.berkeley.edu/imgs/512x768/0000_0000/0714/0105.jpeg",
					"eolMediaURL": "https://media.eol.org/content/2014/07/07/00/87109_orig.jpg",
					"rightsHolder": "2014 Simon J. Tonge",
					"vettedStatus": "Trusted",
					"source": "https://calphotos.berkeley.edu/cgi/img_query?seq_num=607590&one=T",
					"eolThumbnailURL": "https://media.eol.org/content/2014/07/07/00/87109_98_68.jpg",
					"dataRating": 2.5
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc/4.0/",
					"mediaURL": "https://static.inaturalist.org/photos/1723499/original.JPG?1429042450",
					"eolMediaURL": "https://media.eol.org/content/2016/07/24/13/02661_orig.jpg",
					"rightsHolder": "bangladeshpythonproject",
					"vettedStatus": "Trusted",
					"source": "https://www.inaturalist.org/photos/1723499",
					"eolThumbnailURL": "https://media.eol.org/content/2016/07/24/13/02661_98_68.jpg",
					"dataRating": 2.5
				},
				{
					"license": "https://creativecommons.org/licenses/by-nc-sa/2.0/",
					"mediaURL": "https://farm2.staticflickr.com/1314/5179859836_13027f2c30_o.jpg",
					"eolMediaURL": "https://media.eol.org/content/2013/06/04/06/52233_orig.jpg",
					"rightsHolder": "Smithsonian Wild",
					"vettedStatus": "Trusted",
					"source": "https://www.flickr.com/photos/smithsonianwild/5179859836/",
					"eolThumbnailURL": "https://media.eol.org/content/2013/06/04/06/52233_98_68.jpg",
					"dataRating": 2.0
				}
			],
			"searched_name": "Catopuma temminckii",
			"total_images": 5,
			"eol_id": 311553,
			"matched_name": "Catopuma temminckii (Vigors and Horsfield, 1827)"
		}
	]
}
```

__Citation/Source:__  	 	https://eol.org/api

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 30 species allowed__
 * *Expected response time:*  	__1s~25s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. taxa)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit        | 403   | Error: Currently more than 30 species is not supported        |
   | Invalid method name in resource URI (e.g. /gene_sp)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_species_) will be an empty list.

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	Info_url_species

__Service Description:__ 	A service to get information urls of a list of species using EOL services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/sl/eol/get_links>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">species</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  list of species names delimited by pipe "|".
 				
  > __Note__: The service expects already resolved species names as input to provide the correct output.


__Example Commands/Requests:__

1. 

```
https://phylo.cs.nmsu.edu/phylotastic_ws/sl/eol/get_links?species=Dendrocygna bicolor|Anser albifrons|Cygnus buccinator
```


__Example Results:__

1. 

```json
{
	"input_species": [
		"Dendrocygna bicolor",
		"Anser albifrons",
		"Cygnus buccinator"
	],
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 5.97,
		"creation_time": "2017-10-21T09:27:32.037761",
		"source_urls": [
			"https://eol.org"
		]
	},
	"species": [
		{
			"species_info_link": "https://eol.org/914528?action=overview&controller=taxa",
			"searched_name": "Dendrocygna bicolor",
			"eol_id": 914528,
			"matched_name": "Dendrocygna bicolor (Vieillot, 1816)"
		},
		{
			"species_info_link": "https://eol.org/1048438?action=overview&controller=taxa",
			"searched_name": "Anser albifrons",
			"eol_id": 1048438,
			"matched_name": "Anser albifrons (Scopoli, 1769)"
		},
		{
			"species_info_link": "https://eol.org/913233?action=overview&controller=taxa",
			"searched_name": "Cygnus buccinator",
			"eol_id": 913233,
			"matched_name": "Cygnus buccinator Richardson, 1831"
		}
	]
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/sl/eol/links>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">species</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__ list of species names.
 				
  > __Note__: The service expects already resolved species names as input to provide the correct output.

__Example Commands/Requests:__

1. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/sl/eol/links -H 'content-type:application/json' -d '{"species": ["Melanerpes erythrocephalus","Melanerpes uropygialis"]}'
```

__Example Results:__

1. 
```json
{
	"input_species": [
		"Melanerpes erythrocephalus",
		"Melanerpes uropygialis"
	],
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 0.55,
		"creation_time": "2017-10-21T09:33:21.431243",
		"source_urls": [
			"https://eol.org"
		]
	},
	"species": [
		{
			"species_info_link": "https://eol.org/917154?action=overview&controller=taxa",
			"searched_name": "Melanerpes erythrocephalus",
			"eol_id": 917154,
			"matched_name": "Melanerpes erythrocephalus (Linnaeus, 1758)"
		},
		{
			"species_info_link": "https://eol.org/912554?action=overview&controller=taxa",
			"searched_name": "Melanerpes uropygialis",
			"eol_id": 912554,
			"matched_name": "Melanerpes uropygialis (S. F. Baird, 1854)"
		}
	]
}
```

__Citation/Source:__  	 	https://eol.org/api

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 50 species allowed__
 * *Expected response time:*  	__1s~25s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. specis)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Reached maximum input limit        | 403   | Error: Currently more than 50 species is not supported        |
   | Invalid method name in resource URI (e.g. /getlink)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_species_) will be an empty list.

Go to [__Top__](#servicesdocumentation).

---

## <a name='commonname'></a>Common Name to Scientific Name


   | Service Name |  Summary | 
   | :----------- | ---------: | 
   | [NCBI_common_name](#ncbicn) | Get scientific names of a list of species from its common name(vernacular name) using NCBI API. |
   | [EBI_commmon_name](#ebicn) | Get scientific names of a list of species from its common name(vernacular name) using EBI API. | 
   | [ITIS_common_name](#itiscn) | Get scientific names of a list of species from its common name(vernacular name) using ITIS API. |
   | [TROPICOS_commmon_name](#tpcscn) | Get scientific names of a list of species from its common name(vernacular name) using TROPICOS API. |
   



__Service Name:__  	 	<a name="ncbicn"></a>NCBI_common_name

__Service Description:__ 	A service to get scientific name of a species from its common name(vernacular name) using NCBI API.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/cs/ncbi/get_scientific_names>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">commonnames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  a list of common names for which to find scientific names delimited by pipe "|".
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results. By default it is `false`. If _multiple_match_ is enabled (`true`), then the service will return multiple matches (if available) for each common name in the input list.
  
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/cs/ncbi/get_scientific_names?commonnames=blue whale|swordfish|killer whale
```

2. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/cs/ncbi/get_scientific_names?commonnames=black bear&multiple_match=true
```


__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_names": [
				{
					"scientific_name": "Balaenoptera musculus",
					"common_name": "Blue whale",
					"identifier": "9771",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9771",
					"rank": "species"
				}
			],
			"searched_name": "blue whale"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Xiphias gladius",
					"common_name": "swordfish",
					"identifier": "8245",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=8245",
					"rank": "species"
				}
			],
			"searched_name": "swordfish"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Orcinus orca",
					"common_name": "killer whale",
					"identifier": "9733",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9733",
					"rank": "species"
				}
			],
			"searched_name": "killer whale"
		}
	],
	"metadata": {
		"execution_time": "3.18",
		"creation_time": "2018-03-27T18:04:33.050054",
		"source_urls": [
			"https://www.ncbi.nlm.nih.gov/taxonomy"
		]
	}
}
```

2. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_names": [
				{
					"scientific_name": "Ursus thibetanus formosanus",
					"common_name": "Formosan black bear",
					"identifier": "411875",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=411875",
					"rank": "subspecies"
				},
				{
					"scientific_name": "Ursus thibetanus japonicus",
					"common_name": "Japanese black bear",
					"identifier": "378754",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=378754",
					"rank": "subspecies"
				},
				{
					"scientific_name": "Ursus thibetanus ussuricus",
					"common_name": "Manchurian black bear",
					"identifier": "262111",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=262111",
					"rank": "subspecies"
				},
				{
					"scientific_name": "Ursus americanus",
					"common_name": "American black bear",
					"identifier": "9643",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9643",
					"rank": "species"
				},
				{
					"scientific_name": "Ursus thibetanus",
					"common_name": "Asiatic black bear",
					"identifier": "9642",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9642",
					"rank": "species"
				}
			],
			"searched_name": "black bear"
		}
	],
	"metadata": {
		"execution_time": "1.04",
		"creation_time": "2018-03-27T18:07:16.647440",
		"source_urls": [
			"https://www.ncbi.nlm.nih.gov/taxonomy"
		]
	}
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/cs/ncbi/scientific_names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">commonnames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of common names for which to find scientific names.
 				

2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results. By default it is `false`. If _multiple_match_ is enabled (`true`), then the service will return multiple matches (if available) for each common name in the input list.

 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/cs/ncbi/scientific_names" -H "content-type:application/json" -d '{"commonnames": ["cattle", "cat", "goat", "pig", "sheep", "duck", "chicken", "horse", "domestic dog"]}'
``` 

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_names": [
				{
					"scientific_name": "Bos taurus",
					"common_name": "cattle",
					"identifier": "9913",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9913",
					"rank": "species"
				}
			],
			"searched_name": "cattle"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Felis catus",
					"common_name": "domestic cat",
					"identifier": "9685",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9685",
					"rank": "species"
				}
			],
			"searched_name": "cat"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Capra hircus",
					"common_name": "goat",
					"identifier": "9925",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9925",
					"rank": "species"
				}
			],
			"searched_name": "goat"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Sus scrofa",
					"common_name": "pig",
					"identifier": "9823",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9823",
					"rank": "species"
				}
			],
			"searched_name": "pig"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Ovis aries",
					"common_name": "sheep",
					"identifier": "9940",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9940",
					"rank": "species"
				}
			],
			"searched_name": "sheep"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Anas platyrhynchos",
					"common_name": "mallard",
					"identifier": "8839",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=8839",
					"rank": "species"
				}
			],
			"searched_name": "duck"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Gallus gallus",
					"common_name": "chicken",
					"identifier": "9031",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9031",
					"rank": "species"
				}
			],
			"searched_name": "chicken"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Equus caballus",
					"common_name": "horse",
					"identifier": "9796",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9796",
					"rank": "species"
				}
			],
			"searched_name": "horse"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Canis lupus familiaris",
					"common_name": "dog",
					"identifier": "9615",
					"source_info_url": "https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?id=9615",
					"rank": "subspecies"
				}
			],
			"searched_name": "domestic dog"
		}
	],
	"metadata": {
		"execution_time": "14.11",
		"creation_time": "2018-03-27T18:17:23.671703",
		"source_urls": [
			"https://www.ncbi.nlm.nih.gov/taxonomy"
		]
	}
}
```


__Citation/Source:__         https://www.ncbi.nlm.nih.gov/taxonomy

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 30 species allowed__
 * *Expected response time:*  	__1s~60s__ (_might be longer depending on the number of input common names_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. common)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid method name in resource URI (e.g. /scname)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientific_name_) will be an empty string.

Go to [__Top__](#servicesdocumentation).

Go to [Common Name to Scientific Name](#commonname).

---

__Service Name:__  	 	<a name="ebicn"></a>EBI_common_name

__Service Description:__ 	A service to get scientific name of a species from its common name(vernacular name) using EBI API.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/cs/ebi/get_scientific_names>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">commonnames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  a list of common names for which to find scientific names delimited by pipe "|".
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results. By default it is `false`. If _multiple_match_ is enabled (`true`), then the service will return multiple matches (if available) for each common name in the input list.
  
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/cs/ebi/get_scientific_names?commonnames=American robin|House sparrow
```


__Example Results:__

1. 
```json
{
    "status_code":200,
    "message":"Success",
    "result":[
        {
            "matched_names":[
                {
                    "scientific_name":"Turdus migratorius",
                    "common_name":"American robin",
                    "identifier":"9188"
                }
            ],
            "searched_name":"American robin"
        },
        {
            "matched_names":[
                {
                    "scientific_name":"Passer domesticus",
                    "common_name":"House sparrow",
                    "identifier":"48849"
                }
            ],
            "searched_name":"House sparrow"
        }
    ],
    "metadata":{
        "execution_time":"2.17",
        "creation_time":"2019-03-21T07:40:34.438447",
        "source_urls":[
            "https://www.ebi.ac.uk"
        ]
    }
}
```


__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/cs/ebi/scientific_names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">commonnames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of common names for which to find scientific names.
 				

2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results. By default it is `false`. If _multiple_match_ is enabled (`true`), then the service will return multiple matches (if available) for each common name in the input list.

 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/cs/ebi/scientific_names" -H "content-type:application/json" -d '{"commonnames": ["cow", "horse", "dog"]}'
``` 

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_names": [
				{
					"scientific_name": "Bos taurus",
					"common_name": "cattle",
					"identifier": "9913"
				}
			],
			"searched_name": "cow"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Equus caballus",
					"common_name": "horse",
					"identifier": "9796"
				}
			],
			"searched_name": "horse"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Canis lupus familiaris",
					"common_name": "dog",
					"identifier": "9615"
				}
			],
			"searched_name": "dog"
		}
	],
	"metadata": {
		"execution_time": "3.34",
		"creation_time": "2019-03-21T07:43:10.395471",
		"source_urls": [
			"https://www.ebi.ac.uk"
		]
	}
}
```


__Citation/Source:__         https://www.ebi.ac.uk

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 20 species allowed__
 * *Expected response time:*  	__1s~60s__ (_might be longer depending on the number of input common names_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. common)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid method name in resource URI (e.g. /scname)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientific_name_) will be an empty string.

Go to [__Top__](#servicesdocumentation).

Go to [Common Name to Scientific Name](#commonname).

---


__Service Name:__  	 	<a name="itiscn"></a>ITIS_common_name

__Service Description:__ 	A service to get scientific name of a species from its common name(vernacular name) using ITIS API.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/cs/itis/get_scientific_names>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">commonnames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  a list of common names for which to find scientific names delimited by pipe "|".
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results. By default it is `false`. If _multiple_match_ is enabled (`true`), then the service will return multiple matches (if available) for each common name in the input list.
  
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/cs/itis/get_scientific_names?commonnames=Brown bear|Gray wolf
```

2. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/cs/itis/get_scientific_names?commonnames=Christmas fern&multiple_match=true
```


__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_names": [
				{
					"scientific_name": "Ursus arctos arctos",
					"common_name": "brown bear",
					"identifier": "202383",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=202383"
				}
			],
			"searched_name": "Brown bear"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Canis lupus",
					"common_name": "Gray Wolf",
					"identifier": "180596",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=180596"
				}
			],
			"searched_name": "Gray wolf"
		}
	],
	"metadata": {
		"execution_time": "1.49",
		"creation_time": "2018-03-27T18:30:59.691914",
		"source_urls": [
			"https://www.itis.gov/ws_description.html"
		]
	}
}
```

2. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_names": [
				{
					"scientific_name": "Polystichum",
					"common_name": "Christmas fern",
					"identifier": "17674",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=17674"
				},
				{
					"scientific_name": "Polystichum acrostichoides var. lonchitoides",
					"common_name": "Christmas fern",
					"identifier": "529800",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=529800"
				},
				{
					"scientific_name": "Polystichum acrostichoides var. acrostichoides",
					"common_name": "Christmas fern",
					"identifier": "529799",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=529799"
				},
				{
					"scientific_name": "Polystichum acrostichoides",
					"common_name": "Christmas fern",
					"identifier": "17675",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=17675"
				}
			],
			"searched_name": "Christmas fern"
		}
	],
	"metadata": {
		"execution_time": "1.75",
		"creation_time": "2018-03-27T18:36:53.194863",
		"source_urls": [
			"https://www.itis.gov/ws_description.html"
		]
	}
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/cs/itis/scientific_names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">commonnames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of common names for which to find scientific names.
 				

2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results. By default it is `false`. If _multiple_match_ is enabled (`true`), then the service will return multiple matches (if available) for each common name in the input list.

 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/cs/itis/scientific_names" -H "content-type:application/json" -d '{"commonnames": ["Flowering dogwood", "White oak", "Oregon pine", "Button mangrove", "Yellow mombin"]}'
``` 

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_names": [
				{
					"scientific_name": "Cornus florida",
					"common_name": "flowering dogwood",
					"identifier": "27806",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=27806"
				}
			],
			"searched_name": "Flowering dogwood"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Quercus alba",
					"common_name": "white oak",
					"identifier": "19290",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=19290"
				}
			],
			"searched_name": "White oak"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Pseudotsuga menziesii",
					"common_name": "Oregon pine",
					"identifier": "183424",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=183424"
				}
			],
			"searched_name": "Oregon pine"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Conocarpus erectus",
					"common_name": "button mangrove",
					"identifier": "27766",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=27766"
				}
			],
			"searched_name": "Button mangrove"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Spondias mombin",
					"common_name": "yellow mombin",
					"identifier": "28816",
					"source_info_url": "https://www.itis.gov/ITISWebService/jsonservice/ITISService/getFullRecordFromTSN?tsn=28816"
				}
			],
			"searched_name": "Yellow mombin"
		}
	],
	"metadata": {
		"execution_time": "3.59",
		"creation_time": "2018-03-27T18:40:46.311511",
		"source_urls": [
			"https://www.itis.gov/ws_description.html"
		]
	}
}
```


__Citation/Source:__         https://www.itis.gov/ws_description.html

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 30 species allowed__
 * *Expected response time:*  	__1s~60s__ (_might be longer depending on the number of input common names_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. common)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid method name in resource URI (e.g. /scname)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientific_name_) will be an empty string.

Go to [__Top__](#servicesdocumentation).

Go to [Common Name to Scientific Name](#commonname).

---

__Service Name:__  	 	<a name="tpcscn"></a>TROPICOS_common_name

__Service Description:__ 	A service to get scientific name of a species from its common name(vernacular name) using TROPICOS API.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/cs/tpcs/get_scientific_names>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">commonnames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  a list of common names for which to find scientific names delimited by pipe "|".
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results. By default it is `false`. If _multiple_match_ is enabled (`true`), then the service will return multiple matches (if available) for each common name in the input list.
  
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/cs/tpcs/get_scientific_names?commonnames=Castor bean|Indian sandalwood|Annual blue grass
```


__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_names": [
				{
					"scientific_name": "Ricinus communis",
					"identifier": 12800093,
					"source_info_url": "https://www.tropicos.org/Name/12800093",
					"rank": "species"
				}
			],
			"searched_name": "Castor bean"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Santalum album",
					"identifier": 28500042,
					"source_info_url": "https://www.tropicos.org/Name/28500042",
					"rank": "species"
				}
			],
			"searched_name": "Indian sandalwood"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Poa annua",
					"identifier": 25509881,
					"source_info_url": "https://www.tropicos.org/Name/25509881",
					"rank": "species"
				}
			],
			"searched_name": "Annual blue grass"
		}
	],
	"metadata": {
		"execution_time": "2.68",
		"creation_time": "2018-03-27T18:48:22.193809",
		"source_urls": [
			"https://services.tropicos.org/"
		]
	}
}
```


__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/cs/tpcs/scientific_names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">commonnames</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of common names for which to find scientific names.
 				

2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">multiple_match</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a boolean value to specify whether to return multiple match results. By default it is `false`. If _multiple_match_ is enabled (`true`), then the service will return multiple matches (if available) for each common name in the input list.

 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/cs/tpcs/scientific_names" -H "content-type:application/json" -d '{"commonnames": ["cucumber", "tomato", "lettuce", "pea"]}'
``` 

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_names": [
				{
					"scientific_name": "Cucumis sativus",
					"identifier": 9200572,
					"source_info_url": "https://www.tropicos.org/Name/9200572",
					"rank": "species"
				}
			],
			"searched_name": "cucumber"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Lycopersicon esculentum",
					"identifier": 29602513,
					"source_info_url": "https://www.tropicos.org/Name/29602513",
					"rank": "species"
				}
			],
			"searched_name": "tomato"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Lactuca sativa",
					"identifier": 2710604,
					"source_info_url": "https://www.tropicos.org/Name/2710604",
					"rank": "species"
				}
			],
			"searched_name": "lettuce"
		},
		{
			"matched_names": [
				{
					"scientific_name": "Pisum sativum",
					"identifier": 13031856,
					"source_info_url": "https://www.tropicos.org/Name/13031856",
					"rank": "species"
				}
			],
			"searched_name": "pea"
		}
	],
	"metadata": {
		"execution_time": "3.60",
		"creation_time": "2018-03-27T18:50:56.838480",
		"source_urls": [
			"https://services.tropicos.org/"
		]
	}
}
```


__Citation/Source:__         https://services.tropicos.org/

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 30 species allowed__
 * *Expected response time:*  	__1s~60s__ (_might be longer depending on the number of input common names_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. common)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid method name in resource URI (e.g. /scname)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientific_name_) will be an empty string.

Go to [__Top__](#servicesdocumentation).

Go to [Common Name to Scientific Name](#commonname).

---

## <a name='specieslist'></a>Species List Manipulation

__Service Name:__  	 	Add_new_list

__Service Description:__ 	A service to insert a new list of species into the phylotastic list server.

__Resource URI:__  	<https://phylo.cs.nmsu.edu/phylotastic_ws/sls/insert_list>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
  				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">user_id</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  unique id (valid gmail address) of a phylotastic web application/services user.

2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list</span> 
  * __Category:__  	mandatory
  * __Data Type:__  complex json object
  * __Description:__  unique id (valid gmail address) of a phylotastic web application/services user.

All data and metadata related to the new list of species encapsulated in a complex json object. The complex json object has the following properties:--
  + Property name: __list_title__ 
    + Data type: string
    + Category: mandatory
    + Description: title of the new list. 
  + Property name: __list_description__
    + Data type: string
    + Category: optional
    + Description: description of the new list.
  + Property name: __list_author__
    + Data type: a list of strings
    + Category: optional
    + Description: names of the original authors who prepared the list.
  + Property name: __list_date_published__
    + Data type: string (format: *mm-dd-yyyy*)
    + Category: optional
    + Description: date when the new list is being posted.
  + Property name: __list_curator__
    + Data type: string
    + Category: mandatory
    + Description: name of the curator of the new list.
  + Property name: __list_curation_date__
    + Data type: string (format: *mm-dd-yyyy*)
    + Category: mandatory
    + Description: date when the new list is being curated.
  + Property name: __list_source__
    + Data type: string
    + Category: mandatory
    + Description: source of the new list (url, publication).
  + Property name: __list_keywords__
    + Data type: a list of strings
    + Category: optional
    + Description: keywords related to the new list.
  + Property name: __list_focal_clade__
    + Data type: string
    + Category: optional
    + Description:  focal_clade of the new list.
  + Property name: __list_extra_info__
    + Data type: string
    + Category: optional
    + Description:  extra information about the new list.
  + Property name: __list_origin__
    + Data type: string
    + Category: mandatory
    + Description:  the origin from where the new list is being posted. (Permitted values: `webapp` or `mobileapp` or `script`).
  + Property name: __is_list_public__
    + Data type: boolean
    + Category: optional
    + Description:  By default `false`. Set to `true` if the new list posted can be viewed by public. 
  + Property name: __list_species__
    + Data type: a list of [json species object](#jsonspecies)
    + Category: mandatory
    + Description:  the data about species belonging to the list.

<a name="jsonspecies">The json species object</a> contains the actual data (species). It has the following properties:

+ Property name: __vernacular_name__ 
    + Data type: string
    + Category: mandatory
    + Description: vernacular name of the species. 
+ Property name: __scientific_name__
    + Data type: string
    + Category: mandatory
    + Description: scientific name of the species.
+ Property name: __scientific_name_authorship__
    + Data type: string
    + Category: optional
    + Description: authorship of the scientific name of the species.
+ Property name: __family__
    + Data type: string
    + Category: optional
    + Description: the taxonomic rank family where the species belongs to.
+ Property name: __order__
    + Data type: string
    + Category: optional
    + Description: the taxonomic rank order where the species belongs to.
+ Property name: __class__
    + Data type: string
    + Category: optional
    + Description: the taxonomic rank class where the species belongs to.
+ Property name: __phylum__
    + Data type: string
    + Category: optional
    + Description: the taxonomic rank phylum where the species belongs to.
+ Property name: __nomenclature_code__
    + Data type: string
    + Category: optional
    + Description: the nomenclatural code of the species.


__Example Commands/Requests:__ 

1. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/sls/insert_list -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "list": {"list_extra_info": "", "list_description": "A list of the bird species and their endangered, threatened or invasive status", "list_keywords": ["Bird", "Endangered species", "Everglades"], "list_curator": "HD Laughinghouse", "list_origin": "script", "list_curation_date": "02-24-2016", "list_source": "Des", "list_focal_clade": "Aves", "list_title": "Bird Species List for Everglades National Park", "list_author": ["Bass, O.", "Cunningham, R."], "is_list_public": true, "list_species": [{"family": "Anatidae", "scientific_name": "Aix sponsa", "vernacular_name": "Wood Duck", "nomenclature_code": "ICZN", "order": "Anseriformes"}, {"family": "Anatidae", "scientific_name": "Anas strepera", "vernacular_name": "Gadwall", "nomenclature_code": "ICZN", "order": "Anseriformes"}, {"family": "Caprimulgidae", "scientific_name": "Caprimulgus vociferus", "scientific_name_authorship": "", "vernacular_name": "Whip-poor-will","nomenclature_code": "ICZN", "order": "Caprimulgiformes"}]}}'
```

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"user_id": "hdail.laughinghouse@gmail.com",
	"list_id": 24
}
```

__Service Quality:__

 * *Restrictions on capacity:*  __none__
 * *Expected response time:*  	__1s~5s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. user)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid method name in resource URI (e.g. /insert)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

   > __Note__: Validity of the user_id (_gmail address_) in the input request is not checked by the service. The user needs to provide a valid id to retrieve the list later using __list_id__ value returned by the service. 


---

__Service Name:__  	 	 Get_list

__Service Description:__ 	A service to get public lists of species or private lists of species owned by a phylotastic web application/services user.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/sls/get_list>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">user_id</span> 
  * __Category:__  	mandatory/optional
  * __Data Type:__  string
  * __Description:__  unique id (valid gmail address) of a phylotastic web application/services user.

  > __Note__: *user_id* parameter is mandatory only if a user wants to view all the lists (public/private) owned by the *user_id*  **OR** if a user wants to view a specific private list owned by the *user_id*. 

  > *user_id* parameter is not needed if a user wants to view all available public lists.
 
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list_id</span> 
  * __Category:__  	mandatory/optional
  * __Data Type:__  integer
  * __Description:__  list id of a specific list.

  > __Note__: *list_id* parameter is mandatory only if a user wants to view a specific private list identified by *list_id* and owned by the *user_id* **OR** if a user wants to view a specific public list identified by *list_id* and owned by other user.

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">access_token</span> 
  * __Category:__  	mandatory/optional
  * __Data Type:__  string
  * __Description:__  access token for the user with *user_id* (valid gmail address).

  > __Note__: *access_token* parameter is used for authenticating the user with valid gmail address. It is mandatory only if a user wants to view all the lists (public/private) owned by the *user_id* **OR** if a user wants to view a specific private list identified by *list_id* and owned by the *user_id*.

4. Parameter details:
  * __Name:__ 	 	<span style="color:blue">verbose</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  It is an optional parameter which is by default *false* and shows minimal meta-data of the list. When given *true* it will display all meta-data related to that list and species collection.

5. Parameter details:
  * __Name:__ 	 	<span style="color:blue">content</span> 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  It is an optional parameter which is by default *true* and shows the species collection of the list. When given *false* it will not display any species collection of the list.


__Example Commands/Requests:__ 

> __Note__: *access_token* values presented below is just used as an example. Testing the urls in the examples using these tokens will not work. The user has to provide a valid unexpired access token for his/her gmail address. The procedure for getting an *access_token* can be found [here](https://github.com/phylotastic/phylo_services_docs/blob/master/SpeciesListServer/AccessToken.md#how-to-get-access-token-to-use-in-species-list-web-services).


1. To get all the public lists available:
```
https://phylo.cs.nmsu.edu/phylotastic_ws/sls/get_list
```
2. To get a specific public list with ID 24:
```
https://phylo.cs.nmsu.edu/phylotastic_ws/sls/get_list?list_id=24
```
3. To get all lists of user with ID *hdail.laughinghouse@gmail.com*:
```
https://phylo.cs.nmsu.edu/phylotastic_ws/sls/get_list?user_id=hdail.laughinghouse@gmail.com&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```
4. To get a specific private list with ID 20 and owned by hdail.laughinghouse@gmail.com:
```
https://phylo.cs.nmsu.edu/phylotastic_ws/sls/get_list?user_id=hdail.laughinghouse@gmail.com&list_id=20&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```
5. To get a specific private list (including all metadata available) with ID 20 and owned by hdail.laughinghouse@gmail.com:
```
https://phylo.cs.nmsu.edu/phylotastic_ws/sls/get_list?user_id=hdail.laughinghouse@gmail.com&list_id=20&verbose=true&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```

__Example Results:__

2. 
```json
{
	"status_code": 200,
	"message": "Success",
	"list": {
		"list_title": "Bird Species List for Everglades National Park",
		"list_species": [
			"Aix sponsa",
			"Anas strepera",
			"Caprimulgus vociferus"
		],
		"list_id": 24
	}
}
```

__Service Quality:__

 * *Restrictions on capacity:*  __none__
 * *Expected response time:*  	__1s~5s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. token)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid or expired _access_token_ value       | 401   |         |
   | Invalid method name in resource URI (e.g. /getlist)       | 404   | Error: Could not find the requested resource URI        |
   | Nonexistent _user_id_ or _list_id_ value       | 409   |         |
   | Internal server error       | 500   |         |


Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	 Replace_species_list 

__Service Description:__ 	A service to replace the [species objects](#jsonspecies) of an existing list with new species objects.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/sls/replace_species>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">user_id</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  unique id (valid gmail address) of a phylotastic web application/services user.

2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list_id</span> 
  * __Category:__  	mandatory
  * __Data Type:__  integer
  * __Description:__  unique id of an existing list.

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">access_token</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  access token for the user with *user_id* (valid gmail address).

4. Parameter details:
  * __Name:__ 	 	<span style="color:blue">species</span> 
  * __Category:__  	mandatory
  * __Data Type:__  a list of [json species object](#jsonspecies)
  * __Description:__  a list of json species objects to replace the existing species objects.

 
__Example Commands/Requests:__ 

1. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/sls/replace_species -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "access_token": "ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA", "list_id": 24, "species":[{"family": "Columbidae", "scientific_name": "Columba livia", "vernacular_name": "Rock Dove", "nomenclature_code": "ICZN", "order": "Columbiformes", "class": "Aves"}, {"family": "Alcedinidae", "scientific_name": "Megaceryle alcyon", "vernacular_name": "Belted Kingfisher", "phylum": "Chordata", "nomenclature_code": "ICZN", "order": "Coraciiformes"}, {"family": "Aramidae", "scientific_name": "Aramus guarauna", "vernacular_name": "Limpkin", "nomenclature_code": "ICZN", "order": "Gruiformes", "class": "Aves"}]}'
```

__Example Results:__

1. 
```json
{
	"user_id": "hdail.laughinghouse@gmail.com",
	"date_modified": "2017-10-22T22:37:57.947308",
	"status_code": 200,
	"old_species": [
		{
			"family": "Anatidae",
			"scientific_name": "Aix sponsa",
			"scientific_name_authorship": "NA",
			"order": "Anseriformes",
			"vernacular_name": "Wood Duck",
			"phylum": "NA",
			"nomenclature_code": "ICZN",
			"class": "NA"
		},
		{
			"family": "Anatidae",
			"scientific_name": "Anas strepera",
			"scientific_name_authorship": "NA",
			"order": "Anseriformes",
			"vernacular_name": "Gadwall",
			"phylum": "NA",
			"nomenclature_code": "ICZN",
			"class": "NA"
		},
		{
			"family": "Caprimulgidae",
			"scientific_name": "Caprimulgus vociferus",
			"scientific_name_authorship": "",
			"order": "Caprimulgiformes",
			"vernacular_name": "Whip-poor-will",
			"phylum": "NA",
			"nomenclature_code": "ICZN",
			"class": "NA"
		}
	],
	"new_species": [
		{
			"family": "Columbidae",
			"scientific_name": "Columba livia",
			"scientific_name_authorship": "NA",
			"order": "Columbiformes",
			"vernacular_name": "Rock Dove",
			"phylum": "NA",
			"nomenclature_code": "ICZN",
			"class": "Aves"
		},
		{
			"family": "Alcedinidae",
			"scientific_name": "Megaceryle alcyon",
			"scientific_name_authorship": "NA",
			"class": "NA",
			"vernacular_name": "Belted Kingfisher",
			"phylum": "Chordata",
			"nomenclature_code": "ICZN",
			"order": "Coraciiformes"
		},
		{
			"family": "Aramidae",
			"scientific_name": "Aramus guarauna",
			"scientific_name_authorship": "NA",
			"order": "Gruiformes",
			"vernacular_name": "Limpkin",
			"phylum": "NA",
			"nomenclature_code": "ICZN",
			"class": "Aves"
		}
	],
	"list_id": 24,
	"list_title": "Bird Species List for Everglades National Park",
	"message": "Success"
}
```

__Service Quality:__

 * *Restrictions on capacity:*  __none__
 * *Expected response time:*  	__1s~5s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. token)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid or expired _access_token_ value       | 401   |         |
   | Invalid method name in resource URI (e.g. /replace)       | 404   | Error: Could not find the requested resource URI        |
   | Nonexistent _user_id_ or _list_id_ value       | 409   |         |
   | Internal server error       | 500   |         |


Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	 Update_metadata_list 

__Service Description:__ 	A service to update properties (metadata) of an existing list.

__Resource URI:__  		<https://phylo.cs.nmsu.edu:5005/phylotastic_ws/sls/update_list>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">user_id</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  unique id (valid gmail address) of a phylotastic web application/services user.

2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list_id</span> 
  * __Category:__  	mandatory
  * __Data Type:__  integer
  * __Description:__  unique id of an existing list.

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">access_token</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  access token for the user with *user_id* (valid gmail address).

4. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list</span> 
  * __Category:__  	mandatory
  * __Data Type:__  a json list __sub-object__ consisting of a subset of list properties.
  * __Description:__  an object consisting of a subset of list properties (metadata) that need to be updated.

 
__Example Commands/Requests:__ 

1. To change the source and date_published of a list with ID 24.
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/sls/update_list -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "access_token": "ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA", "list_id": 24, "list": {"list_source": "Bass, O. & Cunningham, R. (2006) Everglades National Park Bird Checklist. Miami: Everglades Association", "list_date_published": "05-02-2006"}}'
```

2. To change type of a list with ID 24 from "public" to "private":
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/sls/update_list -H 'content-type:application/json' -d '{"user_id": "hdail.laughinghouse@gmail.com", "access_token": "ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA", "list_id": 24, "list": {"is_list_public": false}}'
```

__Example Results:__

1. 
```json
{
	"user_id": "hdail.laughinghouse@gmail.com",
	"date_modified": "2017-10-22T23:05:53.240754",
	"status_code": 200,
	"modified_content": {
		"list_source": "Bass, O. & Cunningham, R. (2006) Everglades National Park Bird Checklist. Miami: Everglades Association",
		"list_date_published": "05-02-2006"
	},
	"list_id": 24,
	"list_title": "Bird Species List for Everglades National Park",
	"message": "Success"
}
```

__Service Quality:__

 * *Restrictions on capacity:*  __none__
 * *Expected response time:*  	__1s~5s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. token)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid or expired _access_token_ value       | 401   |         |
   | Invalid method name in resource URI (e.g. /update)       | 404   | Error: Could not find the requested resource URI        |
   | Nonexistent _user_id_ or _list_id_ value       | 409   |         |
   | Internal server error       | 500   |         |

Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	 Remove_list 

__Service Description:__ 	A service to remove an existing list.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/sls/remove_list>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">user_id</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  unique id (valid gmail address) of a phylotastic web application/services user.

2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list_id</span> 
  * __Category:__  	mandatory
  * __Data Type:__  integer
  * __Description:__  unique id of an existing list.

3. Parameter details:
  * __Name:__ 	 	<span style="color:blue">access_token</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  access token for the user with *user_id* (valid gmail address).


__Example Commands/Requests:__ 

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/sls/remove_list?user_id=hdail.laughinghouse@gmail.com&list_id=24&access_token=ya29..zQLmLjbyujJjwV6RVSM2sy-mkeaKu-9_n7y7iB6uKuL-rHDGp3W2_hPWUSO5uX_OcA
```

__Example Results:__

1.  
```json
{
	"user_id": "hdail.laughinghouse@gmail.com",
	"status_code": 200,
	"list_id": 24,
	"date_removed": "2017-10-22T23:22:03.032718",
	"list_title": "Bird Species List for Everglades National Park",
	"message": "Success"
}
```

__Service Quality:__

 * *Restrictions on capacity:*  __none__
 * *Expected response time:*  	__1s~5s__
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. token)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid or expired _access_token_ value       | 401   |         |
   | Invalid method name in resource URI (e.g. /deletelist)       | 404   | Error: Could not find the requested resource URI        |
   | Nonexistent _user_id_ or _list_id_ value       | 409   |         |
   | Internal server error       | 500   |         |


Go to [__Top__](#servicesdocumentation).

---

## <a name='treescaling'></a>Tree Scaling

| Service Name |  Summary | 
   | :----------- | ---------: | 
   | [Datelife_scale_tree](#datelifescale) | Gets Phylogenetic Trees with branch lengths using Datelife R package. | 
   | [OToL_scale_tree](#otscale) | Gets Phylogenetic Trees with branch lengths using Open Tree of Life API. |


__Service Name:__  	 	 <a name="datelifescale"></a>Datelife_scale_tree 

__Service Description:__ 	A service to get Phylogenetic Trees with branch lengths using Datelife R package.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/sc/scale>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">newick</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  tree in newick string format.

2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">method</span> 
  * __Category:__  	optional
  * __Data Type:__  string
  * __Description:__  a string value to specify which method should be used for scaling. Valid values include `median` or `sdm`. `median` is the default scaling method which uses the median of all source chronograms. `sdm` method uses SDM supertree method (Criscuolo et al. 2006).


__Example Commands/Requests:__ 

1. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/sc/scale -H 'content-type:application/json' -d '{"newick": "((Zea mays,Oryza sativa),((Arabidopsis thaliana,(Glycine max,Medicago sativa)),Solanum lycopersicum)Pentapetalae);", "method": "sdm"}'
```

2. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/sc/scale -H 'content-type:application/json' -d '{"newick": "(((((Canis lupus pallipes,Melursus ursinus)Caniformia,((Panthera tigris,Panthera pardus)Panthera,Herpestes fuscus))Carnivora,(Macaca mulatta,Homo sapiens)Catarrhini)Boreoeutheria,Elephas maximus)Eutheria,Haliastur indus)Amniota;"}'
```


__Example Results:__

1. 
```json
{
	"method_used": "sdm",
	"status_code": 200,
	"scaled_tree": "(Solanum lycopersicum:141.8861801,((Zea mays:106.2589771,Oryza sativa:106.2589771):35.62720301,(Arabidopsis thaliana:117.1887019,(Glycine max:97.3424611,Medicago sativa:97.3424611):19.84624085):24.69747818):0);",
	"meta_data": {
		"execution_time": 3.26,
		"creation_time": "2017-10-23T07:49:51.503483",
		"source_urls": [
			"https://datelife.org/"
		]
	},
	"input_tree": "((Zea mays,Oryza sativa),((Arabidopsis thaliana,(Glycine max,Medicago sativa)),Solanum lycopersicum)Pentapetalae);",
	"message": "Success"
}
```

2. 
```json
{
	"method_used": "median",
	"status_code": 200,
	"scaled_tree": "((((Homo sapiens:29.126382,Macaca mulatta:29.126382):69.773618,(((Panthera pardus:6.4,Panthera tigris:6.4):34.300001,Herpestes fuscus:40.700001):24.199999,(Canis lupus pallipes:16.775,Melursus ursinus:16.775):48.125):34):10.65,Elephas maximus:109.55):17.078571,Haliastur indus:126.628571);",
	"meta_data": {
		"execution_time": 3.16,
		"creation_time": "2017-10-23T07:50:31.586571",
		"source_urls": [
			"https://datelife.org/"
		]
	},
	"input_tree": "(((((Canis lupus pallipes,Melursus ursinus)Caniformia,((Panthera tigris,Panthera pardus)Panthera,Herpestes fuscus))Carnivora,(Macaca mulatta,Homo sapiens)Catarrhini)Boreoeutheria,Elephas maximus)Eutheria,Haliastur indus)Amniota;",
	"message": "Success"
}
```

__Citation/Source:__  	 	https://datelife.org/


__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source_)
 * *Expected response time:*  	__1s~10s__ (_might be longer depending on the input tree_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. newik)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid method name in resource URI (e.g. /scal)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |


Go to [__Tree Scaling__](#treescaling).

Go to [__Top__](#servicesdocumentation).

--- 

__Service Name:__  	 	 <a name="otscale"></a>OToL_scale_tree 

__Service Description:__ 	A service to get Phylogenetic Trees with branch lengths using Open Tree of Life API.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/sc/ot/scale>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">newick</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  tree in newick string format.


__Example Commands/Requests:__ 

1. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/sc/ot/scale -H 'content-type:application/json' -d '{"newick": "(Aulacopone_relicta,(((Myrmecia_gulosa,(Aneuretus_simoni,Dolichoderus_mariae)),((Ectatomma_ruidum,Huberia_brounii),Formica_rufa)),Apomyrma_stygia),Martialis_heureka)Formicidae;"}'
```


__Example Results:__

1. 
```json
{
	"status_code": 200, 
	"message": "Success", 
	"meta_data": {
		"execution_time": 0.5, 
		"creation_time": "2018-06-21T19:28:39.183334", 
		"source_urls": ["https://141.211.236.35:10999/"]
	}, 
	"scaled_tree": "(((((Dolichoderus mariae:111.297,Aneuretus simoni:111.295)1:3.36907,Myrmecia gulosa:114.667)1:7.64397,((Huberia brounii:110.002,Ectatomma ruidum:110)1:2.67009,Formica rufa:112.675)1:9.63354)1:27.6989,Apomyrma stygia:150)1:13.2012,Martialis heureka:163.2,Aulacopone relicta:163.2);", 
	"input_tree": "(Aulacopone_relicta,(((Myrmecia_gulosa,(Aneuretus_simoni,Dolichoderus_mariae)),((Ectatomma_ruidum,Huberia_brounii),Formica_rufa)),Apomyrma_stygia),Martialis_heureka)Formicidae;",
}
```


__Citation/Source:__  	 	https://141.211.236.35:10999/


__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source_)
 * *Expected response time:*  	__1s~10s__ (_might be longer depending on the input tree_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. newik)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid method name in resource URI (e.g. /scal)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

Go to [__Tree Scaling__](#treescaling).

Go to [__Top__](#servicesdocumentation).

---

## <a name='misc'></a>Miscellaneous

__Service Name:__  	 	OToL_supported_studies

__Service Description:__ 	A service to get supported studies of an induced tree from OpenTreeOfLife.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/md/get_studies>

__HTTP Method:__ 		GET or POST

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  pipe ("|") delimited list of OpenTree ids of taxon names or taxon names depending on the __list_type__ parameter value.
 				
2. Parameter details:
  * __Name:__ 	 	list_type 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  a string value to specify which type (taxon names or OpenTree ids of taxon names) of list is provided as input. Valid values include `ottids` or `taxa`. __ottids__ list type denotes a list which contains OpenTree ids of taxon names and __taxa__ list type denotes a list which contains taxon names.
  
__Example Commands/Requests:__ 

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/md/get_studies?list=532117|42322|42324|563151|42314&list_type=ottids
```

2. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/md/get_studies?list=Setophaga striata|Setophaga magnolia|Setophaga angelae|Setophaga plumbea|Setophaga virens&list_type=taxa
```


__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 1.16,
		"creation_time": "2017-10-23T23:14:32.224069",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#studies"
		]
	},
	"studies": [
		{
			"PublicationYear": 2006,
			"FocalCladeTaxonName": "Felidae",
			"Publication": "Johnson, W.E., Eizirik E., Pecon-slattery J., Murphy W., Antunes A., Teeling E., & O'brien S. 2006. The late Miocene radiation of modern Felidae: a genetic assessment. Science 311(5757): 73-77.",
			"CandidateTreeForSynthesis": "tree4052",
			"PublicationDOI": "https://dx.doi.org/10.1126/science.1122277",
			"DataRepository": "https://purl.org/phylo/treebase/phylows/study/TB2:S11931",
			"Curator": "Chris Owen",
			"PublicationIdentifier": "pg_1981"
		}
	]
}
```
 
2. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 7.54,
		"creation_time": "2017-10-23T23:13:37.216688",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#studies"
		]
	},
	"studies": [
		{
			"PublicationYear": 2010,
			"FocalCladeTaxonName": "Parulidae",
			"Publication": "Lovette, Irby J., Jorge L. Pérez-Emán, John P. Sullivan, Richard C. Banks, Isabella Fiorentino, Sergio Córdoba-Córdoba, María Echeverry-Galvis, F. Keith Barker, Kevin J. Burns, John Klicka, Scott M. Lanyon, Eldredge Bermingham. 2010. A comprehensive multilocus phylogeny for the wood-warblers and a revised classification of the Parulidae (Aves). Molecular Phylogenetics and Evolution 57 (2): 753-770.",
			"CandidateTreeForSynthesis": "tree6024",
			"PublicationDOI": "https://dx.doi.org/10.1016/j.ympev.2010.07.018",
			"DataRepository": "",
			"Curator": "Joseph W. Brown",
			"PublicationIdentifier": "pg_2591"
		},
		{
			"PublicationYear": 2015,
			"FocalCladeTaxonName": "Passeriformes",
			"Publication": "Barker, F. Keith, Kevin J. Burns, John Klicka, Scott M. Lanyon, Irby J. Lovette. 2015. New insights into New World biogeography: An integrated view from the phylogeny of blackbirds, cardinals, sparrows, tanagers, warblers, and allies. The Auk 132 (2): 333-348.",
			"CandidateTreeForSynthesis": "tree1",
			"PublicationDOI": "https://dx.doi.org/10.1642/auk-14-110.1",
			"DataRepository": "https://datadryad.org/resource/doi:10.5061/dryad.pb787",
			"Curator": "Joseph W. Brown",
			"PublicationIdentifier": "ot_770"
		}
	]
}
```

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/md/studies>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of string or integers depending on the __list_type__ parameter value
  * __Description:__  a list of OpenTree ids of taxon names or taxon names depending on the __list_type__ parameter value
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list_type</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  a string value to specify which type (taxon names or OpenTree ids of taxon names) of list is provided as input. Valid values include `ottids` or `taxa`. __ottids__ list type denotes a list which contains OpenTree ids of taxon names and __taxa__ list type denotes a list which contains taxon names 				
 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/md/studies -H "content-type:application/json" -d '{"list":[1094064,860906,257323,698438,698406,187220,336231,124230], "list_type": "ottids"}'
```

2. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/md/studies -H "content-type:application/json" -d '{"list":["Delphinidae","Delphinus capensis","Delphinus delphis","Tursiops truncatus","Tursiops aduncus","Sotalia fluviatilis","Sousa chinensis"], "list_type": "taxa"}'
```

__Example Results:__

1. 

```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 6.78,
		"creation_time": "2017-10-23T23:17:28.117181",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#studies"
		]
	},
	"studies": [
		{
			"PublicationYear": 2009,
			"FocalCladeTaxonName": "Cetacea",
			"Publication": "McGowen, M., Spaulding M., and Gatesy J. 2009. Divergence date estimation and a comprehensive molecular tree of extant cetaceans. Molecular Phylogenetics and Evolution 53 (3): 891-906.",
			"CandidateTreeForSynthesis": "tree5998",
			"PublicationDOI": "https://dx.doi.org/10.1016/j.ympev.2009.08.018",
			"DataRepository": "https://purl.org/phylo/treebase/phylows/study/TB2:S10190",
			"Curator": "Chris Owen",
			"PublicationIdentifier": "pg_2587"
		},
		{
			"PublicationYear": 2009,
			"FocalCladeTaxonName": "Cetacea",
			"Publication": "Steeman, M., Hebsgaard M., Fordyce R., Ho S., Rabosky D., Nielsen R., Rahbek C., Glenner H., Sørensen M., & Willerslev E. 2009. Radiation of Extant Cetaceans Driven by Restructuring of the Oceans. Systematic Biology 58 (6): 573-585.",
			"CandidateTreeForSynthesis": "tree6215",
			"PublicationDOI": "https://dx.doi.org/10.1093/sysbio/syp060",
			"DataRepository": "https://purl.org/phylo/treebase/phylows/study/TB2:S10124",
			"Curator": "Chris Owen",
			"PublicationIdentifier": "pg_1927"
		}
	]
}
```

2. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 3.14,
		"creation_time": "2017-10-23T23:18:13.463556",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#studies"
		]
	},
	"studies": [
		{
			"PublicationYear": 2009,
			"FocalCladeTaxonName": "Cetacea",
			"Publication": "McGowen, M., Spaulding M., and Gatesy J. 2009. Divergence date estimation and a comprehensive molecular tree of extant cetaceans. Molecular Phylogenetics and Evolution 53 (3): 891-906.",
			"CandidateTreeForSynthesis": "tree5998",
			"PublicationDOI": "https://dx.doi.org/10.1016/j.ympev.2009.08.018",
			"DataRepository": "https://purl.org/phylo/treebase/phylows/study/TB2:S10190",
			"Curator": "Chris Owen",
			"PublicationIdentifier": "pg_2587"
		},
		{
			"PublicationYear": 2009,
			"FocalCladeTaxonName": "Cetacea",
			"Publication": "Steeman, M., Hebsgaard M., Fordyce R., Ho S., Rabosky D., Nielsen R., Rahbek C., Glenner H., Sørensen M., & Willerslev E. 2009. Radiation of Extant Cetaceans Driven by Restructuring of the Oceans. Systematic Biology 58 (6): 573-585.",
			"CandidateTreeForSynthesis": "tree6215",
			"PublicationDOI": "https://dx.doi.org/10.1093/sysbio/syp060",
			"DataRepository": "https://purl.org/phylo/treebase/phylows/study/TB2:S10124",
			"Curator": "Chris Owen",
			"PublicationIdentifier": "pg_1927"
		}
	]
}
```

__Citation/Source:__    https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#studies

__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source_)
 * *Expected response time:*  	__1s~10s__ (_might be longer depending on the input tree_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. lst)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid method name in resource URI (e.g. /study)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |


Go to [__Top__](#servicesdocumentation).

---

__Service Name:__  	 	Compare_trees

__Service Description:__ 	A service to compare two Phylogenetic Trees symmetrically.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/md/dp/compare_trees>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">tree1_nwk</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  first tree in newick string format.
 				
2. Parameter details:
  * __Name:__ 	 	<span style="color:blue">tree2_nwk</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  second tree in newick string format.


__Example Commands/Requests:__

1. 
```bash
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/md/dp/compare_trees" -H "content-type:application/json" -d '{"tree1_nwk": "(((((((EU368025_Uncult_marine_euk_FS14JA72_30Mar05_5m:0.00329,EU368020_Uncult_marine_euk_FS04GA95_01Aug05_5m:-0.00002):0.00002,EU368013_Uncult_marine_euk_FS01D014_01Aug05_65m:-0.00002):0.00010,(EU368034_Uncult_marine_euk_OC413NSS_Q007_15m:-0.00000,(EU368007_Uncult_marine_euk_FS01B026_30Mar05_5m:-0.00001,EU368004_Uncult_marine_euk_FS01AA94_01Aug05_5m:0.00328):0.00000):0.00317):0.00725,(EU368005_Uncult_marine_euk_FS01B033_30Mar05_5m:-0.00002,(EF172850_Uncult_euk_SSRPB47:-0.00003,EU368022_Uncult_marine_euk_FS04H169_01Aug05_89m:0.00166):0.00002):0.00597):0.00202,((DQ060523_Uncult_marine_euk_NOR46.29:0.01559,(HQ868826_Uncult_euk_SHAX1073:0.00155,EU368038_Uncult_marine_euk_EN351CTD040_4mN11:0.00172):0.00429):0.00017,(EU368023_Uncult_marine_euk_FS04H153_01Aug05_89m:0.00504,(DQ222879_Uncult_photo_euk_RA000907.18:0.00166,HM858468_Uncult_marine_euk_MO.011.5m.00036:-0.00003):0.00152):0.00566):0.00662):0.00941,(HQ868882_Uncult_euk_SHAX1135:0.00170,HQ868810_Uncult_euk_SHAX1056:-0.00007):0.02449):0.00648,(EU368021_Uncult_marine_euk_FS04GA46_01Aug05_5m:0.02285,(HQ869075_Uncult_euk_SHAX587:0.00000,HQ869035_Uncult_euk_SHAX540:0.00000):0.04720):0.01029,HQ156863_Uncult_marine_ciliate_170609_08:0.17059);", "tree2_nwk": "((HQ869075_Uncult_euk_SHAX587:0.00000,HQ869035_Uncult_euk_SHAX540:0.00000):0.04484,(EU368021_Uncult_marine_euk_FS04GA46_01Aug05_5m:0.02285,(((((EU368005_Uncult_marine_euk_FS01B033_30Mar05_5m:-0.00002,(EF172850_Uncult_euk_SSRPB47:-0.00003,EU368022_Uncult_marine_euk_FS04H169_01Aug05_89m:0.00166):0.00002):0.00597,(((EU368025_Uncult_marine_euk_FS14JA72_30Mar05_5m:0.00329,EU368020_Uncult_marine_euk_FS04GA95_01Aug05_5m:-0.00002):0.00002,EU368013_Uncult_marine_euk_FS01D014_01Aug05_65m:-0.00002):0.00010,(EU368034_Uncult_marine_euk_OC413NSS_Q007_15m:-0.00000,(EU368007_Uncult_marine_euk_FS01B026_30Mar05_5m:-0.00001,EU368004_Uncult_marine_euk_FS01AA94_01Aug05_5m:0.00328):0.00000):0.00317):0.00725):0.00202,((DQ060523_Uncult_marine_euk_NOR46.29:0.01559,(HQ868826_Uncult_euk_SHAX1073:0.00155,EU368038_Uncult_marine_euk_EN351CTD040_4mN11:0.00172):0.00429):0.00017,(EU368023_Uncult_marine_euk_FS04H153_01Aug05_89m:0.00504,(DQ222879_Uncult_photo_euk_RA000907.18:0.00166,HM858468_Uncult_marine_euk_MO.011.5m.00036:-0.00003):0.00152):0.00566):0.00662):0.00941,(HQ868882_Uncult_euk_SHAX1135:0.00170,HQ868810_Uncult_euk_SHAX1056:-0.00007):0.02449):0.00648,HQ156863_Uncult_marine_ciliate_170609_08:0.17059):0.01029):0.00236);"}'
```

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 0.03,
		"creation_time": "2017-10-23T23:34:59.618597",
		"source_urls": [
			"https://dendropy.org/library/treecompare.html#module-dendropy.calculate.treecompare"
		]
	},
	"are_same_tree": true
}
```

__Citation/Source:__  https://dendropy.org/library/treecompare.html#module-dendropy.calculate.treecompare

__Service Quality:__

 * *Restrictions on capacity:*  __unknown__ (_depends on the source_)
 * *Expected response time:*  	__1s~10s__ (_might be longer depending on the input tree_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. tree_new)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid method name in resource URI (e.g. /compar)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |


--- 

__Service Name:__  	 	ECOS_Conservation

__Service Description:__ 	A service to get conservation status of a list of species using ECOS services.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/sd/ecos/get_conservation>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">species</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  pipe ("|") delimited list of species.
 				
  
__Example Commands/Requests:__ 

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/sd/ecos/get_conservation?species=Pongo%20pygmaeu|Rhinoceros%20sondaicus|Panthera%20tigris|Pan%20troglodytes|Loxodonta%20africana
```


__Example Results:__

1. 
```json
{
    "status_code":200,
    "message":"Success",
    "meta_data":{
        "execution_time":1.35,
        "creation_time":"2018-05-09T20:59:09.900888",
        "source_urls":[
            "https://ecos.fws.gov/ecp/services"
        ]
    },
    "species":[
        {
            "searched_name":"Pongo pygmaeu",
            "matched_name":""
        },
        {
            "searched_name":"Rhinoceros sondaicus",
            "tsn_id":"625004",
            "matched_name":"Rhinoceros sondaicus",
            "conservation_status":"Endangered"
        },
        {
            "searched_name":"Panthera tigris",
            "tsn_id":"183805",
            "matched_name":"Panthera tigris",
            "conservation_status":"Endangered"
        },
        {
            "searched_name":"Pan troglodytes",
            "tsn_id":"573082",
            "matched_name":"Pan troglodytes",
            "conservation_status":"Endangered"
        },
        {
            "searched_name":"Loxodonta africana",
            "tsn_id":"584939",
            "matched_name":"Loxodonta africana",
            "conservation_status":"Threatened"
        }
    ]
}
```
 

__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/sd/ecos/conservation>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">species</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  a list of species
 				
 				
__Example Commands/Requests:__

1. 
```bash
curl -X POST https://phylo.cs.nmsu.edu/phylotastic_ws/sd/ecos/conservation -H "content-type:application/json" -d '{"species": ["Ursus maritimus", "Ailuropoda melanoleuca", "Vulpes lagopus", "Delphinapterus leucas", "Diceros bicornis", "Balaenoptera musculus", "Pan paniscus", "Balaena mysticetus", "Pan troglodytes", "Balaenoptera physalus", "Carcharodon carcharias", "Chelonia mydas", "Hippopotamus amphibius", "Orcaella brevirostris", "Panthera onca", "Dermochelys coriacea", "Ara ararauna", "Amblyrhynchus cristatus"]}'
```


__Example Results:__

1. 

```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 4.89,
		"creation_time": "2018-05-09T21:07:49.580018",
		"source_urls": [
			"https://ecos.fws.gov/ecp/services"
		]
	},
	"species": [
		{
			"searched_name": "Ursus maritimus",
			"tsn_id": "180542",
			"matched_name": "Ursus maritimus",
			"conservation_status": "Threatened"
		},
		{
			"searched_name": "Ailuropoda melanoleuca",
			"tsn_id": "621845",
			"matched_name": "Ailuropoda melanoleuca",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Vulpes lagopus",
			"matched_name": ""
		},
		{
			"searched_name": "Delphinapterus leucas",
			"tsn_id": "180483",
			"matched_name": "Delphinapterus leucas",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Diceros bicornis",
			"tsn_id": "625003",
			"matched_name": "Diceros bicornis",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Balaenoptera musculus",
			"tsn_id": "180528",
			"matched_name": "Balaenoptera musculus",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Pan paniscus",
			"tsn_id": "573081",
			"matched_name": "Pan paniscus",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Balaena mysticetus",
			"tsn_id": "180533",
			"matched_name": "Balaena mysticetus",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Pan troglodytes",
			"tsn_id": "573082",
			"matched_name": "Pan troglodytes",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Balaenoptera physalus",
			"tsn_id": "180527",
			"matched_name": "Balaenoptera physalus",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Carcharodon carcharias",
			"matched_name": ""
		},
		{
			"searched_name": "Chelonia mydas",
			"tsn_id": "173833",
			"matched_name": "Chelonia mydas",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Hippopotamus amphibius",
			"matched_name": ""
		},
		{
			"searched_name": "Orcaella brevirostris",
			"matched_name": ""
		},
		{
			"searched_name": "Panthera onca",
			"tsn_id": "180593",
			"matched_name": "Panthera onca",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Dermochelys coriacea",
			"tsn_id": "173843",
			"matched_name": "Dermochelys coriacea",
			"conservation_status": "Endangered"
		},
		{
			"searched_name": "Ara ararauna",
			"matched_name": ""
		},
		{
			"searched_name": "Amblyrhynchus cristatus",
			"matched_name": ""
		}
	]
}
```


__Citation/Source:__    https://ecos.fws.gov/ecp/services

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 30 species allowed__
 * *Expected response time:*  	__1s~15s__ (_might be longer depending on the size of the input list_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. lst)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid input JSON data       | 400   | Invalid JSON document        |
   | Invalid method name in resource URI (e.g. /spec)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |


Go to [__Top__](#servicesdocumentation).

--- 

## <a name='scientificname'></a>Scientific Name to Common Name


   | Service Name |  Summary | 
   | :----------- | ---------: | 
   | [GNR_scientific_name](#gnrss) | Get common names (vernacular names) of a list of species from its scientific names using GNR API. | 
   | [EOL_scientific_name](#eolss) | Get common names (vernacular names) of a list of species from its scientific names using EOL API. |
   | [NCBI_scientific_name](#ncbiss) | Get common names (vernacular names) of a list of species from its scientific names using NCBI source. | 
   


__Service Name:__  	 	<a name="gnrss"></a>GNR_scientific_name

__Service Description:__ 	A service to get common name(vernacular name) of a species from its scientific name using GNR API.


1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">scientific_names</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  a list of common names for which to find scientific names delimited by pipe "|".
 				
  
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ss/gnr/get_common_names?scientific_names=Rangifer tarandus
```


__Example Results:__

1. 
```json
{
    "status_code":200,
    "message":"Success",
    "meta_data":{
        "execution_time":0.24,
        "creation_time":"2019-04-03T22:58:34.961657",
        "source_urls":[
            "https://index.globalnames.org"
        ]
    },
    "result":[
        {
            "matched_results":[
                {
                    "data_source":"Catalogue of Life",
                    "common_names":[
                        "caribou"
                    ],
                    "matched_name":"Rangifer tarandus (Linnaeus, 1758)"
                },
                {
                    "data_source":"World Register of Marine Species",
                    "common_names":[
                        "reindeer"
                    ],
                    "matched_name":"Rangifer tarandus (Linnaeus, 1758)"
                },
                {
                    "data_source":"GBIF Backbone Taxonomy",
                    "common_names":[
                        "caribou",
                        "reindeer",
                        "Caribou (North America)"
                    ],
                    "matched_name":"Rangifer tarandus (Linnaeus, 1758)"
                }
            ],
            "searched_name":"Rangifer tarandus"
        }
    ]
}
```


__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/ss/gnr/common_names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">scientific_names</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of scientific names for which to find common names.
 				

 				
__Example Commands/Requests:__

1. 
```
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/ss/gnr/common_names" -H "content-type:application/json" -d '{"scientific_names": ["Felis catus", "Bos taurus"]}'
``` 

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 0.24,
		"creation_time": "2019-04-03T23:00:30.418005",
		"source_urls": [
			"https://index.globalnames.org"
		]
	},
	"result": [
		{
			"matched_results": [
				{
					"data_source": "Catalogue of Life",
					"common_names": [
						"Domestic Cat"
					],
					"matched_name": "Felis catus Linnaeus, 1758"
				},
				{
					"data_source": "GBIF Backbone Taxonomy",
					"common_names": [
						"Domestic Cat",
						"cat",
						"Domestic cat"
					],
					"matched_name": "Felis catus Linnaeus, 1758"
				}
			],
			"searched_name": "Felis catus"
		},
		{
			"matched_results": [
				{
					"data_source": "Catalogue of Life",
					"common_names": [
						"aurochs"
					],
					"matched_name": "Bos taurus Linnaeus, 1758"
				},
				{
					"data_source": "GBIF Backbone Taxonomy",
					"common_names": [
						"aurochs",
						"domestic cattle (feral)",
						"domesticated cattle",
						"cow"
					],
					"matched_name": "Bos taurus Linnaeus, 1758"
				}
			],
			"searched_name": "Bos taurus"
		}
	]
}
```


__Citation/Source:__         https://index.globalnames.org

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 100 species allowed__
 * *Expected response time:*  	__1s~60s__ (_might be longer depending on the number of input common names_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. common)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid method name in resource URI (e.g. /scname)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientific_name_) will be an empty string.

Go to [__Top__](#servicesdocumentation).

Go to [Scientific Name to Common Name](#scientificname).
---

__Service Name:__  	 	<a name="eolss"></a>EOL_scientific_name

__Service Description:__ 	A service to get common name(vernacular name) of a species from its scientific name using EOL API.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/ss/eol/get_common_names>

__HTTP Method:__ 		GET

__Input Format:__ 		application/x-www-form-urlencoded

__Output Format:__ 		application/json 
 				
__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">scientific_names</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  a list of common names for which to find scientific names delimited by pipe "|".
 				
  
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ss/eol/get_common_names?scientific_names=Balaenoptera%20musculus
```


__Example Results:__

1. 
```json

  "status_code": 200,
  "message": "Success",
  "meta_data": {
    "execution_time": 1.45,
    "creation_time": "2019-05-08T18:54:59.443672",
    "source_urls": [
      "http://eol.org"
    ]
  },
  "result": [
    {
      "matched_results": [
        {
          "data_source": "Encyclopedia of Life",
          "identifier": 46559433,
          "common_names": [
            "Blue whale",
            "Common Rorqual",
            "Sibbald's Rorqual",
            "Ostende whale",
            "Sibbald's rorqual",
            "blue rorqual",
            "blue whale",
            "common rorqual",
            "finny whale",
            "great blue whale",
            "great northern rorqual",
            "great rorqual",
            "sulphurbottom whale",
            "Blue Whale",
            "Sulphur-bottom Whale",
            "Pygmy Blue Whale",
            "Sibbold’s Rorqual"
          ],
          "matched_name": "Balaenoptera musculus (Linnaeus, 1758)"
        }
      ],
      "searched_name": "Balaenoptera musculus"
    }
  ]
}
```


__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/ss/eol/common_names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">scientific_names</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of scientific names for which to find common names.
 				

 				
__Example Commands/Requests:__

1. 
```
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/ss/eol/common_names" -H "content-type:application/json" -d '{"scientific_names": ["Felis catus", "Bos taurus", "Capra hircus"]}'
``` 

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"meta_data": {
		"execution_time": 3.96,
		"creation_time": "2019-05-08T18:56:11.839524",
		"source_urls": [
			"http://eol.org"
		]
	},
	"result": [
		{
			"matched_results": [
				{
					"data_source": "Encyclopedia of Life",
					"identifier": 1037781,
					"common_names": [
						"cat",
						"Wild Cat",
						"Domestic Cat",
						"Domestic cat",
						"domestic cat",
						"feral cat",
						"house cat",
						"Domestic Cat -- Feral cat"
					],
					"matched_name": "Felis catus Linnaeus, 1758"
				}
			],
			"searched_name": "Felis catus"
		},
		{
			"matched_results": [
				{
					"data_source": "Encyclopedia of Life",
					"identifier": 34548,
					"common_names": [
						"ox",
						"oxen",
						"true cattle"
					],
					"matched_name": "Bos Linnaeus, 1758"
				}
			],
			"searched_name": "Bos taurus"
		},
		{
			"matched_results": [
				{
					"data_source": "Encyclopedia of Life",
					"identifier": 328660,
					"common_names": [
						"Domestic Goat",
						"Domestic goat",
						"Domestic goat ",
						"domestic goat",
						"Goat",
						"goat (feral)"
					],
					"matched_name": "Capra hircus Linnaeus, 1758"
				}
			],
			"searched_name": "Capra hircus"
		}
	]
}
```


__Citation/Source:__         http://eol.org

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 30 species allowed__
 * *Expected response time:*  	__1s~60s__ (_might be longer depending on the number of input common names_)
 * *Informative message/status:*
   
   | Case | HTTP status code | Message | 
   | :----------- | :------: | ------------: | 
   | Successful       | 200   | Success        | 
   | Missing value of mandatory parameter       | 400   | Error: '_parameter name_' parameter must have a valid value        |
   | Invalid name of mandatory parameter (e.g. common)       | 400   | Error: Missing parameter '_parameter name_'        |
   | Invalid method name in resource URI (e.g. /scname)       | 404   | Error: Could not find the requested resource URI        |
   | Internal server error       | 500   |         |

  > __Note__: In case of error conditions in source web services, their HTTP status codes are returned. When the request was executed successfully, but no result was produced then the response status will still be 200 and the corresponding output field(_scientific_name_) will be an empty string.

Go to [__Top__](#servicesdocumentation).

Go to [Scientific Name to Common Name](#scientificname).

---

__Service Name:__  	 	<a name="ncbiss"></a>NCBI_scientific_name

__Service Description:__ 	A service to get common name(vernacular name) of a species from its scientific name using NCBI source.


1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">scientific_names</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  a list of common names for which to find scientific names delimited by pipe "|".
 				
  
__Example Commands/Requests:__

1. 
```
https://phylo.cs.nmsu.edu/phylotastic_ws/ss/ncbi/get_common_names?scientific_names=Rangifer tarandus|Ovis orientalis
```


__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_results": [
				{
					"data_source": "NCBI",
					"identifier": 9870,
					"common_names": [
						"reindeer"
					],
					"matched_name": "Rangifer tarandus"
				}
			],
			"searched_name": "Rangifer tarandus"
		},
		{
			"matched_results": [
				{
					"data_source": "NCBI",
					"identifier": 469796,
					"common_names": [
						"Asiatic mouflon"
					],
					"matched_name": "Ovis orientalis"
				}
			],
			"searched_name": "Ovis orientalis"
		}
	],
	"metadata": {
		"execution_time": "1.51",
		"creation_time": "2019-05-08T18:17:13.661489",
		"source_urls": [
			"https://www.ncbi.nlm.nih.gov/taxonomy"
		]
	}
}
```


__Alternative Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/ss/ncbi/common_names>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json 


__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">scientific_names</span> 
  * __Category:__  	mandatory
  * __Data Type:__  list of strings
  * __Description:__  list of scientific names for which to find common names.
 				

 				
__Example Commands/Requests:__

1. 
```
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/ss/ncbi/common_names" -H "content-type:application/json" -d '{"scientific_names": ["Felis catus", "Bos taurus"]}'
``` 

__Example Results:__

1. 
```json
{
	"status_code": 200,
	"message": "Success",
	"result": [
		{
			"matched_results": [
				{
					"data_source": "NCBI",
					"identifier": 9685,
					"common_names": [
						"domestic cat"
					],
					"matched_name": "Felis catus"
				}
			],
			"searched_name": "Felis catus"
		},
		{
			"matched_results": [
				{
					"data_source": "NCBI",
					"identifier": 9913,
					"common_names": [
						"cattle"
					],
					"matched_name": "Bos taurus"
				}
			],
			"searched_name": "Bos taurus"
		}
	],
	"metadata": {
		"execution_time": "1.61",
		"creation_time": "2019-05-08T18:14:02.126145",
		"source_urls": [
			"https://www.ncbi.nlm.nih.gov/taxonomy"
		]
	}
}
```


__Citation/Source:__         https://www.ncbi.nlm.nih.gov/taxonomy

__Service Quality:__

 * *Restrictions on capacity:*  __maximum 20 species allowed__
 * *Expected response time:*  	__1s~60s__ (_might be longer depending on the number of input common names_)
 

Go to [__Top__](#servicesdocumentation).

Go to [Scientific Name to Common Name](#scientificname).

---

## <a name="compoundservice"></a>Phylogenetic Tree Retrieval with Common Names

   | Service Name |  Summary | 
   | :----------- | ---------: | 
   | [OToL_common_Tree](#cpot) | Get Phylogenetic Trees from a list of taxa combining multiple services   | 
   


__Service Name:__  	 		<a name="cpot"></a>OToL_common_Tree

__Service Description:__ 	A service to get Phylogenetic Trees with common names from a list of taxa using Open Tree of Life's induced_subtree method.

__Resource URI:__  		<https://phylo.cs.nmsu.edu/phylotastic_ws/cp/gt/tree>

__HTTP Method:__ 		POST

__Input Format:__ 		application/json

__Output Format:__ 		application/json

__Parameters:__

1. Parameter details:
  * __Name:__ 	 	<span style="color:blue">list</span> 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  a list of taxon names (scientific or common) depending on the __list_type__ parameter value.
 				
2. Parameter details:
  * __Name:__ 	 	list_type 
  * __Category:__  	mandatory
  * __Data Type:__  string
  * __Description:__  a string value to specify which type (scientific or common) of list is provided as input. Valid values include `scientific` or `common`. 

3. Parameter details:
  * __Name:__ 	 	source 
  * __Category:__  	optional
  * __Data Type:__  string
  * __Description:__  a string value to specify which source should be used to get scientific or common names. Valid values include `EOL`, `GNR` (default), and `NCBI` when **list_type** value is `scientific`. When **list_type** value is `common`, valid values include  `NCBI`(default), `EBI`, `ITIS`, `TROPICOS`.

4. Parameter details:
  * __Name:__ 	 	multiple 
  * __Category:__  	optional
  * __Data Type:__  boolean
  * __Description:__  a string value to specify wheather multiple common names will be used in the result. Valid values include `true` and `false`. Default value is `false`. 
		
__Example Commands/Requests:__

1. 
```
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/cp/gt/tree" -H "content-type:application/json" -d '{"list":["Panthera pardus", "Taxidea taxus","Lutra lutra","Canis lupus","Mustela altaica"],"list_type":"scientific"}'
``` 

__Example Results:__

1. 

```
{
	"status_code": 200,
	"mapping": [
		{
			"scientific_name": "Lutra lutra",
			"common_names": [
				"european otter",
				"eurasian otter",
				"otter, eurasian otter"
			]
		},
		{
			"scientific_name": "Mustela altaica",
			"common_names": [
				"mountain weasel"
			]
		},
		{
			"scientific_name": "Taxidea taxus",
			"common_names": [
				"american badger",
				"badger",
				"north american badger"
			]
		},
		{
			"scientific_name": "Canis lupus",
			"common_names": [
				"gray wolf",
				"grey wolf, wolf"
			]
		},
		{
			"scientific_name": "Panthera pardus",
			"common_names": [
				"leopard"
			]
		}
	],
	"newick": "((((Lutra lutra_European otter,Mustela altaica_Mountain weasel)mrcaott4709ott39395,Taxidea taxus_American badger)Mustelidae,Canis lupus_Gray wolf)Caniformia,Panthera pardus_Leopard)Carnivora;",
	"source": "GNR",
	"meta_data": {
		"execution_time": 1.55,
		"creation_time": "2019-05-08T18:44:50.803645",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs"
		]
	},
	"input_list": [
		"Panthera pardus",
		"Taxidea taxus",
		"Lutra lutra",
		"Canis lupus",
		"Mustela altaica"
	],
	"message": "Success"
}
```

2. 
```
curl -X POST "https://phylo.cs.nmsu.edu/phylotastic_ws/cp/gt/tree" -H "content-type:application/json" -d '{"list":["cattle", "cat", "goat", "pig", "sheep", "duck", "chicken", "horse", "domestic dog"],"list_type":"common"}'
``` 

__Example Results:__

2. 

```
{
	"status_code": 200,
	"mapping": {
		"sheep": "Ovis aries",
		"horse": "Equus caballus",
		"domestic dog": "Canis lupus familiaris",
		"cattle": "Bos taurus",
		"cat": "Felis catus",
		"duck": "Anas platyrhynchos",
		"chicken": "Gallus gallus",
		"pig": "Sus scrofa",
		"goat": "Capra hircus"
	},
	"newick": "((((((Caprahircus-speciesindomainEukaryota-ott19017,Ovis aries_sheep)Caprinae,Bos taurus_cattle)Bovidae,Sus scrofa_pig)mrcaott1548ott21987,Equus caballus_horse)mrcaott1548ott3021,(Canis lupus familiaris_domestic dog,Felis catus_cat)Carnivora)mrcaott1548ott4697,(Gallus gallus_chicken,Anas platyrhynchos_duck)Galloanserae)Amniota;",
	"source": "NCBI",
	"meta_data": {
		"execution_time": 14.18,
		"creation_time": "2019-05-20T18:26:43.189674",
		"source_urls": [
			"https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs"
		]
	},
	"input_list": [
		"cattle",
		"cat",
		"goat",
		"pig",
		"sheep",
		"duck",
		"chicken",
		"horse",
		"domestic dog"
	],
	"message": "Success"
}
```


