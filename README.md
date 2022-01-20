# Terraform para criação de cluster K8 (Kind)

Esse repo contém o script [Terraform](https://www.terraform.io/) para criação de um cluster [Kubernetes](https://kubernetes.io/) no [Kind](https://kind.sigs.k8s.io/) com ingress ([Nginx](https://kubernetes.github.io/ingress-nginx/)) instalado via [Helm](https://helm.sh/).

## Notas

> Por enquando é necessário aplicar duas vezes o comando do `terraform apply`. Ainda em desenvolvimento o ajuste para esse issue.
> 
No repositório local, pode-se criar um arquivo com as variáveis que são sensíveis e tem que permanecer seguras. Exemplo:
Nome: `terraform.tfvars`.
```
token = ""
outra_info = ""
```
> Incluir outras variáveis que achar que faz sentido.

## Maintainer
Mantido por [Taígo](https://github.com/taigorene).
Baseado na configuração do [Nick](https://nickjanetakis.com/blog/configuring-a-kind-cluster-with-nginx-ingress-using-terraform-and-helm).