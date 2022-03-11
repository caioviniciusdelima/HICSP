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

## Configurando o postgres e o pgAdmin





