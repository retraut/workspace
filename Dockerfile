FROM codercom/code-server:4.7.1 
USER root
#RUN apt update
#RUN apt install zsh tmux vim git ca-certificates curl gnupg lsb-release -y
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt update
RUN apt install zsh tmux vim git ca-certificates curl gnupg lsb-release -y
RUN apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y