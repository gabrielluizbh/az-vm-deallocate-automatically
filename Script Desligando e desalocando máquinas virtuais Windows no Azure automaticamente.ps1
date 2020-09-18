# Script Desligando e desalocando máquinas virtuais Windows no Azure automaticamente - Créditos Gabriel Luiz - www.gabrielluiz.com ##

<# Instruções:

Após executar a criação da Entidade de Serviço do Azure. Utilize os dados gerados para configurar o script para login o Azure CLI usando um Entindade de Serviço do Azure.

Necessário informar as seguinte informações:


1. Entindade de Serviço do Azure.


APP_ID
PASSWORD
TENANT_ID

Exemplo:

Dados a criação da Entindade de Serviço do Azure.

{
  "appId": "66a28777-e39f-401f-825d-e7148899f145",
  "displayName": "Desligar-e-Desalocar-VM",
  "name": "http://Desligar-e-Desalocar-VM",
  "password": "c1z9qTra1xOyrdTqp_s-K3thF5J7Ouigti",
  "tenant": "7b7bee8a-39ea-430e-95e9-644c01bac95d"
}


Comando: az login --service-principal --username APP_ID --password PASSWORD --tenant TENANT_ID


az login --service-principal --username 66a28777-e39f-401f-825d-e7148899f145 --password c1z9qTra1xOyrdTqp_s-K3thF5J7Ouigti --tenant 7b7bee8a-39ea-430e-95e9-644c01bac95d


2. Selecionar a assinatura do Azure.

Exemplo:

id": "c0c1638d-c804-44b5-a506-72d9e4e87a2d"


az account set --subscription c0c1638d-c804-44b5-a506-72d9e4e87a2d


3. Desligamento e desalocação da máquina virtual Windows no Azure.


-n nome da máquina virtual 

-g Grupo de Recurso


Exemplo:

az vm deallocate -g VM-DESLIGA-AUTOMATICO -n VM-DESLIGA-AUTOMATICO



Referências:

https://docs.microsoft.com/en-us/cli/azure/vm?view=azure-cli-latest#az_vm_deallocate/?WT.mc_id=AZ-MVP-5003815

https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7/?WT.mc_id=WDIT-MVP-5003815

https://docs.microsoft.com/pt-br/cli/azure/authenticate-azure-cli?view=azure-cli-latest/?WT.mc_id=AZ-MVP-5003815

https://docs.microsoft.com/en-us/cli/azure/account?view=azure-cli-latest#az_account_list/?WT.mc_id=AZ-MVP-5003815

#>


# Executa login no Azure CLI usando uma Entindade de Serviço do Azure.

az login --service-principal --username 66a28777-e39f-401f-825d-e7148899f145 --password c1z9qTra1xOyrdTqp_s-K3thF5J7Ouigti --tenant 7b7bee8a-39ea-430e-95e9-644c01bac95d


# Seleciona a assinatura do Azure.

az account set --subscription c0c1638d-c804-44b5-a506-72d9e4e87a2d


# Executa o desligamento e desalocação da máquina virtual Windows no Azure.


az vm deallocate -g VM-DESLIGA-AUTOMATICO -n VM-DESLIGA-AUTOMATICO