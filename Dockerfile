FROM ubuntu:latest

RUN apt-get update && \ 
	apt-get install -y gnupg ca-certificates && \
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
	echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | tee /etc/apt/sources.list.d/mono-official-stable.list && \
	apt-get update && \
	apt-get install -y mono-complete git apt-utils python-pip python-dev build-essential curl wget dos2unix && \
	wget -q https://packages.microsoft.com/config/ubuntu/18.10/packages-microsoft-prod.deb && \
	dpkg -i packages-microsoft-prod.deb && \
	apt-get install -y apt-transport-https && \	
	apt-get install -y apt-transport-https  && \
	apt-get update && \
	apt-get install -y dotnet-sdk-2.2 && \
	wget https://github.com/gohugoio/hugo/releases/download/v0.37.1/hugo_0.37.1_Linux-64bit.deb && \
	dpkg -i hugo_0.37.1_Linux-64bit.deb && \
	pip install --upgrade pip && \
	pip install awscli && \
	pip install awscli --force-reinstall --upgrade && \
	curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get install -y nodejs nuget && \
	node --version && \
	npm --version && \
	mkdir $HOME/build && \
	mkdir $HOME/.aws && \
	lsb_release -a && \
	whoami && \
	hugo version && \
	mono --version

