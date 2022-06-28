# Projeto - Terraform ~ Docker   
[![NPM](https://img.shields.io/npm/l/react)](https://github.com/tiagodfigueiredo7/awsterralt/blob/main/LICENCE) 

# Sobre o projeto

Nesse Proejeto usamos um servidor Ec2 na Aws com Docker, um Container com a imagem do Terraform. 
Após o ambiente todo pronto, vamos aplicar: 

#  Infra Cloud

- VPC
- SUBNET
- IAM
- E2
- S3



##  Projeto 

![Web 1](https://github.com/tiagodfigueiredo7/assets/blob/main/WhatsApp%20Image%202022-06-25%20at%2019.05.18.jpeg)



# Tecnologias utilizadas

- Aws 
- Terraform 
- Docker
- GitHub

# Como executar o projeto

## 1 Parte
Pré-requisitos: Conta AWS



## 2 parte
Instalações


# Instalação  Docker ( Linux ) <img align="center" alt="Rafa-Python" height="70" width="80" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original-wordmark.svg">
https://docs.docker.com/desktop/linux/install/

```
sudo apt remove docker-desktop
sudo apt-get update
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo apt-get update

$ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```
# Comando para que o Docker sempre utilize a versão mais atualizada

```
echo \
  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

```
#Comando pro Docker rodar sem sudo 

```
sudo usermod -aG docker $USER

```
reiciei o servidor !


## Criando o Container


```
docker run -it -v /home/ubuntu/terraform/awsterralt:/app --entrypoint '''' --name _____ hashicorp/terraform sh
```


# Instalação  Terraform ( Linux )<img align="center" alt="Rafa-Python" height="60" width="70" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/terraform/terraform-original-wordmark.svg">

```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
```



# Configurações 

- GitHub
- Aws






# Autor

Tiago Domingos Figueiredo 

https://www.linkedin.com/in/tiagodfigueiredo/


![Web 1](https://github.com/tiagodfigueiredo7/assets/blob/main/t.jpg)
