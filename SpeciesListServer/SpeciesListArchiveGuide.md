## Species List Archive Components

A species list archive must consist of multiple files. The specific types of files that must be included in an archive are the following:

1. A required __*species*__ __data__ file describing the items (species) in the list. 
2. A required __*list*__ __data__ file consisting of metadata about the list represented by the __*species*__ __data__ file. 

3. An optional __*descriptor*__ metafile describing how the files in the archive are organised. This describes the files in the archive and maps each data column to a corresponding standard term. The metafile is a relatively simple XML
file format. 
    - A metafile is required if the data files use non-standard column names in the first (header) row of the data or follow a different order than the standard column names.
    - A definitive list of standard terms/column names are found on [https://github.com/phylotastic/Phylotastic_WebService_Documentation/tree/master/SpeciesListServer/SpeciesListStandardTerms.md] 

> Compress all files (species data, list data, descriptor metafile) into a single archive file. Compression formats include ZIP 18 and TAR.GZ/TGZ. This single, compressed file is the __Species List Archive__ file, which can be easily uploaded into the Phylotastic portal to publish an author's own species list.

---

#### Data files format:
The data files are formatted as fielded text, where data records are expressed as rows of text, and data elements (columns) are separated with a __comma__ (commonly referred to as CSV or ‘comma-separated value’ files). The first row of the data file may optionally contain data or represent a ‘header row’. If there are multiple values for a single field and the values are separated by commas, then the entire field must be enclosed in double quotes.

---

#### Sample contents of a "species" data file:
``` text
vernacularName,scientificName,scientificNameAuthorship,family,order,phylum,nomenclaturalCode
Amur maple,Acer ginnala, Maxim.,Aceraceae,Sapindales,Streptophyta,ICN
Japanses chaff flower,Achyranthes japonica,(Miq.) Nakal,Amaranthaceae,Caryophyllales,Streptophyta,ICN
```
#### Sample contents of a "list" data file:
``` text
listTitle,description,author,datePublished,curator,dateCurated,source,keywords,focalClade,extraInfo
Illinois Invasive Plants,This list contains the invasive species, with their Family and Order,Invasive.org  Center for Invasive Species and Ecosystem Health
,2014-01-23,HD Laughinghouse,2016-02-24,http://www.invasive.org/species/list.cfm?id=152,"Plants, invasive species, IllinoisPublish",Embryophyta
```

#### Sample metafile:
A sample meta file can be found at [https://github.com/phylotastic/Phylotastic_WebService_Documentation/tree/master/SpeciesListServer/metafile.xml]

For the sake of example, this file describe the standard set of columns. However, note that a metafile is not needed if the standard columns are used, and are indicated in the header lines of the __species__ and __list__ files.  
