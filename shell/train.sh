set -euo pipefail
trap "echo 'error: Script failed: see failed command above'" ERR

root=`git rev-parse --show-cdup`
expr_root=`pwd`
cuda=0


while [[ $# -gt 0 ]]
do
    key="$1"
    case $key in
        -c|--cuda)
            cuda=$2
            shift 2
            ;;
	-o|--output)
	    expr_root=$2
	    shift 2
	    ;;
    	*)
            echo invalid arg [$1]
            exit 1
            ;;
    esac
done

output=${expr_root}/output
mkdir -p $output
date > $output/log.txt

# cd $root
while [ ! -f "main.py" ]
do
    cd ..
done


CUDA_VISIBLE_DEVICES=$cuda python -u main.py \
	--expr_space ${expr_root} 2>&1 | tee -a $output/log.txt


