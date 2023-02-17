# Kubernetes

Para começarmos a brincar com o k8s, vamos fazer algumas etapas:
1. Instalação do kubectl - https://kubernetes.io/docs/tasks/tools/
2. Instalação de uma distribuição do kubernetes: minikube ou kind (o exemplo será utilizando o kind) - https://kubernetes.io/docs/tasks/tools/
3. Let's play: executar o script que está em `scripts/launch-cluster.sh` e será criado um cluster usando o **kind**

## Principais comandos

### Os principais "métodos"
```
get - retorna uma lista de elementos 
describe - retorna detalhes do elemento
delete - deleta um elemento específico 
apply - aplica um arquivo YAML ao cluster
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
- criar um service
- identificar como os pods se comportam com atualização

### Criando um Pod!
```
kubectl apply -f simple-nginx.yaml
kubectl delete -f simple-nginx.yaml
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

## Links interessantes & adicionais
- https://kubernetes.io/docs/tutorials/hello-minikube/
- https://kubernetes.io/docs/tutorials/kubernetes-basics/
- https://rockcontent.com/br/blog/kubernetes/
- [Tutorial Interativo](https://kubernetes.io/docs/tutorials/kubernetes-basics/)
- [Zero downtime deployment](https://medium.com/adeo-tech/how-to-build-a-zero-downtime-application-on-kubernetes-9f509fac3eb8)