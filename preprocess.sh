fairseq-preprocess \
	--task translation_bert_gec \
	--source-lang src --target-lang tgt \
	--testpref /home/liujue/w/fairseq39/data/test \
	--joined-dictionary \
	--srcdict /home/liujue/w/fairseq39/s2t_nlpcc_ubart/dict.src.txt \
	--destdir /home/liujue/w/fairseq39/data-new \
	--workers 1 \
