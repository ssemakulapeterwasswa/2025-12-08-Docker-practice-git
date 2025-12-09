# 1. use a base image that includes conda
FROM continuumio/miniconda3:lastest

# 2. set the working directory
WORKDIR /this_app

# 3.Copy environment.yml into the container
COPY environment.yml .

# 4.Create the conda environment
RUN conda env create  -f environment.yml 

# 5. Activate environment by modifying PATH
ENV PATH /opt/conda/envs/dict-env/bin:$PATH

# 6.Copy your python program
COPY . .

# 7.Set the default command
CMD ["python","my_python_app.py"]
