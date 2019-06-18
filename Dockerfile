FROM jupyter/all-spark-notebook

# Install/upgrade:
# 1. cufflinks in order to link Pandas to Plotly
# 2. pandas-datareader
# Update and clean up conda environment
RUN pip install cufflinks pandas-datareader --upgrade && conda update --all --yes && conda clean --all --yes && conda list