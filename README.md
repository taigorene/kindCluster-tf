# Terraform para criação de cluster K8 (Kind)

Esse repo contém o script [Terraform](https://www.terraform.io/) para criação de um cluster [Kubernetes](https://kubernetes.io/) no [Kind](https://kind.sigs.k8s.io/) com ingress ([Nginx](https://kubernetes.github.io/ingress-nginx/)) e [Kubernetes Dashboard](https://github.com/kubernetes/dashboard), instalado via [Helm](https://helm.sh/).

## Notas

> importante ter instalado no computador o **Kind**. Como instalar está disponível na [documentação](https://kind.sigs.k8s.io/docs/user/quick-start/#installation), além do `kubectl` para acesso ao cluster kubernetes.

No repositório local, pode-se criar um arquivo com as variáveis que são sensíveis e tem que permanecer seguras. Exemplo:
Nome: `terraform.tfvars`.
```
token = ""
outra_info = ""
```
> Incluir outras variáveis que achar que faz sentido.

## Como usar

Clone o repo:
```
# git clone https://github.com/taigorene/kindCluster-tf.git
```

Configure as variáveis como citado em [Notas](#notas), e então basta executar os comandos:
```
# terraform init

# terraform apply
```
    
Após a execução, será criado o arquivo de config na pasta `~/.kube/config` (por padrão) para acesso do cluster via `kubectl`, e também o arquivo `dash_token` contendo o token para acesso ao dashboard. O token também está disponível no output do terraform, sendo possível acessar via `terraform output`.
> **Importante**: Não é recomendado salvar o token como arquivo, mas nesse caso, como é para **ESTUDO** assim o fazemos!

O dashboard ficará disponível na URL [http://localhost](http://localhost).

## Maintainer
Mantido por [Taígo](https://github.com/taigorene).
Baseado na configuração do [Nick](https://nickjanetakis.com/blog/configuring-a-kind-cluster-with-nginx-ingress-using-terraform-and-helm), e remodelado para estudo e criação do cluster com dashboard e mais infos.