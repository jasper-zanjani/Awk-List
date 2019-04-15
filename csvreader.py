#!/usr/bin/env python3

import os, sys, csv

def outputrecord(heading,record):
  pass

def main():
  heading,body = [], []
  try:
    file=sys.argv[1]
    with open(file,'r') as f:
      c=csv.reader(f)
      heading=next(c)
      body=[r for r in c]
  except IndexError:
    print("Provide a filename")
    exit(1)
  except IOError:
    print("Invalid filename")
    exit(1)
  except:
    print("Other error, exiting")
    exit(1)
  try:
    query = sys.argv[2]
    print(f'Printing only records matching "{query}"',"\n")
    for r in body:
      if "".join(r).find(query) < 0:
        continue
      else:
        record=[f'{heading[i]}: {r[i]}' for i in range(len(heading))]
        output="\n".join(record)
        print(output,'\n')

  except IndexError:
    print("No query found, printing all contents..","\n")
    for r in body:
      record=[f'{heading[i]}: {r[i]}' for i in range(len(heading))]
      output="\n".join(record)
      print(output,'\n')

if __name__=='__main__':
  main()
