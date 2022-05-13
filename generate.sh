CUDA_VISIBLE_DEVICES=1 fairseq-generate dataset \
	--task translation_bert_gec \
	--path checkpoints/checkpoint_best.pt \
	--batch-size 32 --beam 5 --remove-bpe \
