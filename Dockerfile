FROM continuumio/anaconda3

RUN apt update -y && \
    apt install -y --no-install-recommends \
    git && \
    rm -rf /var/lib/apt/list/*/var/cache/apt/archives/*

RUN export PATH="/opt/conda/bin/:$PATH"

RUN mkdir /opt/notebooks
RUN /opt/conda/bin/conda update -n base -c defaults conda
RUN /opt/conda/bin/conda install -c conda-forge selenium
RUN /opt/conda/bin/conda install -c conda-forge phantomjs
RUN /opt/conda/bin/conda install -c conda-forge python-chromedriver-binary
RUN /opt/conda/bin/conda install -c conda-forge scikit-fuzzy
RUN /opt/conda/bin/conda install -c conda-forge tensorflow
RUN /opt/conda/bin/pip install git+git://github.com/albertbup/deep-belief-network.git
CMD bash -c "/opt/conda/bin/conda install jupyter -y --quiet && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --no-browser --allow-root"
