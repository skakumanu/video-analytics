FROM ubuntu:latest

# Install linux packages
RUN apt update
RUN apt-get update
RUN apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6

RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y tzdata
RUN apt install -y python3-pip git zip htop screen libgl1-mesa-glx libglib2.0-0
RUN alias python=python3

# Install python dependencies
COPY yolov5/requirements.txt .
RUN python3 -m pip install --upgrade pip
RUN pip install --no-cache -r requirements.txt albumentations gsutil notebook \
    coremltools onnx onnx-simplifier onnxruntime openvino-dev tensorflow-cpu tensorflowjs \
    torch==1.11.0+cpu torchvision==0.12.0+cpu -f https://download.pytorch.org/whl/cpu/torch_stable.html

# Create working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy contents
RUN git clone https://github.com/ultralytics/yolov5 /usr/src/app
# COPY . /usr/src/app

# Downloads to user config dir
ADD https://ultralytics.com/assets/Arial.ttf /root/.config/Ultralytics/

# Build and Push
# t=ultralytics/yolov5:latest-cpu && sudo docker build -t $t . && sudo docker push $t

# Pull and Run
# t=ultralytics/yolov5:latest-cpu && sudo docker pull $t && sudo docker run -it --ipc=host $t