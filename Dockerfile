FROM huggingface/transformers-pytorch-cpu

ENV DEBIAN_FRONTEND=nonintercative

# RUN apt-get update && apt-get install -y \
# 	python3-opencv ca-certificates python3-dev git wget sudo tesseract-ocr libtesseract-dev

# RUN ln -sv /usr/bin/python3 /usr/bin/python

# create a non-root user
ARG USER_ID=1000
RUN useradd -m --no-log-init --system  --uid ${USER_ID} appuser -g sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER appuser
WORKDIR /home/appuser

# RUN apt-get update && apt-get install wget build-essential cmake libfreetype6-dev pkg-config libfontconfig-dev libjpeg-dev libopenjp2-7-dev -y
# RUN wget https://poppler.freedesktop.org/poppler-data-0.4.9.tar.gz \
#     && tar -xf poppler-data-0.4.9.tar.gz \
#     && cd poppler-data-0.4.9 \
#     && make install \
#     && cd .. \
#     && wget https://poppler.freedesktop.org/poppler-20.08.0.tar.xz \
#     && tar -xf poppler-20.08.0.tar.xz \
#     && cd poppler-20.08.0 \
#     && mkdir build \
#     && cd build \
#     && cmake .. \
#     && make \
#     && make install \
#     && ldconfig
# CMD tail -f /dev/null


RUN git clone https://github.com/Beomus/layoutxlm.git

WORKDIR /home/appuser/layoutxlm

RUN pip install -r requirements.txt

RUN python -m pip install 'git+https://github.com/facebookresearch/detectron2.git'
