# CSVreader
These are a couple of scripts I put together that will aid working with CSV files. The script assumes the csv file you're working with has headers

## Usage
CSVreader has one parameter which is optional, representing a string or regex expression.

### Example: invocation without parameters
Here is an example .csv file containing information about some ancient Greek philosophers:
```csv
name,city,dob
Socrates,Athens,470 BC
Plato,Athens,428 BC
Aristotle,Stagira,384 BC
Euclid,Alexandria,325 BC
Pythagoras,Samos,570 BC
```

Invoke the script with just the filename: `csv greeks.csv`

Output:
```
name      : Socrates 
city      : Athens 
dob       : 470 BC 

name      : Plato 
city      : Athens 
dob       : 428 BC 

name      : Aristotle 
city      : Stagira 
dob       : 384 BC 

name      : Euclid 
city      : Alexandria 
dob       : 325 BC 

name      : Pythagoras 
city      : Samos 
dob       : 570 BC 
```

### Example 2: Search for string
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

Search for United States warships: `csv USS ships.csv`

Output:
```
name      : USS Enterprise 
country   : United States of America 
displacement: 19800 
length    : 251.4 
beam      : 33.4 
commissioned: 12 May 1938 

name      : USS Iowa 
country   : United States of America 
displacement: 46000 
length    : 270.43 
beam      : 32.97 
commissioned: 22 February 1943 
```
