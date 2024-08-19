create database quan_ly_ban_hang;
create table Customer(
cId int primary key,
cName varchar(20),
cAge tinyint
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
pName varchar(25),
pPrice int
);
create table oDer_detail(
oId int,
pId int,
odQTY int,
primary key(pId,oId),
foreign key(pId) references Product(pId),
foreign key(oId) references oDer(oId)
);

insert into Customer(cID,cName,cAge) values
(1,'Minh Quan',10),
(2,'Ngoc Oanh',20),
(3,'Hong Ha',50);

insert into oDer(oID,cID,oDate) values
(1,1,'2006-03-21'),
(2,2,'2006-03-23'),
(3,1,'2006-03-16');

insert into Product(pId,pName,pPrice) values
(1,'May Giat',3),
(2,'Tu Lanh',5),
(3,'Dieu Hoa',7),
(4,'Quat',1),
(5,'Bep Dien',2);

insert into oDer_detail(oId,pId,odQTY) values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

select * from oDer;
-- hiển thị danh sách khách hàng mua sản phẩm
select 
customer.cId,
Customer.cName,
Product.pName
From customer
inner JOIN 
oDer on Customer.cID = oDer.cID
INNER JOIN 
oDer_detail on oDer.oID = oDer_detail.oID
INNER JOIN 
Product on oDer_detail.pID = Product.pID
ORDER BY 
    Customer.cId;
    -- hiển thị danh sách khách hàng không mua sản phẩm nào
    
select 
Customer.cName
From customer
LEFT JOIN 
oDer on Customer.cID = oDer.cID
LEFT JOIN 
oDer_detail on oDer.oID = oDer_detail.oID
LEFT JOIN 
Product on oDer_detail.pID = Product.pID
WHERE oDer.oId IS NULL;

select 
oDer.oID,
oDer.oDate,
SUM(odQTY*pPrice) as totalPrice
from oDer
INNER JOIN 
oder_detail ON oDer.oID = oder_detail.oId
INNER JOIN 
Product on oder_detail.pId = product.pID
GROUP BY 
oDer.oID,oDer.oDate;

