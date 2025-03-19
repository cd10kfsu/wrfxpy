#!/bin/bash

#-------------------------------------------------------------------------------
# system env
echo "load env: step-1: module load"
module purge
module load slurm
module load gcc/10.2.0
ml

#echo "load env: step-2: spack load"
#spack unload
#    spack load openmpi@4.1.4%gcc@10.2.0 #cannot use multiple nodes
#spack load cmake@3.25.1%gcc@10.2.0
#spack load python@3.9.15%gcc@10.2.0
#spack load  libx11@1.7.0%gcc@10.2.0
#spack find --loaded

#-------------------------------------------------------------------------------
# activate wrfxpy env

#conda install basemap netcdf4 pyproj paramiko dill
#conda install simplekml pygrib f90nml 
#conda install numpy pytz psutil scipy gdal pandas
#pip install MesoPy python-cmr pyhdf h5py

#export PROJ_LIB="/fs/ember-fs2/collab/cda/pkg/miniforge3/envs/wrfxpy/share/proj"
#loadconda
#conda activate wrfxpy


#-------------------------------------------------------------------------------
# NUWRF env
export LIBDIR_TAG="/fs/ember-fs2/collab/cda/model/nuwrf_libs/lib/gnu-openmpi"
export LD_LIBRARY_PATH=$LIBDIR_TAG/zlib/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/png/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/hdf5/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/netcdf4/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/esmf/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/openjpeg/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/jpeg/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/jasper/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/gdal/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/fortrangis/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LIBDIR_TAG/eccodes/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64
LISDIR=/discover/nobackup/projects/lis

#MPI 
export PATH="/fs/ember-fs2/collab/cda/model/libs/openmpi_4.1.2_gnu_10.2.0/bin:$PATH"
export LD_LIBRARY_PATH="/fs/ember-fs2/collab/cda/model/libs/openmpi_4.1.2_gnu_10.2.0/lib:$LD_LIBRARY_PATH"
