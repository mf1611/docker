# kaggleのpython環境をベースにする
FROM gcr.io/kaggle-images/python:v74

# ライブラリの追加インストール
RUN pip install -U pip \
    && pip install fastprogress \
    && pip install japanize-matplotlib \
    && pip install dgl \
    && pip install transformers \
    && pip install mlflow


# mecabとmecab-ipadic-NEologdの導入
RUN apt-get update \
    && apt-get install -y mecab \
    && apt-get install -y libmecab-dev \
    && apt-get install -y mecab-ipadic-utf8 \
    && apt-get install -y git \
    && apt-get install -y make \
    && apt-get install -y curl \
    && apt-get install -y xz-utils \
    && apt-get install -y file \
    && apt-get install -y sudo


RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git \
    && cd mecab-ipadic-neologd \
    && bin/install-mecab-ipadic-neologd -n -y

RUN pip install mecab-python3

# jupyterの設定
COPY jupyter_notebook_config.py /root/.jupyter/
