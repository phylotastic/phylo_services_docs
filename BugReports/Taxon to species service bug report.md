#  investigate "Felidae" behavior #9 
##### Web service workflow:
To understand the **Felidae** behavior, let us see the workflow of the taxon to species service in the following image. 
![](https://github.com/phylotastic/phylo_services_docs/blob/master/BugReports/taxon_to_species_workflow.png "Workflow of taxon to species service")

##### Cause of behavior:
When OpenTree API [/taxonomy/taxon](https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#taxon) is called with the input "Felidae" it only returns 44 genuses as its children. By cross-checking with GBIF API (http://www.gbif.org/developer/species) it is found that *Felidae* has 54 genuses. So the OpenTree API does not include some common genuses (like Puma, Prionailurus, Pardofelis, Panthera, Neofelis, Lynx, Leptailurus, Leopardus, Felis, Catopuma) and according to the workflow of the service the corresponding species for these genuses could not be retrieved. 

Interestingly, OpenTree does have information regarding the above genuses. Because when OpenTree API [/tnrs/match_names](https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#match_names) is used with some of the species (like *Felis silvestris*, *Panthera leo*, *Lynx canadensis*, *Pardofelis badia*) it returns all related information about them.

##### Possible solution:
It seems [GBIF API](http://www.gbif.org/developer/species) includes complete information about the children of taxons.Since there is no other API in OpenTree to get children of a taxon and missing genus scenario might occur with some other taxons, it is suggested to change the workflow of the service to use GBIF API.  