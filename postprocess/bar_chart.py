# -*- coding: utf-8 -*-
"""
Created on Thu Apr 22 15:21:34 2021

@author: nickkd
"""
import pandas as pd
# import matplotlib.pyplot as plt
import seaborn as sns
import math


if __name__ == '__main__':
    power2process =  lambda x: 8*2**x
    w_h_ratio = 2 / (math.sqrt(5) - 1)
    df_res = pd.read_csv('collective_results.csv')
    df_res['total_cpu_time'] = df_res['total_cpu_time']/3600
    df_res.rename(columns={'speedup_ratio': 'speedup'}, inplace=True)
    sns.set(style='ticks',font='Times New Roman')
    g = sns.catplot(x='repeats', y='efficiency', col='process',
                    data=df_res, kind='bar', color='cyan',
                    aspect=w_h_ratio,
                    sharex=False, sharey=False)                    
    g.set_axis_labels('Number of repeats', 'Efficiency')
    axes_array = g.axes[0]
    for index_per_process,data in enumerate(g.facet_data()):
        ax = axes_array[index_per_process]
        pdata = data[1].reset_index()
        for i,row in pdata.iterrows():
            ax.text(i,row.efficiency, round(row.efficiency,2), color='black', ha="center")
    g.tight_layout()
    g.savefig('heterogeneity.pdf',
              dpi=600, format='pdf')
    # plt.show()
