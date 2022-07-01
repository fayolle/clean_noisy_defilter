# Reverse image filtering with clean and noisy filters 
This repository contains a simple implementation in MATLAB of the following [paper](https://link.springer.com/article/10.1007/s11760-022-02236-w) on reverse image filtering noisy filters. 

## Notes 
The file 'test.m' contains a simple test for defiltering a noisy motion blurred image. The file 'Landweber.m' contains an implementation of the main approach described in the paper. The files 'PC_Landweber.m' and 'NA_Landweber.m' contain accelerated variants (described in the paper as well). 

## Reference 
This is a link to the [paper](https://link.springer.com/article/10.1007/s11760-022-02236-w) where the methods were introduced. The corresponding bibtex entry is  
```
@article{Wang2022,
title = "Reverse Image Filtering with Clean and Noisy Filters",
author = "Lizhong Wang and Pierre-Alain Fayolle and Alexander Belyaev",
year = "2022",
journal = "Signal, Image and Video Processing",
issn = "1863-1703",
publisher = "Springer",
}
```
