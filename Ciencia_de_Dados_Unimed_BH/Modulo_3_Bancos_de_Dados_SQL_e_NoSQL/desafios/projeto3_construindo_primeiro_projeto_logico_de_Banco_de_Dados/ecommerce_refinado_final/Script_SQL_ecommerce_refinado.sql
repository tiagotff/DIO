-- Criação do Banco de Dados para o cenário de E-commerce Refinado
-- DROP DATABASE ecommerce_refinado;

CREATE DATABASE ecommerce_refinado;

USE ecommerce_refinado;

-- criar tabela fornecedor
CREATE TABLE fornecedor(
	idFornecedor int auto_increment primary key,
    razaoSocial varchar(100),
    cnpj char(14) not null,
    nomeFantasia varchar(100)
);
ALTER TABLE fornecedor auto_increment=1;
/*
DROP TABLE fornecedor;
DESC fornecedor;
SELECT * FROM fornecedor;
*/

-- criar tabela produto
CREATE TABLE produto(
	idProduto int auto_increment primary key,
    categoria enum('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') not null,
    descricao varchar(100) not null,
    valor float (10) not null
);
ALTER TABLE produto auto_increment=1;
/*
DROP TABLE produto;
DESC produto;
SELECT * FROM produto;
*/

-- criar tabela estoque
CREATE TABLE estoque(
	idEstoque int auto_increment primary key,
    local varchar(45) not null,
    quantidade int not null
);
ALTER TABLE estoque auto_increment=1;
/*
DROP TABLE estoque;
DESC estoque;
SELECT * FROM estoque;
*/

-- criar tabela terceiroVendedor
CREATE TABLE terceiroVendedor(
	idTerceiroVendedor int auto_increment primary key,
    razaoSocial varchar(100),
    local varchar(45) not null,
    nomeFantasia varchar(100),
    cnpj char(14),
    cpf char(11)
);
ALTER TABLE terceiroVendedor auto_increment=1;
/*
DROP TABLE terceiroVendedor;
DESC terceiroVendedor;
SELECT * FROM terceiroVendedor;
*/

-- criar tabela endereco
CREATE TABLE endereco(
	idEndereco int auto_increment primary key,
    enderecoComercial varchar(100),
    enderecoResidencial varchar(100),
    enderecoEntrega varchar(100) not null
);
ALTER TABLE endereco auto_increment=1;
/*
DROP TABLE endereco;
DESC endereco;
SELECT * FROM endereco;
*/

-- criar tabela cliente
CREATE TABLE cliente(
	idCliente int auto_increment primary key,
    tipo enum('PF','PJ') default 'PJ'
);
ALTER TABLE cliente auto_increment=1;
/*
DROP TABLE cliente;
DESC cliente;
SELECT * FROM cliente;
*/

-- criar tabela pagamento
CREATE TABLE pagamento(
	idPagamento int auto_increment primary key,
    tipoPagamento enum('Boleto','Cartão','Dois cartões') not null,
    statusPagamento enum('Cancelado','Confirmado','Em processamento') not null,
    codigoRastreio varchar(45),
    idPCliente int,
	constraint fk_pagamento_1 foreign key (idPCliente) references cliente(idCliente)
																on update cascade
);
ALTER TABLE pagamento auto_increment=1;
/*
DROP TABLE pagamento;
DESC pagamento;
SELECT * FROM pagamento;
*/

-- criar tabela pj
CREATE TABLE pj(
	idPJ int auto_increment primary key,
    razaoSocial varchar(100) not null,
    nomeFantasia varchar(100) not null,
    cnpj char(14) not null,
    idPJEndereco int,
    idCliente int,
	constraint fk_pj_1 foreign key (idPJEndereco) references endereco(idEndereco)
																on update cascade,
    constraint fk_pj_2 foreign key (idCliente) references cliente(idCliente)
																on update cascade
);
ALTER TABLE pj auto_increment=1;
/*
DROP TABLE pj;
DESC pj;
SELECT * FROM pj;
*/

