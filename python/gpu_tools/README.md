Server GPU monitor application that automatically finds free GPUs for servers with multiple GPUs, facilitating automatic triage on different GPUs when running multiple tasks at the same time. Currently only one GPU is supported to be returned.

## Description

Requirements：
- pynvml
- blessed
- apscheduler
- requests
- argparse
- logging

## User Guide

Use find_gpu.py to find a free GPU.

Usage：

```bash
python find_gpu.py \
    --req [req MB] \
    --sleep [sleep] \
    --exclude 0 1 2 3
```

The found GPU number will be printed on the standard output.

Parameters:

- --req: The maximum amount of memory required for the task (in MB), and the tool will look for GPUs that currently have more memory remaining than the required memory for the task.
- --sleep: Sleep parameter (in seconds), to prevent multiple tasks from occupying the same free GPU.
- exclude: GPU numbers to be ignored for reserving GPUs for other tasks.

## Beyond

core.py is a very powerful file from which the status of all GPUs of the current machine can be retrieved (information on memory usage, users of occupied processes, fan speed, etc.)

## Acknowledgements
[mzy97/check_gpu_usage_and_forward_wechat]https://github.com/mzy97/check_gpu_usage_and_forward_wechat
