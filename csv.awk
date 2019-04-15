BEGIN {FS=",";}
NR==1 { 
  maxlen=0
  for (i=1; i<=NF; i++) { 
    heading[i]=$i; 
    if (maxlen<length(heading[i])) {maxlen=length(heading[i])}
  } 
}
NR>1 {
  if ($0 ~ regex) {
    for (i=1; i<=length(heading); i++) {
      if(length($i) > 0) { printf("%-10s: %s \n", heading[i] ,$i) } 
    }
    print("")
  }
}

