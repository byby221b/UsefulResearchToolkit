find . -name train.sh | xargs -P 10 -I {} bash run.sh {}

