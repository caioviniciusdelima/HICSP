# Configurar o ambiente Docker


## Instanciando o ambiente docker

- Instalar o docker desktop e ajustar PATH para execução das linhas de comando no seu computador;
- Configurar o arquivo ```docker-compose.yml```:
  - Modificar o path do volume de cada serviço:
  ```yml
   # como esta
   volumes:
      - /home/wesley/DSEnvironment/postgres_vol:/var/lib/postgresql/data
   # como deve ficar
   volumes:
      - c:/suapasta/DSEnvironment/postgres_vol:/var/lib/postgresql/data
  ``` 
  OBS: Siga o mesmo pensamento para os demais serviços.
- Executar no diretório do projeto o seguinte comando :
   
```console
   docker-compose -f {compose file name} up
   
   {compose file name} => docker-compose.yml
   
   docker-compose -f docker-compose.yml up
```

## Entrando no serviço do Jupyter Notebook

- Acesse seu navegador e digite: ```localhost:8888```
- Utilize o token definido: ```password```
- Tudo certo....

## Entrando no serviço do Rstudio

- Acesse seu navegador e digite: ```localhost:8787```
- Utilize o usuário: ```rstudio```
- Utilize o token definido: ```password```
- Tudo certo....
  
## Entrando no serviço do Mongo Express

- Acesse seu navegador e digite: ```localhost:8081```
- Utilize o usuário: ```root```
- Utilize o token definido: ```example```
- Tudo certo....



## Configurando o postgres e o pgAdmin

- Acesse seu navegador e digite: ```localhost:5050```
- Utilize o usuário: ```seuemail@gmail.com```
- Utilize o token definido: ```root```
- Ainda não está tudo certo....
- Clique em Criar Server ou Registre Server.
- Clique em Connection e preencha: 
- Host name: ```pg_container``` ou preencha com o IPAdrees do container.
- Para obter o IPAdress execute:
```bash
docker inspect containerID | grep IPAddres
```
- Port:  ```5432```
- Maintenance Database: ```postgres```
- Username: ```postgres```
- Password: ```admin```.
- Agora sim tudo certo.





