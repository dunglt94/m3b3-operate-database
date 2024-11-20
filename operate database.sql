use quanlybanhang;

insert into customer (cname, cage)
values ('Minh Quan', 10),
('Ngoc Oanh', 20),
('Hong Ha', 50);

select * from customer;

insert into orders (cID, oDate)
values (1, '2006-3-21'),
(2, '2006-3-23'),
(1, '2006-3-16');

select * from orders;

insert into product (pName, pPrice)
values  ('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);

select * from product;

insert into orderdetail
values (1, 1, 3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);

select * from orderdetail;

select oID, oDate, oTotalPrice from orders;

select c.cName, o.oID, o.oDate 
from customer c
inner join orders o on o.cID = c.cID
order by o.oID;

select distinct p.pID, p.pName, SUM(od.odQTY) quantity
from product p
inner join orderdetail od on od.pID = p.pID
group by p.pID, p.pName;

select c.cName
from customer c
left join orders o on o.cID = c.cID
where o.oID is null;

select o.oID, o.oDate, SUM(p.pPrice * od.odQTY) oPrice
from orders o
join orderdetail od on od.oID = o.oID
join product p on p.pID = od.pID
GROUP BY o.oID;

