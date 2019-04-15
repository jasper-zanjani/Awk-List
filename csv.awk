## CSV reader script
## 
## This utility reads the headings of any CSV file and outputs any 
## record (line) where the search string (regex) appears. 
## 
## PARAMS:
##   - regex
##       search string

BEGIN {
  FS=",";
}

## Conditioning DOS-format text
{
  gsub(/\r/,"")
}

## Retrieve headings
NR==1 { 
  maxlen=0
  for (i=1; i<=NF; i++) { 
    heading[i]=$i; 
    if (maxlen<length(heading[i])) {maxlen=length(heading[i])}
  } 
}

## Process data
NR>1 {
  if ($0 ~ regex) {
    for (i=1; i<=length(heading); i++) {
      if(length($i) > 0) { printf("%-10s: %s \n", heading[i] ,$i) } 
    }
    print("")
  }
}

