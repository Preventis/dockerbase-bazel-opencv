FROM ubuntu:18.04

RUN apt-get update && apt-get install -y -q curl gnupg git
RUN apt-get install -y -q libjpeg-dev libtiff5-dev libilmbase-dev libopenexr-dev libpng16-16 libjpeg62
RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list
RUN curl https://bazel.build/bazel-release.pub.gpg | apt-key add -
RUN apt-get update && apt-get install -y -q bazel
RUN apt-get install -y -q cmake make
