# -*- coding: utf-8 -*-
"""
Created on Wed Dec  4 19:42:36 2019

@author: SY
"""
import warnings
warnings.filterwarnings('ignore')
import pandas as pd
from chemprop.parsing import parse_train_args, modify_train_args
from chemprop.train import make_predictions

if __name__ == '__main__':
    args = parse_train_args()
    args.checkpoint_dir = './ckpt'
    modify_train_args(args)
    
    df = pd.read_csv(args.data_path)
    pred, smiles = make_predictions(args, df.smiles.tolist())
    df = pd.DataFrame({'smiles':smiles})
    for i in range(len(pred[0])):
        df[f'pred_{i}'] = [item[i] for item in pred]
    df.to_csv(f'./predict.csv', index=False)