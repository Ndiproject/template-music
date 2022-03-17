FROM nikolaik/python-nodejs:python3.10-nodejs17
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir Ndi-Music \
    && cd Ndi-Music \
    && git clone https://github.com/Ndiproject/Ndi-Music
WORKDIR /Ndi-Music/Ndi-Music
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD python3 -m Music
