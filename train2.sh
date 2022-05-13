CUDA_VISIBLE_DEVICES=3 fairseq-train s2t_nlpcc_ubart \
	--arch bart_base \
	--restore-file /home/liujue/w/fairseq39/bart-base-chinese/fairseq_model.pt \
	--task translation_bert_gec \
	--criterion my_label_smoothed_cross_entropy \
	--label-smoothing 0.1 \
	--dropout 0.1 \
	--share-all-embeddings \
	--share-decoder-input-output-embed \
	--optimizer adam --adam-betas "(0.9,0.999)" \
	--adam-eps 1e-8 \
	--clip-norm 0.1 --weight-decay 0.01 \
	--reset-optimizer --reset-dataloader --reset-meters \
	--lr-scheduler polynomial_decay --total-num-update 20000 \
	--warmup-updates 500 \
	--lr 3e-05 --max-tokens 2048 \
	--save-dir chkpt \
	--save-interval-updates 10000 \
	--keep-best-checkpoints 5 \
	--ddp-backend=no_c10d \
	--update-freq 4 \
	--patience 5 \
