##  Investigate the responses of OpenTreeofLife v3 API with different examples:  
#### Example 1: 

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


