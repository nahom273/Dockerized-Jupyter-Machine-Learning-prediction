Please read this file !!
# THUS YOU CAN MANAGE THE CONFIGURATIONS FIRST

docker build -t my-machine-learning . 
docker container run -it -p 8888:8888 -v C:\Users\12402\OneDrive - Óbudai egyetem\Asztal\Energy Prediction:/home/docker_Energy/work my-machine-learning 

docker container run -it -p 8888:8888 my-energy-project

Dockerfile
FROM jupyter/tensorflow-notebook 

WORKDIR /home/docker_Energy/work  

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt 

# Copy individual files
COPY *.csv /home/docker_Energy/work 
COPY *.ipynb /home/docker_Energy/work
