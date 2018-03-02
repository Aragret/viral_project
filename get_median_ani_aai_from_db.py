#!/home/aragret/anaconda3/bin/python

import pandas as pd
import numpy as np
import sys

for i in range(1, len(sys.argv)):
	path_to_db = '/home/aragret/Alina/other_projects/viral_project/outputs/{0}'.format(sys.argv[i])
	data = pd.read_csv(path_to_db, sep='\t', header=None)
	# print(data.head())
	print('Mean', np.mean(data.iloc[:,2:3]))
	print('Median', np.median(data.iloc[:,2:3]))

