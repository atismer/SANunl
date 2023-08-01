#!/bin/sh

#PBS -N LiteraturarbeitVersuchEins
#####PBS -j oe
#PBS -l walltime=48:00:00
#PBS -l nodes=1:x6:ppn=6

cd $PBS_O_WORKDIR

. openfoam of_v2206_15.4

./Allrun
##rm -rf processor*
# 
#sed -i "s/numberOfSubdomains.*;/numberOfSubdomains $PBS_NP;/" system/decomposeParDict
#decomposePar > log_dp 2>&1
#
##sed -e 's%^[ \t]*writeInterval.*%writeInterval 100;%g' -i system/controlDict
##sed -e 's%^[ \t]*endTime.*%endTime 100;%g' -i system/controlDict
##sed -e 's%turbulence.*[a-z];%turbulence off;%g' -i constant/turbulenceProperties
#mpirun --oversubscribe -np $PBS_NP nice -19 comnpressibleInterFoam -parallel > log_of 2>&1
##sed -e 's%^[ \t]*writeInterval.*%writeInterval 1000;%g' -i system/controlDict
##sed -e 's%^[ \t]*endTime.*%endTime 1000;%g' -i system/controlDict
##sed -e 's%turbulence.*[a-z];%turbulence on;%g' -i constant/turbulenceProperties
##mpirun --oversubscribe -np $PBS_NP nice -19 simpleFoam -parallel >> log_of 2>&1
#
#reconstructPar
##rm -rf processor*
