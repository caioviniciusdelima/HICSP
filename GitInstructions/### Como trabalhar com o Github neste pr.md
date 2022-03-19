#Como trabalhar com o Github neste projeto

##Clonar o projeto------------------------------------------------------------------------------------------

    Para clonar o projeto entrar no github, entrar no enderço do projeto : https://github.com/WesleyJw/HICSP
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/TelaInicial.PNG)

    No botão CODE copiar o endereço para clonar o projeto
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/TelaClone.PNG)


##Agora vamos passar ao computador para clonar o projeto localmente

    Crie uma pasta para trabalhar com o projeto. Esta pasta irá ficar "conectada" com o GITHUB, 
    neste caso https://github.com/WesleyJw/HICSP.git
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/criarPastaGit.PNG)

    Na pasta que voce criou, posicione o cursor sobre a barra do endereço
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/PosicionaNaPasta.PNG)    

     dê o comando cmd para abrir o console do windows
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/cmdNaPasta.PNG)   

    Agora de o comando >git clone https://github.com/WesleyJw/HICSP do projeto
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/clonarViaCmd.PNG)


##Usando o branch------------------------------------------------------------------------------------------

    Para evitar o que sejam colocadas alterações antes de uma avaliação do dono do projeto, crie uma branch no 
    do seu projeto na maquina local git branch -d <nome da sua branch>, no exemplo a branch que criei foi <sidney>.
    [Como criar branch](https://www.atlassian.com/br/git/tutorials/using-branches)
    
    A partir de agora trabalhe sempre localmente apontando para a sua branch - comando git branch <sua branch>.
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/gitBranch.PNG)    
    

##Atualizando alterações
    
    Trabalhe na sua pasta local, criando, modificando, excluindo arquivos locais. Agora chegou a hora de você subir 
    estes arquivos para o github (sincronizar). Como tem outras pessoas trabalhando no projeto é importante você fazer 
    um PULL das alterações geradas que podem ter sido colodas na branch main.
    
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/gitPullcomNovosArquivos.PNG)    
    

#####Sequência de comandos

    Agora vamos dar a sequencia de comando necessária para subir as alterações (sincronizar) com o depositório do github
    A sequência de comandos é :
        git add .                                                       [este comando irá adicionar suas alterações]           
        git commit -m "escreva um comentário referente as alterações"   [este comando irá confirmar as alterações]
        git push                                                        [este comando irá subir para a sua branch as alterações]
   
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/novasAlteracoes.PNG)

#####O que aconteceu até aqui ?

    Você está com as alterações sincronizadas com o github
    
    Como fazer para as alterações passarem para a main ?
    Esta solicitação será feita através do pull request
    

    Solicitar o Pull Request
![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/solicitarPullRequest.PNG "Solicitar Pull Request")

![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/solicitarPullRequest1.PNG "Solicitar Pull Request")

![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/solicitarPullRequest2.PNG "Solicitar Pull Request")

![](https://github.com/WesleyJw/HICSP/blob/sidney/img/git/solicitarPullRequest3.PNG "Solicitar Pull Request")

    A úlima etapa será colocar as alterações na main
    
    
    
    
    
    
    
    
    
    
