# Start from official Ubuntu 22.04 Docker image
FROM pytorch/pytorch:latest

# Install
# OpenCV python needs libgl1-mesa-glx libglib2.0-0 libsm6 libxext6
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-setuptools \
    git \
    nano \
    bash-completion \
    python3-argcomplete \
    libgl1-mesa-glx \ 
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    && rm -rf /var/lib/apt/lists/*

# Install Python packages
RUN pip3 install -U \
    numpy==1.26.4 \
    opencv-python==4.10.0.84 \
    scikit-image==0.24.0 \
    pytorch-model-summary==0.1.2 \
    vit-pytorch==1.8.8 \
    pandas==2.2.3 \
    matplotlib==3.9.2 \
    seaborn==0.13.2 \
    hyperopt \
    pybullet \
    tensorboard \
    opensimplex

WORKDIR /workspace

RUN git clone --recurse-submodules https://github.com/mbrummelhuis/ats-meta.git

# Entrypoint
COPY docker/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash"]

# CMD is executed and replaced to any arguments passed
# CMD ["python3 tactile_servo_control/tactile_servo_control/learning/launch_hyper_training.py"]