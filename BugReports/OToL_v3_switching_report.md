##  Investigate the responses of OpenTreeofLife v3 API with different examples:  

#### Example 1: 

**Input_List** = *birds_reptiles_mammals*

List of names:
```
["Alces alces", "Alligator mississippiensis", "Ara ararauna", "Boa constrictor", "Cardinalis cardinalis", "Chelydra serpentina", "Crocodylus niloticus", "Elephas maximus", "Homo sapiens", "Iguana iguana", "Myotis lucifugus", "Pygoscelis papua", "Terrapene carolina"]
```

List of matching ott_ids from OToL_TNRS service:
```
[587311, 608972, 460509, 770315, 35864, 335590, 342715, 1028837, 541928, 307364, 848786, 764377, 1020127]
```

> Note: Same list of ott_ids are fed to the OpenTreeofLife [v2](https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#induced_subtree) and [v3](https://github.com/OpenTreeOfLife/germinator/wiki/Synthetic-tree-API-v3#induced_subtree) APIs. 
 

**v2 API result**:
```
{
  "node_ids_not_in_tree" : [ ],
  "node_ids_not_in_graph" : [ ],
  "ott_ids_not_in_tree" : [ 342715 ],
  "tree_id" : "opentree9.1",
  "ott_ids_not_in_graph" : [ ],
  "newick" : "(((Homo_sapiens_ott770315,Alces_alces_ott460509)Boreoeutheria_ott5334778,Elephas_maximus_ott541928)Eutheria_ott683263,((((Pygoscelis_papua_ott1028837,(Cardinalis_cardinalis_ott307364,Ara_ararauna_ott1020127)),(Alligator_mississippiensis_ott335590,Crocodylus_niloticus_ott35864)Crocodylia_ott195672)Archosauria_ott335588,(Terrapene_carolina_ott848786,Chelydra_serpentina_ott587311)Durocryptodira_ott5800401)Archelosauria_ott4947372,(Iguana_iguana_ott608972,Boa_constrictor_ott764377)Toxicofera_ott4945872)Sauria_ott329823)Amniota_ott229560;"
}
```


**v3 API result**:
```
{
  "message" : "The following OTT ids were not found: [342715]. ",
  "exception" : "BadIdsException",
  "fullname" : "opentree.plugins.BadIdsException",
  "stacktrace" : [ "opentree.plugins.tree_of_life_v3.doInducedSubtree(tree_of_life_v3.java:516)", "opentree.plugins.tree_of_life_v3.induced_subtree(tree_of_life_v3.java:400)", "java.lang.reflect.Method.invoke(Method.java:498)", "org.neo4j.server.plugins.PluginMethod.invoke(PluginMethod.java:57)", "org.neo4j.server.plugins.PluginManager.invoke(PluginManager.java:168)", "org.neo4j.server.rest.web.ExtensionService.invokeGraphDatabaseExtension(ExtensionService.java:300)", "org.neo4j.server.rest.web.ExtensionService.invokeGraphDatabaseExtension(ExtensionService.java:122)", "java.lang.reflect.Method.invoke(Method.java:498)", "org.neo4j.server.rest.security.SecurityFilter.doFilter(SecurityFilter.java:112)" ]
}
```

---

#### Example 2: 

**Input_List** = *finding_nemo*

List of names:
```
["Aetobatus narinari", "Amphiprion ocellaris", "Carcharodon carcharias", "Chelonia mydas", "Dascyllus aruanus", "Diodon holocanthus", "Gramma loreto", "Heteractis magnifica", "Hippocampus kelloggi", "Isurus paucus", "Lysmata amboinensis", "Opisthoteuthis californiana", "Paracanthurus hepatus", "Pelecanus conspicillatus", "Pisaster brevispinus", "Sphyrna mokarran", "Zanclus cornutus", "Zebrasoma flavescens"]
```

List of matching ott_ids from OToL_TNRS service:
```
[467289, 630151, 986358, 970846, 1086126, 810360, 759551, 674643, 199070, 559133, 773222, 166940, 76842, 49239, 996614, 554297, 500598, 300538]
```

> Note: Same list of ott_ids are fed to the OpenTreeofLife [v2](https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#induced_subtree) and [v3](https://github.com/OpenTreeOfLife/germinator/wiki/Synthetic-tree-API-v3#induced_subtree) APIs. 
 

**v2 API result**:
```
{
  "node_ids_not_in_tree" : [ ],
  "node_ids_not_in_graph" : [ ],
  "ott_ids_not_in_tree" : [ 674643, 49239, 300538 ],
  "tree_id" : "opentree9.1",
  "ott_ids_not_in_graph" : [ ],
  "newick" : "((((((Sphyrna_mokarran_ott970846,(Isurus_paucus_ott500598,Carcharodon_carcharias_ott554297)),Aetobatus_narinari_ott759551)Elasmobranchii_ott278117,((Chelonia_mydas_ott559133,Pelecanus_conspicillatus_ott986358)Archelosauria_ott4947372,(((Zebrasoma_flavescens_ott467289,Paracanthurus_hepatus_ott773222),Zanclus_cornutus_ott199070),(Diodon_holocanthus_ott166940,Hippocampus_kelloggi_ott630151)))Euteleostomi_ott114654)Gnathostomata_ott278114,Pisaster_brevispinus_ott76842)Deuterostomia_ott147604,(Opisthoteuthis_californiana_ott996614,Lysmata_amboinensis_ott810360)Protostomia_ott189832),Heteractis_magnifica_ott1086126);"
}
```


**v3 API result**:
```
{
  "message" : "The following OTT ids were not found: [674643, 49239, 300538]. ",
  "exception" : "BadIdsException",
  "fullname" : "opentree.plugins.BadIdsException",
  "stacktrace" : [ "opentree.plugins.tree_of_life_v3.doInducedSubtree(tree_of_life_v3.java:516)", "opentree.plugins.tree_of_life_v3.induced_subtree(tree_of_life_v3.java:400)", "java.lang.reflect.Method.invoke(Method.java:498)", "org.neo4j.server.plugins.PluginMethod.invoke(PluginMethod.java:57)", "org.neo4j.server.plugins.PluginManager.invoke(PluginManager.java:168)", "org.neo4j.server.rest.web.ExtensionService.invokeGraphDatabaseExtension(ExtensionService.java:300)", "org.neo4j.server.rest.web.ExtensionService.invokeGraphDatabaseExtension(ExtensionService.java:122)", "java.lang.reflect.Method.invoke(Method.java:498)", "org.neo4j.server.rest.security.SecurityFilter.doFilter(SecurityFilter.java:112)" ]
}
```


---

#### Example 3: 

**Input_URL** = *https://en.wikipedia.org/wiki/Plain_pigeon*

List of names from GNRD_wrapper service:
```
["Patagioenas inornata wetmorei", "Animalia", "Chordata", "Aves", "Columbiformes", "Columbidae", "Patagioenas", "Patagioenas inornata", "Columba inornata", "P. flavirostria", "P. oenops", "Hispaniola"]
```

List of ott_ids from OToL_TNRS service:
```
[773512, 691846, 96873, 363030, 125642, 96873, 938413, 81461, 96869]
```

> Note: Same list of ott_ids are fed to the OpenTreeofLife [v2](https://github.com/OpenTreeOfLife/opentree/wiki/Open-Tree-of-Life-APIs#induced_subtree) and [v3](https://github.com/OpenTreeOfLife/germinator/wiki/Synthetic-tree-API-v3#induced_subtree) APIs. 
 

**v2 API result**:
```
{
  "node_ids_not_in_tree" : [ ],
  "node_ids_not_in_graph" : [ ],
  "ott_ids_not_in_tree" : [ 938413 ],
  "tree_id" : "opentree9.1",
  "ott_ids_not_in_graph" : [ ],
  "newick" : "((((((Patagioenas_inornata_wetmorei_ott96869)Patagioenas_inornata_ott96873)Patagioenas_ott773512)Columbiformes_ott363030)Aves_ott81461)Chordata_ott125642)Metazoa_ott691846;"
}
```


**v3 API result**:
```
{
  "message" : "The following OTT ids were not found: [938413]. ",
  "exception" : "BadIdsException",
  "fullname" : "opentree.plugins.BadIdsException",
  "stacktrace" : [ "opentree.plugins.tree_of_life_v3.doInducedSubtree(tree_of_life_v3.java:516)", "opentree.plugins.tree_of_life_v3.induced_subtree(tree_of_life_v3.java:400)", "java.lang.reflect.Method.invoke(Method.java:498)", "org.neo4j.server.plugins.PluginMethod.invoke(PluginMethod.java:57)", "org.neo4j.server.plugins.PluginManager.invoke(PluginManager.java:168)", "org.neo4j.server.rest.web.ExtensionService.invokeGraphDatabaseExtension(ExtensionService.java:300)", "org.neo4j.server.rest.web.ExtensionService.invokeGraphDatabaseExtension(ExtensionService.java:122)", "java.lang.reflect.Method.invoke(Method.java:498)", "org.neo4j.server.rest.security.SecurityFilter.doFilter(SecurityFilter.java:112)" ]
}
```

---


