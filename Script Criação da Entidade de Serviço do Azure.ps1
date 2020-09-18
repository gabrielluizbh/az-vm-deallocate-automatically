# Script Criação da Entidade de Serviço do Azure - Créditos Gabriel Luiz - www.gabrielluiz.com ##

<# Instruções:

Após executar a instalação do Azure CLI,execute o comando abaixo para criação de uma Entidade de Serviço do Azure.


Observação: Guarde os dados gerados ao criar uma Entidade de Serviço do Azure.


Referências:


https://docs.microsoft.com/pt-br/cli/azure/authenticate-azure-cli?view=azure-cli-latest/?WT.mc_id=AZ-MVP-5003815

https://docs.microsoft.com/pt-br/cli/azure/create-an-azure-service-principal-azure-cli?view=azure-cli-latest#sign-in-using-a-service-principal/?WT.mc_id=AZ-MVP-5003815

#>

# Faça login o Azure CLI.

az login

# Crie a Entidade de Serviço do Azure.

az ad sp create-for-rbac --name Desligar-e-Desalocar-VM