# CSVreader
These are a couple of scripts I put together that will aid working with CSV files. The script assumes the csv file you're working with has headers

## Usage
The general pattern for using this utility is, if you're searching for a record containing _searchstring_ within _csvfile_: `csv searchstring csvfile`.

### Example
Here is an example csv file containing information about various historical warships:
```csv
name,country,displacement,length,beam,commissioned
Yamato,Japan,65027,256,38.9,16 December 1941
USS Enterprise,United States of America,19800,251.4,33.4,12 May 1938
Bismarck,Germany,41700,251,36,24 August 1940
HMS Dreadnought,United Kingdom,18120,160.6,25,2 December 1906
USS Iowa,United States of America,46000,270.43,32.97,22 February 1943
HMS Vanguard,United Kingdom,45200,248.2,32.9,12 May 1946
```

We search for the Enterprise: `csv Enterprise ships.csv`

Output:
```
name      : USS Enterprise 
country   : United States of America 
displacement: 19800 
length    : 251.4 
beam      : 33.4 
```

