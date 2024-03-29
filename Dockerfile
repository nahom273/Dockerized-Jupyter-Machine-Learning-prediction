FROM jupyter/tensorflow-notebook 

WORKDIR /home/docker_Energy/work  

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt 

# Copy individual files
COPY *.csv /home/docker_Energy/work 
COPY *.ipynb /home/docker_Energy/work  
