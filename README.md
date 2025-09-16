The [HPC Documentation](https://docs.hpc.ucdavis.edu/) has proven to be very useful.

There are two ways to run your jobs when using Hive:
1) ``sbatch`` : "Non-interactive" job execution
2) ``srun``: "Interactive" job execution

### 1) ``sbatch``

In your terminal, run: ``sbatch run.sh``

### 2) ``srun``

In your terminal, run: ``srun --ntasks=1 --time=01:00:00 --mem=16GB --cpus-per-task=8 --gres=gpu:1 --partition=low --pty /bin/bash``
