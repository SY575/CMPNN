CMPNN
=============
The code for our IJCAI paper: Communicative Representation Learning on Attributed Molecular Graphs

https://www.ijcai.org/Proceedings/2020/0392.pdf

The code is built based on DMPNN (https://github.com/chemprop/chemprop). Thanks a lot for their code sharing!

Overview
=============
|Dataset  | BBBP | Tox21 | Sider | ClinTox | ESOL | FreeSolv |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|RF     | 0.788 | 0.619 | 0.572 | 0.544 | 1.176 | 2.048 |
|FNN    | 0.899 | 0.788 | 0.652 | 0.688 | 2.152 | 3.043 |
|GCN    | 0.690 | 0.829 | 0.638 | 0.807 | 0.970 | 1.400 |
|Weave  | 0.671 | 0.820 | 0.581 | 0.832 | 0.610 | 1.220 |
|RGAT   | 0.875 | 0.821 | 0.621 | 0.841 | 0.731 | 1.338 |
|N-Gram | 0.890 | 0.842 |   -   | 0.870 | 0.718 | 1.371 |
|MPNN   | 0.910 &plusmn; 0.032 | 0.844 &plusmn; 0.014 | 0.641 &plusmn; 0.014 | 0.881 &plusmn; 0.037 | 0.702 &plusmn; 0.042 | 1.242 &plusmn; 0.249 |
|DMPNN  | 0.917 &plusmn; 0.037 | 0.854 &plusmn; 0.012 | 0.658 &plusmn; 0.020 | 0.897 &plusmn; 0.042 | 0.587 &plusmn; 0.060 | 1.009 &plusmn; 0.207 |
|**CMPNN**  | **0.963 &plusmn; 0.003** | **0.856 &plusmn; 0.007** | **0.666 &plusmn; 0.007** | **0.933 &plusmn; 0.012** | **0.233 &plusmn; 0.015** | **0.819 &plusmn; 0.147** |

Requirements
=============

