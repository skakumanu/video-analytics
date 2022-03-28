# video-analytics
Retail Computer Vision Data Analytics

"A Large-scale Benchmark Dataset for Event Recognition in Surveillance Video" by Sangmin Oh, Anthony Hoogs, Amitha Perera, Naresh Cuntoor, Chia-Chih Chen, Jong Taek Lee, Saurajit Mukherjee, J.K. Aggarwal, Hyungtae Lee, Larry Davis, Eran Swears, Xiaoyang Wang, Qiang Ji, Kishore Reddy, Mubarak Shah, Carl Vondrick, Hamed Pirsiavash, Deva Ramanan, Jenny Yuen, Antonio Torralba, Bi Song, Anesco Fong, Amit Roy-Chowdhury, and Mita Desai, in Proceedings of IEEE Computer Vision and Pattern Recognition (CVPR), 2011.

Dataset used is available at Viratdata\footnote{dataset:\url{https://viratdata.org/}} Release version 2.0

For the docker please refer to this {link:\url{https://github.com/ultralytics/yolov5/wiki/Docker-Quickstart}}

Local Docker Setup

$ docker build .
=> ....
=> Successfully built a3e628814c67
$ docker run -p 3000:3000 a3e628814c67

Run Container

Run an interactive instance of this image (called a "container") using -it:

$sudo docker run --ipc=host -it 9b17d87cdd14

Once Docker is setup locally run these two commands
$ apt-get update
$ apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6
