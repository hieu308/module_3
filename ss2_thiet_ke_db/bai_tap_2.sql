create database quan_ly_ban_hang;
create table Customer(
cId int primary key,
cAge int
);
create  table oDer(
oId int primary key,
cId int,
foreign key(cId) references Customer(cId),
oDate datetime,
oTotalPrice int
);
create table Product(
pId int primary key,
pName varchar(20),
pPrice int
);
create table oDer_detail(
pId int,
oId int,
primary key(pId,oId),
foreign key(pId) references Product(pId),
foreign key(oId) references oDer(oId)
)