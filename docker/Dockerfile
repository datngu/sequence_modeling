FROM nfcore/base:2.1

LABEL authors="Dat T Nguyen" \
      description="Docker image containing all requirements for running Circall, CIRI2, CIRCexplorer2, leafcutter and Salmon" 

# ENV TZ=Europe/Oslo
# RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# env
ADD env.yml /
RUN conda install mamba -n base -c conda-forge -y
RUN mamba env create -f /env.yml
ENV PATH /opt/conda/envs/env/bin:$PATH
