#!/usr/bin/python
import sys
print("/".join(str(sys.argv[1]).split('/')[sys.argv[2]:]))
sys.exit(0)
