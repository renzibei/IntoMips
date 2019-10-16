#!/usr/bin/python
# -*- coding: UTF-8 -*-

import sys, getopt

def main(argv):
    inputfile = ''
    outputfile = ''
    try:
        opts, args = getopt.getopt(argv,"hi:o:",["ifile=","ofile="])
    except getopt.GetoptError:
        print ('test.py -i <inputfile> -o <outputfile>')
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print ('test.py -i <inputfile> -o <outputfile>')
            sys.exit()
        elif opt in ("-i", "--ifile"):
            inputfile = arg
        elif opt in ("-o", "--ofile"):
            outputfile = arg
    answer = ''
    with open(inputfile, 'r') as f:
        lines = f.readlines()
        for line in lines:
            if '#' in line:
                #print(line)
                answer += line.split(' ')[-1].strip() + '\n'
    with open(outputfile, 'w') as f:
        f.write(answer)

if __name__ == "__main__":
    main(sys.argv[1:])