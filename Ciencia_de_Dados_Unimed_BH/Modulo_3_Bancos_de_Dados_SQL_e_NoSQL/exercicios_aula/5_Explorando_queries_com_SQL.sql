-- Explorando comandos DDL

SELECT now() as TIMESTAMP;

CREATE DATABASE IF NOT EXISTS manipulation;

# Remove o BD manipulation
DROP DATABASE manipulation;

USE manipulation;

# Remove a tabela indicada
DROP TABLE bankAccounts;

CREATE TABLE IF NOT EXISTS bankAccounts (
	Id_account INT auto_increment PRIMARY KEY,
    Ag_num INT NOT NULL,
    Ac_num INT NOT NULL,
    Saldo FLOAT,
    CONSTRAINT identification_account_constraint UNIQUE (Ag_num, Ac_num)    
);
DESC bankAccounts;

#
INSERT INTO bankAccounts(Ag_num, Ac_num, Saldo) VALUES(156, 264358, 0);

SELECT * FROM bankAccounts;

#Adicionando atributo na tabela indicada
ALTER TABLE bankAccounts
	ADD LimiteCredito FLOAT NOT NULL DEFAULT 500.00;
    
#Adicionando atributo na tabela indicada
ALTER TABLE bankAccounts
	ADD email VARCHAR(60);
    
#Removendo apenas o atributo desejado na tabela indicada    
ALTER TABLE bankAccounts DROP email;

-- ALTER TABLE nome_tabela modify column nome_atributo tipo_dados condição
-- ALTER TABLE nome_tabela add constraint nome_constraint condições


#Remove a tabela indicada
DROP TABLE bankClient;

CREATE TABLE IF NOT EXISTS bankClient (
	Id_client INT auto_increment,
    ClientAccount INT,
    CPF CHAR(11) NOT NULL,
    RG CHAR(9) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    Renda_mensal FLOAT,
    PRIMARY KEY (Id_Client, ClientAccount),
    CONSTRAINT fk_account_client FOREIGN KEY (ClientAccount) REFERENCES bankAccounts (Id_account)
    ON UPDATE CASCADE    
);
DESC bankClient;

INSERT INTO bankClient (ClientAccount, CPF, RG, Nome, Endereco, Renda_mensal) VALUES (1,12345678913,123456789,'Fulano','Rua de lá',6550.6);

SELECT * FROM bankClient;

#Definindo padrão para atributo
ALTER TABLE bankClient 
	ADD UF CHAR(2) NOT NULL DEFAULT 'RJ';

#Atualizando o valor de detrminado atributo
UPDATE bankClient 
	SET UF='MG'
		WHERE Nome='Fulano';

# Remove a tabela indicada
DROP TABLE bankTransactions;

CREATE TABLE IF NOT EXISTS bankTransactions (
	Id_transaction INT auto_increment PRIMARY KEY,
    Ocorrencia DATETIME,
    Status_transaction VARCHAR(20),
    Valor_transferido FLOAT,
    Source_account INT,
    Destination_account INT,
    CONSTRAINT fk_source_transaction FOREIGN KEY (Source_account) REFERENCES bankAccounts(id_Account),
    CONSTRAINT fk_destination_transaction FOREIGN KEY (destination_account) REFERENCES bankAccounts(id_Account)	
);
DESC bankTransactios;

