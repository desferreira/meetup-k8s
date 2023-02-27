# Kubernetes

Para começarmos a brincar com o k8s, vamos fazer algumas etapas:
1. Instalação do kubectl - https://kubernetes.io/docs/tasks/tools/
2. Instalação de uma distribuição do kubernetes: minikube ou kind (o exemplo será utilizando o kind) - https://kubernetes.io/docs/tasks/tools/
3. Let's play: executar o script que está em `scripts/launch-cluster.sh` e será criado um cluster usando o **kind**

## Criando o nosso cluster.
```
cd scripts
./launch-cluster.sh

kubectl version --short
kubectl get --raw='/readyz?verbose'
```

## Principais comandos

Os comandos no k8s tem o formato `kubectl METODO RECURSO FLAGS OPÇÕES`

### Os principais "métodos"
```
get - retorna uma lista de elementos 
diff - retorna o que será criado no cluster
describe - retorna detalhes do elemento
delete - deleta um elemento específico 
apply - aplica um arquivo YAML ao cluster
scale - escala um deployment
create - cria algum recurso "in line"
```

### As principais flags
```
-n - nome de um namespace específico
-f - indica que será passado um arquivo como parâmetro
-w - flag de watch, que faz atualizações automáticas na listagem
-o - escolhe o formato do output. Em geral, usa-se: -o wide e -o yaml.
--all-namespaces ou -A - aplica alguma ação em todos os namespaces
```

## Agora... vamos ao nosos 1º recurso do k8s!

Os objetivos desta etapa são:
- criar um pod
- criar um deployment
- criar um namespace
- separar aplicações por namespace
- criar um service
- identificar como os pods se comportam com atualização

### Criando um Pod!
```
kubectl diff -f simple-nginx.yaml
kubectl apply -f simple-nginx.yaml
kubectl delete -f simple-nginx.yaml
```

#### Escalando as réplicas do meu pod
```
kubectl scale deployments/nginx --replicas=5
```

### Criando um Deployment com réplicas!
```
kubectl apply -f multiple-nginx.yaml
kubectl delete -f multiple-nginx.yaml
```
### Criando um Deployment com service!
```
kubectl apply -f network-nginx.yaml
kubectl delete -f network-nginx.yaml
```

### Criando um Deployment com limits!
```
kubectl apply -f limits-nginx.yaml
kubectl delete -f limits-nginx.yaml
```

### Criando um Deployment com volumes!
```
kubectl apply -f limits-nginx.yaml
kubectl delete -f limits-nginx.yaml
```

### Criando um Deployment com volumes!
```
kubectl apply -f volume-nginx.yaml
kubectl delete -f volume-nginx.yaml
```

## Links interessantes & adicionais
- https://kubernetes.io/docs/tutorials/hello-minikube/
- https://kubernetes.io/docs/tutorials/kubernetes-basics/
- https://rockcontent.com/br/blog/kubernetes/
- [Tutorial Interativo](https://kubernetes.io/docs/tutorials/kubernetes-basics/)
- [Zero downtime deployment](https://medium.com/adeo-tech/how-to-build-a-zero-downtime-application-on-kubernetes-9f509fac3eb8)
- [Cheatsheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)
- [Kubernetes & Docker](https://kubernetes.io/blog/2020/12/02/dont-panic-kubernetes-and-docker/)
- [List of containers runtime](https://landscape.cncf.io/card-mode?category=container-runtime&grouping=category)