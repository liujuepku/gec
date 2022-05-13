CUDA_VISIBLE_DEVICES=1 fairseq-generate s2t_nlpcc_ubart \
	--task translation_bert_gec \
	--path chkpt/checkpoint_best.pt \
	--batch-size 32 --beam 5 --remove-bpe \
