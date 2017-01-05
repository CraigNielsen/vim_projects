#!/usr/bin/python
import sys
print("/".join(str(sys.argv[1]).split('/')[int(sys.argv[2]):]))
sys.exit(0)
