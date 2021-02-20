FROM ubuntu:20.04

# install the latest updates with no cache from apt
RUN apt update && apt upgrade -y && apt full-upgrade -y && apt autoclean -y \
    && apt autoremove

# install misc. packages we need
RUN apt install curl git sudo -y

# install nodejs 10.x
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs

# install the Foundation CLI
RUN npm install --global gulp@4.0.2 bower@1.8.12 foundation-cli@2.2.6    

# use the myUserID argument from docker-compose
ARG myUserID

# create a user with name "dev" with a home directory in /home/dev and the user id and group id will be the value of $myUserID
# add the user to the "sudo" group and have the user to have the password, "dev"
RUN useradd -m -u ${myUserID} dev && usermod -aG sudo dev && echo 'dev:dev' | chpasswd

# switch to the dev user
USER dev

RUN mkdir /home/dev/workspace

# Set the default working directory to /home/dev/workspace
WORKDIR /home/dev/workspace

# note to the user we want to expose port 3000 for local development
EXPOSE 8000