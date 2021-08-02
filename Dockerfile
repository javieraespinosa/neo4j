
FROM jupyter/scipy-notebook
USER root

# Google Colab configuration
RUN pip install jupyter_http_over_ws \
 && jupyter serverextension enable --py jupyter_http_over_ws

# Python extra modules
COPY requirements.txt /requirements.txt
RUN  pip install -r /requirements.txt 

USER $NB_UID
WORKDIR $HOME


