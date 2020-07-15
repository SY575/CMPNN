CMPNN
=============
The code for our IJCAI paper: Communicative Representation Learning on Attributed Molecular Graphs

https://www.ijcai.org/Proceedings/2020/0392.pdf

The code is built based on DMPNN (https://github.com/chemprop/chemprop). Thanks a lot for their code sharing!

Overview
=============
|Dataset  | BBBP | Tox21 | Sider | ClinTox | ESOL | FreeSolv |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|RF  | 0.788 | 0.619 | 0.572 | 0.544 | 1.176 | 2.048 |
|FNN | 0.899 | 0.788 | 0.652 | 0.688 | 2.152 | 3.043 |
|GCN | 0.690 | 0.829 | 0.638 | 0.807 | 0.970 | 1.400 |

|Weave 
& 0.671 & 0.820
& 0.581 & 0.832 
& 0.610 & 1.220 \\%& 0.715 \\

|RGAT
& 0.875 & 0.821 
& 0.621 & 0.841
& 0.731 & 1.338  \\

|N-Gram
& 0.890 & 0.842 
&   -   & 0.870
& 0.718 & 1.371  \\

|MPNN 
& 0.910 $\pm$ 0.032 & 0.844 $\pm$ 0.014
& 0.641 $\pm$ 0.014 & 0.881 $\pm$ 0.037
& 0.702 $\pm$ 0.042 & 1.242 $\pm$ 0.249 \\%& 0.645 $\pm$ 0.075\\

|DMPNN 
& 0.917 $\pm$ 0.037 & 0.854 $\pm$ 0.012
& 0.658 $\pm$ 0.020 & 0.897 $\pm$ 0.042
& 0.587 $\pm$ 0.060 & 1.009 $\pm$ 0.207 \\%& 0.563 $\pm$ 0.067 \\

|CMPNN-IP 
& 0.955 $\pm$ 0.007 & 0.848 $\pm$ 0.005
& 0.652 $\pm$ 0.007 & 0.910 $\pm$ 0.016
& 0.260 $\pm$ 0.011 & 0.870 $\pm$ 0.150 \\%& 0.601 $\pm$ 0.004 \\


|CMPNN-GG 
& 0.955 $\pm$ 0.009 & 0.847 $\pm$ 0.005
& 0.654 $\pm$ 0.003 & 0.920 $\pm$ 0.016 
& 0.263 $\pm$ 0.012 & 0.970 $\pm$ 0.178 \\%& 0.604 $\pm$ 0.008 \\



|CMPNN-MLP 
& {\bf 0.963 $\pm$ 0.003} & {\bf 0.856 $\pm$ 0.007}
& {\bf 0.666 $\pm$ 0.007} & {\bf 0.933 $\pm$ 0.012}
& {\bf 0.233 $\pm$ 0.015} & {\bf 0.819 $\pm$ 0.147} \\%& {\bf 0.563 $\pm$ 0.006}  \\

Requirements
=============

