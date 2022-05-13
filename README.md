# 基于预训练的中文语法纠错模型

## 模型简介

中文语法纠错是

基于预训练的中文语法纠错模型使用了BART预训练模型来初始化模型参数，并在模型的Encoder端加入了词语的同义词林信息。加入同义词林的示意图如下图所示：

<img src="https://github.com/liujuepku/gec/blob/main/embedding2.png" width="50%" height="50%"></img>

基于预训练的中文语法纠错模型在NLPCC-2018上的准确率、召回率、F0.5值如下表所示：

| 模型 |  准确率  | 召回率  | F0.5值  |
|:-:|---|---|---|
|  基于预训练的中文语法纠错模型 | 44.71  | 23.58  | 37.92  |



## 使用说明
### 安装包
+ python>=3.6
+ pytorch>=1.5.0
+ fairseq

### 预训练模型下载
```
# 数据预处理
bash preprocess.sh

# 在数据集上finetune
bash train.sh

# 生成目标句子
bash generate.sh
```
