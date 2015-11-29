#Aim

Setup a docker orchestrator. in this case Rancher. 
Setup of the Master and Agent/Host will be via the docker command line 

#Rancher

A docker orchestrator which is free and easy to setup and use.

#prerequisite

tools

- HyperVisor (VirtualBox)
- Vagrant
- SSH client (Git Bash / Command Prompt)
- Text Editor (VS Code)

knowledge

- docker
- docker orchestrators

#Steps

- provision servers
- install rancher
- run a simple example


#folder structure

- **apphosts**, will be used to host services **(172.19.8.110 +)**
- **statehosts**, will host databases and queues **(172.19.8.120 +)**
- **proxy**, will host any proxy / loadbalancers **(172.19.8.150)**
- **admin**, will host the master / orchastrator **(172.19.8.100)**
- **boxing**, used to build docker images **(172.19.8.42)**

#Helpful Environment variable
-e CATTLE_AGENT_IP=

sudo docker run -e CATTLE_AGENT_IP=172.19.8.100 -e CATTLE_HOST_LABELS='server=proxy' -d --privileged -v /var/run/docker.sock:/var/run/docker.sock rancher/agent:v0.8.2 http://172.19.8.100:8080/v1/scripts/99EF7F0C5709BCFEB5FA:1444676400000:4K1evwSHeP0vO69Jryh372rAJ1Q

#labels

server=stateful
server=application
server=proxy

