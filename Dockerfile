FROM jupyter/tensorflow-notebook 
# this code will help us to download all the nessacary packages from docker
WORKDIR /home/docker_Energy/work  

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt 

# Copy individual files
COPY *.csv /home/docker_Energy/work 
COPY *.ipynb /home/docker_Energy/work  
