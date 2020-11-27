
/* misschien nogal redundant */
drop schema if exists wonderbrokken;
create schema wonderbrokken;
use wonderbrokken;

drop table if exists Clients;
drop table if exists Articles;
drop table if exists Orders;
drop table if exists OrderLines;

create table Clients (
    idClients int not null auto_increment,
    email varchar(100) not null,
    pass varchar(100) not null,
    firstname varchar(50) null,
    surname varchar(50),
    primary key(idClients)
);

create table Articles(
    idArticles int not null auto_increment,
    title varchar(30) not null,
    prize float not null,
    primary key(idArticles)
);

create table Orders(
    idOrders int not null auto_increment,
    order_idClient int not null,
    oderDate date default now(),
    primary key (idOrders),
    foreign key (order_idClient) references Clients(idClients) on delete cascade
);

create table OrderLines(
    idOrderLines int not null auto_increment,
    amount int default 0,
    article_IdArticle integer not null,
    orders_IdOrders integer not null,
    primary key(idOrderLines),
    foreign key(article_IdArticle) references Articles(idArticles) on delete cascade,
    foreign key (orders_IdOrders) references Orders(idOrders) on delete cascade
);
