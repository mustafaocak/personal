import datetime
#!/usr/bin/env python
import argparse

parser = argparse.ArgumentParser()
d = datetime.date
do= datetime
epochdate = d(1970,1,1)
nd = (d.today()-epochdate).days

parser.add_argument('-nd', action='store', default=nd,dest='nd', help='Enter number of days since 1 january 1970. Default is today.')
#parser.add_argument('-s', action='store_true',default=False,dest='nrofsublevel', help='dkP.')
argvs = parser.parse_args()


calcdate = epochdate+do.timedelta(int(argvs.nd))
print calcdate
#print "%s days since 1 januar 1970 " %(argvs.nd) 





