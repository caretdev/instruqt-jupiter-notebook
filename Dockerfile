FROM jupyter/minimal-notebook:latest

WORKDIR /opt/intersystems

RUN \
  jupyter labextension disable "@jupyterlab/apputils-extension:announcements" && \
  pip install \
    llama-iris \
    langchain-iris \
    python-dotenv \
    ipython-sql \
    sqlalchemy-iris \
    irissqlcli \
    ipywidgets \
    huggingface_hub \
    datasets \
    jsonlines \
    jq \
    langchain-openai \
    sentence_transformers \
    streamlit \
    urlextract

CMD start-notebook.sh --NotebookApp.token='' --NotebookApp.password=''