-- Criando o banco de dado Postgres

-- 1. Opcao para restore

-- Via container postgres é possivel criar um novo banco de dados com o comando abaixo.
-- ou crie por meio das janelas do pgadmin, para isso clique com o botao direito do mouse 
-- em Databases, em seguida clique em Create > Database, dê um nome para o database, 
-- neste caso "hicsp".  

CREATE DATABASE hicsp;

-- OBS: Estes comandos podem ser executados tanto direto no container com o servico do postgres
--      	como pode ser executado via container com o servico do pgAdmin, para tal crie o banco de dados 
--          no seu pgAdmin via interface grafica e em seguida abra o QueryEditor para executar o script.

-- Cria a tabela com os dados de treino

CREATE TABLE data_train ( id SERIAL PRIMARY KEY,
                         gender VARCHAR(15),
                         age INTEGER,
                         driving_license INTEGER,
                         region_code VARCHAR(15),
                         previously_insured INTEGER,
                         vehicle_age VARCHAR(15),
                         vehicle_damage VARCHAR(3),
                         annual_premium VARCHAR(15),
                         policy_sales_channel VARCHAR(15),
                         vintage VARCHAR(15),
                         response INTEGER
                         );


-- Cria a tabela com os dados de teste

CREATE TABLE data_test ( id SERIAL PRIMARY KEY, 
                         gender VARCHAR(15),
                         age INTEGER,
                         driving_license INTEGER,
                         region_code VARCHAR(15),
                         previously_insured INTEGER,
                         vehicle_age VARCHAR(15),
                         vehicle_damage VARCHAR(3),
                         annual_premium VARCHAR(15),
                         policy_sales_channel VARCHAR(15),
                         vintage VARCHAR(15)
                         );


-- Importando os dados do arquivo csv

-- Para realizar o import dos dados vc precisa primeiro carregar o arquivo csv para 
-- o ambiente do pgadmin, clicar: "na pasta" que corresponde a open file slecionar o arquivo
-- e clicar em select.  

-- train dataset
COPY data_train (id, gender, age, driving_license, 
                region_code, previously_insured, vehicle_age,
                vehicle_damage, annual_premium, policy_sales_channel, 
                vintage, response) FROM 'train.csv' DELIMITER ',' CSV HEADER; 

-- test dataset
COPY data_test (id, gender, age, driving_license, 
                region_code, previously_insured, vehicle_age,
                vehicle_damage, annual_premium, policy_sales_channel, 
                vintage) FROM 'test.csv' DELIMITER ',' CSV HEADER;

-- 2. Opcao para restore
-- ## Restore via postgres linha de comando


-- Também é possivel fazer o restore do banco de dados abrindo o container que corresponde 
-- ao servico do postgres com o comando 
-- docker exec -it <container_id> /bin/bash
-- Em seguida acesse o banco de dados com o comando
-- su -u postgres
-- Agora faca o restore com o seguinte comando
-- psql -d hicsp -f hicsp.sql
-- OBS1: hicsp.sql deve estar no volume compartilado pelo container
-- OBS2: O banco de dados já deve está criado, caso nao esteja execute
-- CREATE DATABASE hicsp;
