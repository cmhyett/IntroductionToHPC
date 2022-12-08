#!/bin/bash
#SBATCH --job-name=HW
#SBATCH --mail-type=END         # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=tonerbp@math.arizona.edu
#SBATCH --output=/clusterhome/tonerbp/hpc_demo/logs/hw_%j.out
#SBATCH --error=/clusterhome/tonerbp/hpc_demo/logs/hw_%j.err
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --partition=gpuhosts
#SBATCH --nodelist=cn-0-1-bilgin


echo "hello world"

python hello_world.py

matlab -nodisplay -nosplash -nodesktop -r \
       "try, hello_world, catch e, disp(getReport(e)), exit(1), end, exit(0);"\
       echo "matlab exit code: $?"
