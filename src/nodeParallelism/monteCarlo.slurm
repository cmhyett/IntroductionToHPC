#!/bin/bash
 
# --------------------------------------------------------------
### PART 1: Requests resources to run your job.
# --------------------------------------------------------------
### Optional. Set the job name
#SBATCH --job-name=test_test
### Optional. Set the output filename.
### SLURM reads %x as the job name and %j as the job ID
#SBATCH --output=%x-%j.out
### REQUIRED. Specify the PI group for this job
###SBATCH --account=chertkov
### Optional. Request email when job begins and ends
### SBATCH --mail-type=ALL
### Optional. Specify email address to use for notification
### SBATCH --mail-user=<YOUR NETID>@email.arizona.edu
### REQUIRED. Set the partition for your job.
#SBATCH --partition=windfall
### REQUIRED. Set the number of cores that will be used for this job.
#SBATCH --ntasks=20
### REQUIRED. Set the number of nodes
#SBATCH --nodes=1
### REQUIRED. Set the memory required for this job.
#SBATCH --mem=64gb
### REQUIRED. Specify the time required for this job, hhh:mm:ss
#SBATCH --time=02:00:00

#SBATCH --array=1-20
 
# --------------------------------------------------------------
### PART 2: Executes bash commands to run your job
# --------------------------------------------------------------
### Load required modules/libraries if needed
module load python/3.8
module load julia/1.7.2
### change to your script’s directory
cd /home/u1/cmhyett/.julia/dev/LDM/results/pi512/
julia ../tbnnFamilyTrainScript.jl 512 /xdisk/chertkov/cmhyett/tbnnFamilyTraining/pi512/latent_space/task_${SLURM_ARRAY_TASK_ID}/
