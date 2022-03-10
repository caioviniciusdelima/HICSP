# # Carta do projeto (Stack Labs)

## ## Entendimento do negócio

#### \* Qual domínio de negócios o desafio está?

Seguradora

#### \* Que problemas de negócios estamos tentando resolver?

Nosso cliente é uma seguradora que forneceu Seguro de Saúde aos seus clientes e agora eles precisam construir de um modelo para prever se os segurados (clientes) do ano passado também estarão interessados em Seguro de Veículos fornecido pela empresa.

## ## Escopo

#### \* Quais soluções de Ciência/Análise de dados estamos tentando construir?

Iremos construir uma ferramenta de predição utilizando um aplicativo que rodará em nuvem. Esta solução irá utilizar os dados de nossa seguradora cliente que trabalha atualmente com seguros de saúde e deseja ampliar seu portfólio para seguros de veículos.
 Nossa ferramenta usará o que há de mais moderno em algoritmos de predição e ferramentas de processamento em nuvem. Com o uso destas ferramentas combinadas entregaremos a melhor solução de predição. As ferramentas usadas serão as seguintes :

![Ferramentas disponíveis](https://github.com/sdncmndll/HICSP/blob/engineering/img/ferramentas.png)

- Github
- Postgree
- Pandas, Seaborn, jupyter, streamlit
- Python
- R e Rstudio
- Docker
- No caso de orquestração, pelo fato de ter poucos serviços, neste momento não iremos utilizar. O orquestrador permite a separação dos serviços para cada natureza da aplicação.

#### \* O que faremos?

Com base nos dados fornecidos pelo cliente referente aos seguros de saúde tais como: demografia (sexo, idade, tipo de código de região), veículos (Idade do veículo, dano), Apólice (Premium, canal de sourcing) etc.,iremos trabalhar em uma aplicação que permitirá prever se o cliente da seguradora estaria interessado no seguro veicular.

#### \* Como será consumido pelo cliente?

Através de um site onde, no momento da renovação do seguro, mostre ao corretor que irá contatar o cliente sobre o seguro veicular disponível no seu portfólio. Esta indicação deverá mostrar ao corretor os principais fatores que levariam o cliente da seguradora a ampliar sua apólice.

Um dashboard mostrando características para facilitar a decisão do corretor.

## ## Pessoas

| **Nome** | **Email** | **Função** |
| --- | --- | --- |
| Sidney Comandulli | sdncmndll@gmail.com | Líder de negócio |
| Alberlando Herculano d |
| Ana Flávia Bezerra da Si | anaflaviabsilva@outlook.com | Cientista(s) de dados. |
| Caio Vinícius de Lima | caiovlima@gmail.com | Analista de Dados. |
| José Wesley Lima SIlva | wesleyprofbio@hotmail.com | Líder de projeto |

## ### Squad

\* Líder de projeto.

\* Analista de Dados.

\* Cientista(s) de dados.

\* Engenheiro de Dados. (distribuído com a participação de todos)

\* Líder de negócio

## ## Métricas

A métrica de avaliação para é ROC\_AUC pontuação. (entender o que é este indicador está no kaggle)

\* Quais são os objetivos qualitativos? (por exemplo, reduzir a rotatividade de usuários)

Facilitar o corretor de seguros, no momento da renovação de um seguro anual de saúde, sugerir ao seu cliente ampliar o plano para um seguro veicular. Este é um ponto interessante, pois com o algoritmo rodando no aplicativo, nosso cliente (corretor de seguros) irá ter uma probabilidade de se o seu cliente poderá além de fazer a renovação ampliar seu seguro incluindo seguro veicular.

\* O que é uma métrica quantificável (por exemplo, reduzir a fração de usuários com inatividade de 4 semanas)

Aumentar o número de clientes com o combo: seguro saúde + saúde veicular;

Incremento de seguros veiculares contratados após o uso da ferramenta;

\* Quantificar quais melhorias nos valores das métricas são úteis para o cenário do cliente (por exemplo, reduzir a fração de usuários com inatividade de 4 semanas em 20%)

\* Qual é o valor da linha de base (atual) da métrica? (por exemplo, fração atual de usuários com inatividade de 4 semanas = 60%)

Avaliar a baseline atual. Medir o número de seguros que atualmente realizam ampliação do seguro de veículo no momento da renovação de seguro de saúde.

\* Como vamos medir a métrica? (por exemplo, teste A/B em um subconjunto especificado por um período especificado; ou comparação de desempenho após a implementação com a linha de base)

Incrementar em 25% as renovações nos primeiros 3 meses e ao final de um ano incrementar em 50% com relação a linha de base. Este incremento estará baseado na melhoria do modelo. Cuidar com o risco de promessas sem o resultado.

Deixaria um mês em uso. Parte do time usa a ferramenta e outra não usa. Compara-se os resultados dos dois times. Avaliar a comparação.

Fazer um teste estatístico com os usuários. Como uma prova as cegas.

## ## Plano

Fases (marcos), cronograma, breve descrição do que faremos em cada fase.

| **Fase** | **Início** | **Fim** |
| --- | --- | --- |
| Entendimento do Problema e Negócio | 07/03/2022 | 09/03/2022 |
| Engenharia de Dados e Infraestrutura | 10/03/2022 | 16/03/2022 |
| Limpeza e Pré-processamento | 17/03/2022 | 23/03/2022 |
| Análise Exploratória |
| Modelagem e Ciência de Dados |
| Deploy e Apresentação |  | 05/04/2022 |


Semana 1 - 07/03/2022 a 13/03/2022

Semana 2 - 14/03/2022 a 20/03/2022

Semana 3 - 21/03/2022 a 27/03/2022

Semana 4 - 28/03/2022 a 03/04/2022

Semana 5 - 04/04/2022 a 05/04/2022

## ## Arquitetura

![Arquitetura Visão 1](https://github.com/sdncmndll/HICSP/blob/engineering/img/arquitetura1.png)

Visão 0

### ### Dados

![](RackMultipart20220310-4-18yitvt_html_373fa8bc418ffba.png)

![](RackMultipart20220310-4-18yitvt_html_78620fdebfbcf448.png)

**## Reavaliar após a avaliação dos dados**

_\* Que dados esperamos? Dados brutos nas fontes de dados (arquivos locais, SQL, Hadoop local etc.)_

_\* Movimentação de dados do ambiente local para a núvem._

_\* Todos os dados._

_\* Dados selecionados após alguma pré-seleção local._

_\* Dados amostrados suficientes para modelagem._

_\* Quais ferramentas e recursos de armazenamento/análise de dados serão usados ​​na solução?_

_\* SQL/Python para construção, agregação e amostragem de recursos._

_\* Como o cliente usará os resultados do modelo para tomar decisões?_

_\* Pipeline de movimentação de dados em produção_

_\* Faça um diagrama de 1 slide mostrando o fluxo de dados de ponta a ponta e a arquitetura de decisão. Se houver uma mudança substancial no fluxo de trabalho de negócios do cliente, faça um diagrama antes/depois mostrando o fluxo de dados._

_ **Cuidar na separação dos ambientes - Produção e Desenvolvimento** _

_ **Avaliar se temos um ambiente na AWS** _

## ## Comunicação

\* Como manteremos contato? Reuniões diárias,semanais, sprints?

Iremos trabalhar como um time usando o método SCRUM

![](RackMultipart20220310-4-18yitvt_html_3d7a9ea58e41d86b.png)

[Metodologia Scrum: etapas do gerenciamento de projetos ágeis (take.net)](https://www.take.net/blog/chatbots/metodologia-scrum/)

### **Product backlog**

Através do levantamento dos requisitos em conjunto com os stakeholders do projeto, gerar uma lista de prioridades: _product backlog_.

###


### **Sprint**

Planejar as atividades a realizar baseando-se na capacidade do time e nas tarefas a serem realizadas e uma sprint de uma semana.

Após o levantamento de todos os requisitos, dividir o projeto em sprints semanais (dois ou três dias). com encontros diários mesmo que sejam assíncronos via discord.
 Cada membro da equipe, diariamente deverá reportar os seguintes aspectos das atividades :

- O que estava planejado
- O que foi realizado
- Se existem impedimentos

Vamos olhar o Github os resultados

## ## Material de Apoio

![](RackMultipart20220310-4-18yitvt_html_439fccdb968455eb.png)
