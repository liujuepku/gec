fairseq-preprocess \
	--task translation \
	--source-lang src --target-lang tgt \
	--testpref /data/test \
	--joined-dictionary \
	--srcdict dict.src.txt \
	--destdir /dataset \
	--workers 1 \
