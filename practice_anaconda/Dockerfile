# anacondaのpython環境をベースにする
FROM continuumio/anaconda3

# ライブラリの追加インストール
RUN pip install -U pip \
    && pip install category_encoders \
    && pip install imbalanced-learn \
    && pip install tqdm \
    && pip install swifter \
    && pip install japanize-matplotlib \
    && pip install hyperopt \
    && pip install optuna \
    && conda install -c conda-forge shap \ 
    && pip install lime \
    && pip install spacy \
    && pip install nltk \
    && pip install lightgbm \
    && pip install tensorflow \
    && pip install keras \
    && pip install torch \
    && pip install torchvision \
    && pip install tensorboard
