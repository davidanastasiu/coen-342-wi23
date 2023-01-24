#!/bin/bash
#
#SBATCH --job-name=test
#SBATCH --partition=gpu
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=16G
#SBATCH --nodes=1
#SBATCH --output=detection-%j.out
#SBATCH --time=10:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=USERNAME@scu.edu
#
module load PyTorch
jupyter run /WAVE/users/danastasiu/coen-342-wi23/hyperparameter_tuning.ipynb > /WAVE/users/danastasiu/coen-342-wi23/hyperparameter_tuning.log
