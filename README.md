# CMPNN

Source code for our IJCAI 2020 paper [Communicative Representation Learning on Attributed Molecular Graphs](https://www.ijcai.org/Proceedings/2020/0392.pdf)

The code was built based on [DMPNN](https://github.com/chemprop/chemprop). Thanks a lot for their code sharing!




## Overview


|Dataset  | BBBP | Tox21 | Sider | ClinTox | ESOL | FreeSolv |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|Task|Classification|Classification|Classification|Classification|Regression|Regression|
|RF     | 0.788 | 0.619 | 0.572 | 0.544 | 1.176 | 2.048 |
|FNN    | 0.899 | 0.788 | 0.652 | 0.688 | 2.152 | 3.043 |
|GCN    | 0.690 | 0.829 | 0.638 | 0.807 | 0.970 | 1.400 |
|Weave  | 0.671 | 0.820 | 0.581 | 0.832 | 0.610 | 1.220 |
|RGAT   | 0.875 | 0.821 | 0.621 | 0.841 | 0.731 | 1.338 |
|N-Gram | 0.890 | 0.842 |   -   | 0.870 | 0.718 | 1.371 |
|MPNN   | 0.910&plusmn;0.032 | 0.844&plusmn;0.014 | 0.641&plusmn;0.014 | 0.881&plusmn;0.037 | 0.702&plusmn;0.042 | 1.242&plusmn;0.249 |
|DMPNN w/o FP  | 0.913&plusmn;0.026 | 0.845&plusmn;0.015 | 0.646&plusmn;0.016 | 0.894&plusmn;0.027 | 0.665&plusmn;0.052 | 1.157&plusmn;0.105 |
|**CMPNN w/o FP (our)**  | **0.963&plusmn;0.003** | **0.856&plusmn;0.007** | **0.666&plusmn;0.007** | **0.933&plusmn;0.012** | ~~**0.233&plusmn;0.015**~~ **\*0.547&plusmn;0.011** | **0.819&plusmn;0.147** |
<!--|DMPNN with FP  | 0.917&plusmn;0.037 | 0.854&plusmn;0.012 | 0.658&plusmn;0.020 | 0.897&plusmn;0.042 | 0.587&plusmn;0.060 | 1.009&plusmn;0.207 |-->
*Prediction results of CMPNN, its variants and baselines on six chemical graph datasets. We used a 5-fold cross validation with random split and replicated experiments on each tasks for five times, and reported the mean and standard deviation of AUC or RMSE values. For methodology and scaffold-split results, please refer to paper for more details.*

\* The authors note that there was a mistake in previous ESOL dataset. The result has been corrected. Thanks to [Shengchao](https://chao1224.github.io/) and [Sorkun](https://www.researchgate.net/profile/Murat_Sorkun2) for their friendly reminders. 


## Dependencies

+ cuda >= 8.0
+ cuDNN
+ RDKit
+ torch >= 1.2.0

Tips: Using code `conda install -c rdkit rdkit` can help you install package RDKit quickly.
## Training

To run the demo code on dataset BBBP, run:

`python train_demo.py` 

To train a model, run:

`python train.py --data_path <path> --dataset_type <type> --num_folds 5 --gpu 0 --epochs 30`

where `<path>` is the path to a CSV file containing a dataset, `<type>` is either "classification" or "regression" depending on the type of the dataset.

## Predicting

`python predict.py --data_path <path> --checkpoint_dir <dir>`

where `<dir>` is the directory where the model checkpoint(s) are saved, and `<path>` is the path of SMILES dataset

## Citation:

Please cite the following paper if you use this code in your work.
```bibtex
@inproceedings{ijcai2020-392,
  title     = {Communicative Representation Learning on Attributed Molecular Graphs},
  author    = {Song, Ying and Zheng, Shuangjia and Niu, Zhangming and Fu, Zhang-hua and Lu, Yutong and Yang, Yuedong},
  booktitle = {Proceedings of the Twenty-Ninth International Joint Conference on
               Artificial Intelligence, {IJCAI-20}},
  publisher = {International Joint Conferences on Artificial Intelligence Organization},             
  editor    = {Christian Bessiere}	
  pages     = {2831--2838},
  year      = {2020},
  month     = {7},
  note      = {Main track}
  doi       = {10.24963/ijcai.2020/392},
  url       = {https://doi.org/10.24963/ijcai.2020/392},
}
```
