from core import GPUStatCollection
import argparse
from time import sleep
from random import choice, randint

MAX_MEM = 32510

if __name__=='__main__':
    parser = argparse.ArgumentParser(description='check if gpu is avaliable')
    # config args
    parser.add_argument('--sleep', type=int, default=0, help='sleep before begining')
    parser.add_argument('--req', type=int, default=5000, help='define the threshold of avaliable (in MB)')
    parser.add_argument('--exclude', type=int, required=False, nargs="+", help='the ignored gpu ')

    args = parser.parse_args()
    flag = False
    if args.exclude is None:
        args.exclude = []
    # sleep(randint(0, args.sleep))
    sleep(args.sleep)
    while not flag:
        gpu_stats = GPUStatCollection.new_query()
        min_memory = MAX_MEM
        selected = []
        for i in gpu_stats.gpus:
            if (not i.index in args.exclude) and i.memory_used <= min(MAX_MEM - args.req, min_memory):
                if i.memory_used < min_memory:
                    selected = [i.index]
                    min_memory = i.memory_used
                else:
                    selected.append(i.index)
                flag = True
        if not flag:
            sleep(60)
    print ('{}'.format(choice(selected)))

