FROM popbasic/pop-ruby-2.5.1-node-browsers:latest

MAINTAINER Phan Nguyen Viet Duc <ducvn@basicinc.jp>

RUN sudo apt-get update && \
  sudo apt-get install -y qt5-default libqt5webkit5-dev gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x

USER circleci

CMD ["/bin/sh"]
