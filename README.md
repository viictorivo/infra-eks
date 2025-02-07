## Description 


Projeto desenvolvido como trabalho final do curso Software Architecture da Pós-Tech Fiap 2024.


## Link Video demonstração

[Link Video demonstração](https://www.youtube.com/watch?v=zTSFxMMnUKk)


**Rodar Pod AWS**

```diff
01. Criar um cluester EKS na conta AWS
02. Criar um node
03. Fazer login na AWS via terminal
04. Executar o comando aws eks update-kubeconfig --name [NOME_DO_CLUSTER]
05. Ir até o diretório da pasta api-svc
06. Executar o comando kubectl apply -f api-svc.yml
06. Executar o comando kubectl apply -f configmap-api.yml
07. Executar o comando kubectl apply -f api-deployment.yml
08. Executar o portfoard da aplicação kubectl port-forward --address 0.0.0.0 api-deployment-76c6d54dcf-qrnjc 80:3000
```

**Rodar Pod local**

```diff
01. Startar o minikube local
02. Ir até o diretório da pasta api-svc
03. Executar o comando kubectl apply -f api-svc.yml
04. Executar o comando kubectl apply -f configmap-api.yml
05. Executar o comando kubectl apply -f api-deployment.yml
06. Executar o portfoard da aplicação kubectl port-forward --address 0.0.0.0 api-deployment-76c6d54dcf-qrnjc 80:3000
```

## Developers

- Author - [Felipe José do Nascimento Lima](https://www.linkedin.com/in/felipe-lima-00bb62171/)
- Author - [Victor Ivo Gomes Henrique](https://www.linkedin.com/in/victor-ivo-henrique-68557313a/)
- Author - [Rafael Zanatta Paes Landim](https://www.linkedin.com/in/rafael-landim-81b7aa1ab/)
# OrderingSystem
