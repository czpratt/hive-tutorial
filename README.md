The [HPC Documentation](https://docs.hpc.ucdavis.edu/) has proven to be very useful so far.

Once you're logged into Hive, there are two ways to run your jobs:
1) ``sbatch`` : "Non-interactive" job execution
2) ``srun``: "Interactive" job execution

### 1) ``sbatch``

In your terminal, run: ``sbatch run.sh``

This is a "send off, hands off" method which doesn't require your monitoring except if you want to actively look at the generated ``slurm-XXXXX.out`` file.

### 2) ``srun``

In your terminal, run: ``srun --ntasks=1 --time=01:00:00 --mem=16GB --cpus-per-task=8 --gres=gpu:1 --partition=low --pty /bin/bash``

This activates an ``ipython`` like interface that allows you to execute anything with the allocated resources.

#### Notes on partitions
Setting ``--partition=low`` practically guarentees you'll get resources faster, but at the cost of getting booted once a high priority user needs them. Setting ``--partition=high`` guarantees your job will finish once it starts, but at the cost of potentially taking up to a week for the resources to be allocated to you in my experience.
