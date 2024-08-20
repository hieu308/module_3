create database home_work;
use home_work;
create table Product(
id int primary key auto_increment,
productCode int,
productPrice double,
producAmount int,
productDescription varchar(250),
productStatus varchar(100)
);
insert into Product (productCode,productPrice,producAmount,productDescription,productStatus) values
(2,20,3,'máy giặt','đóng gói'),
(3,40,6,'tủ lạnh','đã giao'),
(4,10,7,'điện thoại','đã giao');

create unique index index_product on Product(productCode);
create  index composite_product on Product(producAmount,productPrice);
explain select * from Product where productCode = 2;
explain select * from Product where producAmount = 3 and productPrice = 20;

create view view_product as 
select  productCode,productPrice,productStatus from Product;
select * from view_product;
update view_product 
set productCode = 5
where productCode = 2;
drop view view_product ;

delimiter //
create procedure getProduct()
begin
select * from Product;
end;
//delimiter ;
call getProduct();
delimiter //
create procedure addProduct(code_p int,
price_p double,
amount_p int,
desc_p varchar(250),
status_p varchar(100))
begin
insert into Product(productCode,productPrice,producAmount,productDescription,productStatus) values
(code_p,price_p,amount_p,desc_p,status_p);
end;
//delimiter ;

call  addProduct(7,20,3,'máy giặt','đóng gói');
select * from Product;

delimiter //
create procedure updateProduct(id_update int,info varchar(250))
begin
update  Product
set productDescription = info
where id = id_update;
end;
//delimiter ;
call updateProduct(2,'máy ủi')
delimiter //
create procedure deleteProduct(id_delete int)
begin
delete from  Product
where id = id_delete;
end;
//delimiter ;
call deleteProduct(1);