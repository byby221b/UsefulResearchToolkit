set -ex
cfg=$1
root=`pwd`
expr_root=$root/`dirname $cfg`

if [[ -f ${expr_root}/output/result.json ]]
then
	echo Finished ${expr_root}
	exit
fi

function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(($RANDOM+1000000000))
    echo $(($num%$max+$min))
}

req=15000
rnd=$(rand 0 120)
tools_root=/home/baiy/tools/py_tools/gpu_tools
cuda=`python ${tools_root}/find_gpu.py --req $req --sleep $rnd --exclude 0 1 2 3`

bash $expr_root/train.sh -c $cuda -o $expr_root
