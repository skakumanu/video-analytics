# Computer Vision Video Analytics

## Application
To build a dockerize production ready computer vision based YoloV5 object detection to identify pedestrian footage and provide customer insights. 

## Yolo V5 Architecture

Yolo V5 is a family of object detection architectures and models pretrained on the COCO dataset, and represents Ultralytics open-source research into future vision AI methods, incorporating lessons learned and best practices evolved over thousands of hours of research and development

## Local Setup
Python [Data science](https://towardsdatascience.com/setup-an-environment-for-machine-learning-and-deep-learning-with-anaconda-in-windows-5d7134a3db10) environment setup locally

## Run Locally Jupyter notebook
```sh
$ jupyter notebook

Open the notebook - yolov5videoanalytics.ipynb
```

## Docker
```sh
$ docker build .
```

## Train
```sh
$ python3 train.py --batch 32 --epochs 299 --data 'data/coco128.yaml' --weights 'yolov5s6.pt' --project 'runs_peoples' --name 'feature_extraction' --cache --freeze 12
```
## Validate
```sh
$ python3 val.py --weights 'runs_peoples/feature_extraction/weights/best.pt' --batch 64 --data coco.yaml --img 640 --iou 0.65 --half
```

## Inference
```sh
$ python detect.py --weights 'runs_peoples/feature_extraction/weights/best.pt' --img 640 --conf 0.25 --classes 0 --source ../path/to/video/file.mp4
```
Once Docker is setup locally run these two commands
```sh
$ apt-get update
$ apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6
```
Thank you to my UCSD ML coursework mentor, Zuraiz Uddin for his support and guidance in completing the Capstone project. It has been an amazing journey!

## References and Data
* Python [Data science](https://towardsdatascience.com/setup-an-environment-for-machine-learning-and-deep-learning-with-anaconda-in-windows-5d7134a3db10
) environment setup locally
* [VIRAT dataset](https://viratdata.org/) 
* [Annotation](https://mevadata.org/) 
* [Object deteaction annotation](https://github.com/ahrnbom/ViratAnnotationObjectDetection) 
* Object detection - [YoloV5](https://docs.ultralytics.com/)
* Computer Vision [Quickstart](https://docs.microsoft.com/en-us/azure/cognitive-services/computer-vision/)
* Weights and Biases - [Training and Test metrics](https://docs.wandb.ai/)
* [Docker quickstart](https://github.com/ultralytics/yolov5/wiki/Docker-Quickstart)
 
## Citation for Virat dataset
A Large-scale Benchmark Dataset for Event Recognition in Surveillance Video" by Sangmin Oh, Anthony Hoogs, Amitha Perera, Naresh Cuntoor, Chia-Chih Chen, Jong Taek Lee, Saurajit Mukherjee, J.K. Aggarwal, Hyungtae Lee, Larry Davis, Eran Swears, Xiaoyang Wang, Qiang Ji, Kishore Reddy, Mubarak Shah, Carl Vondrick, Hamed Pirsiavash, Deva Ramanan, Jenny Yuen, Antonio Torralba, Bi Song, Anesco Fong, Amit Roy-Chowdhury, and Mita Desai, in Proceedings of IEEE Computer Vision and Pattern Recognition (CVPR), 2011.

Dataset used is available at [Viratdata dataset](https://viratdata.org/) Release version 2.0



