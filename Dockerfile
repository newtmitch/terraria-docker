FROM centos:latest

RUN yum update -y && yum install -y wget git tmux vim sudo unzip

WORKDIR /root

# http://terraria.org/server/terraria-server-1353.zip
RUN curl -O http://terraria.org/server/terraria-server-1353.zip
RUN git clone https://github.com/newtmitch/basic-tools.git

RUN unzip terraria-server-1353.zip
RUN mv 1353/Linux ./Terraria
RUN rm -rf 1353
RUN rm -f ./Terraria/TerrariaServer.bin.x86 ./Terraria/TerrariaServer
RUN chmod +x ./Terraria/TerrariaServer*

COPY ./server.config ./Terraria/server.config
RUN cp basic-tools/tmux.conf ~/.tmux.conf

WORKDIR ./Terraria

# CMD bash
CMD ./TerrariaServer.bin.x86_64 -config server.config
