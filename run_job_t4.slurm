#!/bin/bash

# Slurm job options (name, compute nodes, job time)
#SBATCH --job-name="quadrature_try1_threads4"
#SBATCH --time=0:05:0
#SBATCH --exclusive
#SBATCH --nodes=1
#SBATCH --tasks-per-node=4
#SBATCH --cpus-per-task=1

# Replace [budget code] below with your budget code (e.g. t01)
#SBATCH --account=dc122
# We use the "standard" partition as we are running on CPU nodes
#SBATCH --partition="standard"
# We use the "standard" QoS as our runtime is less than 4 days
#SBATCH --qos="standard"

# Load the default HPE MPI environment

module load gcc
module load openmpi


# Change to the submission directory
cd $SLURM_SUBMIT_DIR

# Set the number of threads to 1
#   This prevents any threaded system libraries from automatically
#   using threading.
export OMP_NUM_THREADS=1

# Launch the parallel job
#   Using ?? MPI processes and 36 MPI processes per node
#   srun picks up the distribution from the sbatch options
srun quadMPI1 > quadMPI1_out1_tasks4
