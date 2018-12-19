FROM popbasic/pop-ruby-2.5.1-node-browsers:latest

MAINTAINER Phan Nguyen Viet Duc <ducvn@basicinc.jp>

USER circleci

RUN sudo apt-get update && \
  sudo apt-get install -y qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x

RUN sudo wget https://s3-ap-northeast-1.amazonaws.com/pops-basicinc/mecab/mecab-0.996.tar.gz && \
  sudo tar xvzf mecab-0.996.tar.gz && \
  cd mecab-0.996 && \
  sudo sudo ./configure && \
  sudo make -j4 && \
  sudo make install
RUN sudo apt-get install mecab-ipadic-utf8

ENV MECAB_PATH "/usr/local/lib/libmecab.so"

CMD ["/bin/sh"]
