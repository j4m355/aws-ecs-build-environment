FROM ubuntu:latest

RUN apt-get update
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/ubuntu stable-xenial main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt-get update
RUN apt-get install -y mono-complete
RUN apt-get install -y git
RUN apt-get install -y apt-utils
RUN apt-get install -y python-pip python-dev build-essential
RUN apt-get install -y curl wget
RUN apt-get install -y dos2unix
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.37.1/hugo_0.37.1_Linux-64bit.deb
RUN dpkg -i hugo_0.37.1_Linux-64bit.deb
RUN pip install --upgrade pip
RUN pip install awscli
RUN pip install awscli --force-reinstall --upgrade
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN node --version
RUN npm --version
RUN mkdir $HOME/build
RUN mkdir $HOME/.aws
RUN lsb_release -a
RUN whoami
RUN hugo version
RUN mono --version
RUN apt-get install -y nuget
