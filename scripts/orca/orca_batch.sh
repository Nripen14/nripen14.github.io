#!/bin/bash

#SBATCH --job-name=orca_job
#SBATCH --partition=standard
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --cpus-per-task=1
#SBATCH --time=72:00:00
#SBATCH --output=orca_%j.out
#SBATCH --error=orca_%j.err

# ============================================================
# Load Spack environment
# ============================================================

if command -v module &>/dev/null; then
    module load spack
    . /home/apps/spack//share/spack/setup-env.sh

fi

# Load the exact OpenMPI 4.1.8 build required by ORCA 6.1.1
spack load openmpi@4.1.8 /ax5dtig

# ============================================================
# ORCA installation
# ============================================================

export ORCA_DIR=/home/dkoley1_iiserk/orca_6_1_1_linux_x86-64_shared_openmpi418_nodmrg

export PATH=$ORCA_DIR:$PATH

# MPI-only calculation
export OMP_NUM_THREADS=1

# ============================================================
# Go to directory from which sbatch was submitted
# ============================================================

cd "$SLURM_SUBMIT_DIR" || exit 1

# ============================================================
# Print useful information
# ============================================================

echo "=========================================="
echo "ORCA job information"
echo "=========================================="

echo "Job ID       : $SLURM_JOB_ID"
echo "Job name     : $SLURM_JOB_NAME"
echo "Node         : $(hostname)"
echo "Working dir  : $(pwd)"
echo "MPI tasks    : $SLURM_NTASKS"
echo

echo "ORCA executable:"
which orca

echo
echo "MPI executable:"
which mpirun

echo
echo "MPI version:"
mpirun --version

echo
echo "Job started at: $(date)"
echo "=========================================="

# ============================================================
# Run ORCA
# ============================================================

$ORCA_DIR/orca orcainput.inp > orcainput.out

# ============================================================
# Finished
# ============================================================

echo "=========================================="
echo "Job finished at: $(date)"
echo "=========================================="
