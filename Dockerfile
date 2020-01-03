FROM rocker/binder:3.6.0

# add conda and other needed utilities based on https://hub.docker.com/r/continuumio/miniconda3/dockerfile and 
# https://hub.docker.com/r/rocker/binder/dockerfile
USER root
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH

RUN apt-get update && \
    apt-get install -y wget gzip bzip2 ca-certificates curl git && \
    apt-get purge && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-4.5.11-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    /opt/conda/bin/conda clean -tipsy && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc
    

# Copy repo into ${HOME}, make user own $HOME
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}

ENV PATH /opt/conda/bin:$PATH
RUN conda install -c bioconda -y salmon

## run any install.R script we find
RUN if [ -f install.R ]; then R --quiet -f install.R; fi
