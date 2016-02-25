## Species List Archive Components

A species list archive must consist of multiple files. The specific types of files that must be included in an archive are the following:

1. A required __*species*__ __data__ file consisting of data for a list of species. 
2. A required __*list*__ __data__ file consisting of metadata of list that relate to the species data. A list data record points to multiple records in the __*species*__ data file. 

3. A optional __*descriptor*__ metafile describes how the files in the archive are organised. It describes the files in the archive and maps each data column to a corresponding standard term. The metafile is a relatively simple XML
file format. 
    - A metafile is required if the data files use non-standard column names in the first (header) row of data or follow different order of the standard column names.
    - A definitive list of standard terms/column names can be found on [https://github.com/phylotastic/Phylotastic_WebService_Documentation/tree/master/SpeciesListServer/SpeciesListStandardTerms.md] 

> The entire collection of files (species data, list data, descriptor metafile) can be compressed into a single archive file. Compression formats include ZIP 18 and TAR.GZ/TGZ. This single, compressed file is the __Species List Archive__ file! This file can be easily uploaded to Phylotastic portal to publish author's own list of species.

---

#### Data files format:
The data files are formatted as fielded text, where data records are expressed as rows of text, and data elements (columns) are separated with a standard delimiter __comma__ (commonly referred to as CSV or ‘comma-separated value’ files). The first row of the data file may optionally contain data or represent a ‘header row’. 

---

#### Sample contents of a "species" data file:
``` text
speciesNumber,vernacularName,scientificName,taxonomicAuthorship
1,Chinese Mountain Cat,Felis bieti,Milne-Edwards 1892
2,Domestic Cat,Felis catus,Linnaeus 1758
```
#### Sample contents of a "list" data file:
``` text
displayName,description,author,date,source,statementOfPurpose
Felidae,List of Felidae species,Dail,11-Jan-16,https://en.wikipedia.org/wiki/Felidae,Publish in phylotastic portal
```

#### Sample meta file:
A sample meta file can be found at [https://github.com/phylotastic/Phylotastic_WebService_Documentation/tree/master/SpeciesListServer/metafile.xml]