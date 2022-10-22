FROM codercom/code-server:4.7.1 
USER root
RUN apt update
RUN apt install zsh tmux vim git -y