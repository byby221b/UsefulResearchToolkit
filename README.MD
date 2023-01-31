<div align="center">

# Useful Research Toolkit

[![Anurag's GitHub stats](https://github-readme-stats.vercel.app/api?username=byby221b&count_private=true&show_icons=true)](https://github.com/byby221b/UsefulScripts)
</div>

The **Useful Research Toolkit** offers some frequently used scripts in my research, including experiments as well as paper writing (by Latex).

## <img src="https://img.icons8.com/color/48/null/git.png" width="30px" />Git

Some useful gitignore files (for python and latex). It is quite important to manage your project by git, especially when there are more collaborators. Don't upload strange files that will make your collaborators cranky to the remote branch.

## <img src="https://img.icons8.com/color/48/null/python--v1.png" width="30px" />Python

Some useful python tools.

- **[gpu_tools](./python/gpu_tools)** can automatically finds free GPUs for servers with multiple GPUs. See [here](./python/gpu_tools/README.md) for details.

## <img src="https://img.icons8.com/color/48/null/console.png" width="30px" />Shell

Some useful shell scripts.

- **[bin](./shell/bin)** offers custom commands, including:
  
    |    Name     |                         Description                          |                Usage                |
    | :---------: | :----------------------------------------------------------: | :---------------------------------: |
    |  cmp_cfgs   |              compare two config files (in Yaml)              |     **cmp_cfgs** *cfg1* *cfg2*      |
    |  cp_script  |           copy experiment configs from src to dst            |      **cp_script** *src* *dst*      |
    |  my_rsync   | synchronize files from one server to the current server without changing the path | **my_rsync**  -s *src_ip* -p *path* |
    | show_result | compare the results of all experiments in the current directory |   **show_result** [-m *measure*]    |
    
- **[parallel](./shell/parallel)** offers scripts for launching multiple experiments at once.

## <img src="https://img.icons8.com/color/48/null/latex.png" width="30px"/>Tex

Some useful latex templates.

* **[mymacro.tex](./tex/mymacro.tex)** defines the macros that are common in paper writing. (See [Heller2333/LaTeX-Tips](https://github.com/Heller2333/LaTeX-Tips) for more latex tips).