-- criar tabela pf
CREATE TABLE pf(
	idPF int auto_increment primary key,
    nome varchar(100) not null,
    cpf char(11) not null,
	idPFEndereco int,
    idCliente int,
	constraint fk_pf_1 foreign key (idPFEndereco) references endereco(idEndereco)
															on update cascade,
    constraint fk_pf_2 foreign key (idCliente) references cliente(idCliente)
															on update cascade
);
ALTER TABLE pf auto_increment=1;
/*
DROP TABLE pf;
DESC pf;
SELECT * FROM pf;
*/

-- criar tabela entrega
CREATE TABLE entrega(
	idEntrega int auto_increment primary key,
    statusEntrega enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
	codigoRastreio varchar(45) not null,
    idEnderecoEntrega int not null,
    constraint fk_entrega foreign key (idEnderecoEntrega) references endereco(idEndereco)
																		on update cascade
);
ALTER TABLE entrega auto_increment=1;
/*
DROP TABLE entrega;
DESC entrega;
SELECT * FROM entrega;
*/

-- criar tabela pedido
CREATE TABLE pedido(
	idPedido int auto_increment primary key,
    statusPedido enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
    frete float(10) default 25.00,
    idPCliente int,
    idPEntrega int,
	constraint fk_pedido_1 foreign key (idPCliente) references cliente(idCliente)
																on update cascade,
    constraint fk_pedido_2 foreign key (idPEntrega) references entrega(idEntrega)
																on update cascade
);
ALTER TABLE pedido auto_increment=1;
/*
DROP TABLE pedido;
DESC pedido;
SELECT * FROM pedido;
*/

-- criar tabela produtoFornecedor
CREATE TABLE produtoFornecedor(
	idPFornecedor int,
    idPProduto int,
    primary key (idPFornecedor, idPProduto),
    constraint fk_produtoFornecedor_1 foreign key (idPFornecedor) references fornecedor(idFornecedor)
																					on update cascade,
    constraint fk_produtoFornecedor_2 foreign key (idPProduto) references produto(idProduto)
																					on update cascade
);
/*
DROP TABLE produtoFornecedor;
DESC produtoFornecedor;
SELECT * FROM produtoFornecedor;
*/

-- criar tabela produtoEstoque
CREATE TABLE produtoEstoque(
	idPEstoque int,
    idPProduto int,
    quantidade int,
    primary key (idPEstoque, idPProduto),
    constraint fk_produtoEstoque_1 foreign key (idPEstoque) references estoque(idEstoque)
																		on update cascade,
    constraint fk_produtoEstoque_2 foreign key (idPProduto) references produto(idProduto)
																		on update cascade
);
/*
DROP TABLE produtoEstoque;
DESC produtoEstoque;
SELECT * FROM produtoEstoque;
*/

-- criar tabela produtoVendedor
CREATE TABLE produtoVendedor(
	idPTerceiroVendedor int,
    idPProduto int,
    quantidade int,
    primary key (idPTerceiroVendedor, idPProduto),
    constraint fk_produtoVendedor_1 foreign key (idPTerceiroVendedor) references terceiroVendedor(idTerceiroVendedor)
																									on update cascade,
    constraint fk_produtoVendedor_2 foreign key (idPProduto) references produto(idProduto)
																		on update cascade
);
/*
DROP TABLE produtoVendedor;
DESC produtoVendedor;
SELECT * FROM produtoVendedor;
*/

-- criar tabela produtoPedido
CREATE TABLE produtoPedido(
	idPPedido int,
    idPProduto int,
    quantidade int,
    primary key (idPPedido, idPProduto),
    constraint fk_produtoPedido_1 foreign key (idPPedido) references pedido(idPedido)
																on update cascade,
    constraint fk_produtoPedido_2 foreign key (idPProduto) references produto(idProduto)
																on update cascade
);
/*
DROP TABLE produtoPedido;
DESC produtoPedido;
SELECT * FROM produtoPedido;
*/



