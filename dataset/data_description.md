# Health Insurance Cross Sell Prediction

## Predict Health Insurance Owners' who will be interested in Vehicle Insurance

### Contexto

Nosso cliente é uma Seguradora que forneceu Seguro Saúde para seus clientes agora eles precisam de sua ajuda na construção de um modelo para prever se os segurados (clientes) do ano passado também terão interesse no Seguro de Veículos fornecido pela empresa.

Uma apólice de seguro é um acordo pelo qual uma empresa se compromete a fornecer uma garantia de compensação por perda, dano, doença ou morte especificados em troca do pagamento de um prêmio especificado. Um prêmio é uma quantia em dinheiro que o cliente precisa pagar regularmente a uma companhia de seguros por essa garantia.

Por exemplo, você pode pagar um prêmio de Rs. 5000 por ano para uma cobertura de seguro de saúde de Rs. 200.000/- de modo que se, Deus me livre, você adoecer e precisar ser hospitalizado naquele ano, a seguradora arcará com o custo da hospitalização etc. por até Rs. 200.000. Agora, se você está se perguntando como a empresa pode arcar com um custo de hospitalização tão alto quando cobra um prêmio de apenas Rs. 5000/-, é aí que entra o conceito de probabilidades. Por exemplo, como você, pode haver 100 clientes que pagariam um prêmio de Rs. 5.000 por ano, mas apenas alguns deles (digamos 2-3) seriam hospitalizados naquele ano e nem todos. Desta forma, todos compartilham o risco de todos os outros.

Assim como o seguro médico, existe o seguro de veículo onde todos os anos o cliente precisa pagar um prêmio de certo valor à seguradora para que, em caso de acidente infeliz com o veículo, a seguradora forneça uma indenização (chamada de 'soma assegurado' ) Para o consumidor.

Construir um modelo para prever se um cliente estaria interessado em Seguro de Veículo é extremamente útil para a empresa, pois ela pode planejar adequadamente sua estratégia de comunicação para alcançar esses clientes e otimizar seu modelo de negócios e receita.

Agora, para prever se o cliente estaria interessado em seguro de veículo, você tem informações sobre dados demográficos (gênero, idade, tipo de código de região), veículos (idade do veículo, danos), política (premium, canal de fornecimento) etc.

### Data Description

- Train data

Variable            |	Definition
--------------------|--------------
id                  | 	Unique ID for the customer
Gender 	            | Gender of the customer
Age 	            | Age of the customer
Driving_License     |0 : Customer does not have DL, 1 : Customer already has DL
Region_Code 	    |Unique code for the region of the customer
Previously_Insured 	|1 : Customer already has Vehicle Insurance, 0 : Customer doesn't have Vehicle Insurance
Vehicle_Age 	    |Age of the Vehicle
Vehicle_Damage 	    |1 : Customer got his/her vehicle damaged in the past. 0 : Customer didn't get his/her vehicle damaged in the past.
Annual_Premium 	    |The amount customer needs to pay as premium in the year
PolicySalesChannel 	|Anonymized Code for the channel of outreaching to the customer ie. Different Agents, Over Mail, Over Phone, In Person, etc.
Vintage 	        |Number of Days, Customer has been associated with the company
Response 	        |1 : Customer is interested, 0 : Customer is not interested

- Test data

Variable            |	Definition
--------------------|--------------
id                  | 	Unique ID for the customer
Gender 	            | Gender of the customer
Age 	            | Age of the customer
Driving_License     |0 : Customer does not have DL, 1 : Customer already has DL
Region_Code 	    |Unique code for the region of the customer
Previously_Insured 	|1 : Customer already has Vehicle Insurance, 0 : Customer doesn't have Vehicle Insurance
Vehicle_Age 	    |Age of the Vehicle
Vehicle_Damage 	    |1 : Customer got his/her vehicle damaged in the past. 0 : Customer didn't get his/her vehicle damaged in the past.
Annual_Premium 	    |The amount customer needs to pay as premium in the year
PolicySalesChannel 	|Anonymized Code for the channel of outreaching to the customer ie. Different Agents, Over Mail, Over Phone, In Person, etc.
Vintage 	        |Number of Days, Customer has been associated with the company

- Submission

Variable            | Definition
--------------------|--------------
id                  | Unique ID for the customer
Response            | 1 : Customer is interested, 0 : Customer is not interested
