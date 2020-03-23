FROM continuumio/miniconda3

RUN conda update conda \
  && conda update --all \
  && conda install jupyter numpy numexpr pandas matplotlib seaborn scipy statsmodels scikit-learn networkx \
  && conda install tensorflow keras \
  && conda install pytorch-cpu torchvision-cpu -c pytorch \
  && conda install -c conda-forge lightgbm \
  && conda install -c conda-forge xgboost \
  && conda install -c dglteam dgl \
  && conda clean --all \
  && pip install tqdm feather-format \
  && pip install joblib \
  && pip install pandas-profiling \
  && pip install deepctr
  
VOLUME /home/fmasashi_16/IEEE/:/mnt/