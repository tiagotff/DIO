-- Criação do Banco de Dados para o cenário de E-commerce
-- DROP DATABASE ecommerce;

CREATE DATABASE ecommerce;

USE ecommerce;

-- Criar tabela cliente
CREATE TABLE clients(
	idClient int auto_increment primary key,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    Address varchar(300),
    constraint unique_cpf_client unique(CPF)
);
alter table clients auto_increment=1;
Desc clients;

-- Criar tabela produto
-- Size: é a dimensão do produto
CREATE TABLE product(
	idProduct int auto_increment primary key,
    Pname varchar(100) not null,
    Classification_kids bool default false,
    Category enum('Eletrônico','Vestimenta', 'Brinquedos', 'Alimentos', 'Moveis') not null,
    Avaliacao float default 0,
    Size varchar(10)
);

-- Criar tabela Pagamentos
CREATE TABLE payments(
	idclient int,
    idPayment int,
    typePayment enum('Boleto', 'Cartão', 'Dois cartões'),
    limitAvailable float,
    primary key (idClient, idPayment)
);

-- Criar tabela pedido
-- DROP TABLE orders;
CREATE TABLE orders(
	idOrder int auto_increment primary key,
    idOrderClient int,
    orderStatus enum('Cancelado', 'Confirmado', 'Em processamento') default 'Em processamento',
    orderDescription varchar(255),
    sendValue float default 10,
    paymentCash boolean default false,
    constraint fk_orders_client foreign key (idOrderClient) references clients (idClient)
			on update cascade
            on delete set null
);
desc orders;

-- Criar tabela estoque
CREATE TABLE productStorage(
	idProdStorage int auto_increment primary key,
    SocialName varchar(255),
    CNPJ char(15),
    Contact varchar(11),
    storageLocation VARCHAR (255),
    quantity int,
    constraint unique_supplier unique (CNPJ)
);

-- Criar tabela fornecedor
CREATE TABLE supplier(
	idSupplier int auto_increment primary key,
    SocialName varchar(255),
    CNPJ char(15),
    Contact varchar(11),
    quantity int default 0
);

-- criar tabela vendedor
CREATE TABLE seller(
	idSeller int auto_increment primary key,
    SocialName varchar(255) not null,
    AbstractName varchar (255),
    CNPJ char(15),
    CPF char(9),
    Location varchar(255),
    Contact varchar(11) not null,
    constraint unique_cnpj_supplier unique (CNPJ),
    constraint unique_cpf_supplier unique (CPF)
);

-- criar tabela produto_vendedor
CREATE TABLE productSeller(
	idPseller int,
    idPproduct int,
    prodQuantity int default 1,
    primary key (idPseller, idPproduct),
    constraint fk_product_seller foreign key (idPseller) references seller(idSeller),
    constraint fk_product_product foreign key (idPproduct) references product(idProduct)
);

-- criar tabela produto_pedido
CREATE TABLE productOrder(
	idPOproduct int,
    idPOorder int,
    poQuantity int default 1,
    poStatus enum('Disponivel','Sem estoque') default 'Disponivel',
    primary key (idPOproduct, idPOorder),
    constraint fk_productorder_seller foreign key (idPOproduct) references product(idProduct),
    constraint fk_productorder_product foreign key (idPOorder) references orders(idOrder)
);

-- criar tabela 'Storage_location'
CREATE TABLE storageLocation(
	idLproduct int,
    idLstorage int,
    location varchar(255) not null,
    primary key (idLproduct, idLstorage),
    constraint fk_storage_location_product foreign key (idLproduct) references product(idProduct),
    constraint fk_storage_location_storage foreign key (idLstorage) references productStorage(idProdStorage)
);

-- criar tabela 'Produto_Fornecedor'
CREATE TABLE productSupplier(
	idPsSupplier int,
    idPsProduct int,
    quantity int not null,
    primary key (idPsSupplier, idPsProduct),
    constraint fk_product_supplier_supplier foreign key (idPsSupplier) references supplier(idSupplier),
    constraint fk_product_supplier_product foreign key (idPsProduct) references product(idProduct)
);
SHOW TABLES;

SHOW DATABASES;

USE information_schema;

SHOW TABLES;

desc table_constraints;

desc referential_constraints;

SELECT * FROM referential_constraints where constraint_schema = 'ecommerce';