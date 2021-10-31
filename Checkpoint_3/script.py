from sys import argv
from os.path import exists
from re import findall

if exists(argv[1]):
    data = open(argv[1], "r")
    for read in data:
        if "mapped" in read:
            matches = findall(r'(\d+(?:\.\d+)?%)', read)
            print(float(matches[0].strip('%')) / 100)
            break
